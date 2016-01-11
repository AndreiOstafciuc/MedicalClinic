using DAO;
using Entity;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for DoctorAppointmentsPage.xaml
    /// </summary>
    public partial class DoctorAppointmentsPage : CustomUserControl
    {
        private readonly PagingCollectionView _cview;
        PatientService patientService;
        AppointmentService appoitmentService;

        public DoctorAppointmentsPage()
        {
            InitializeComponent();
            patientService = new PatientService();
            appoitmentService = new AppointmentService();
            List<Appointment> list = appoitmentService.GetNextAppointmentsByDoctorId(SessionData.UserSessionData.CurrentUserId);

            Dictionary<int, Patient> patientList = getDictionary(patientService.FindAll());
            List<object> dataSet=null;
            if (list != null)
            {
                dataSet = new List<object>();
                foreach (Appointment app in list)
                {
                    Patient p = patientList[app.IdPacient];
                    dataSet.Add(new { AppointmentId = app.Id, Patient = p.FirstName + " " + p.LastName, Date = app.AppointmentDate.ToString(), Time = app.Time.ToString(), Symtoms = app.Symptoms.ToString() });
                }
            

            this._cview = new PagingCollectionView(dataSet, 20);
            this.DataContext = this._cview;
            }
            else
            {
                previousBtn.IsEnabled = false;
                nextBtn.IsEnabled = false;
            }
        }

        private void OnNextClicked(object sender, RoutedEventArgs e)
        {
            this._cview.MoveToNextPage();
        }

        private void AssignResults(object sender, RoutedEventArgs e)
        {
            int appointmentId = (int)((Button)sender).Tag;
            RaiseChangePageContentEvent(new DoctorAppointmentAssignResult(appointmentId));
        }

        private void OnPreviousClicked(object sender, RoutedEventArgs e)
        {
            this._cview.MoveToPreviousPage();
        }
        
        public Dictionary<int, Patient> getDictionary(List<Patient> list)
        {
            Dictionary<int, Patient> dictionary = new Dictionary<int, Patient>();
            foreach (Patient p in list)
            {
                dictionary.Add(p.Id, p);
            }
            return dictionary;
        }
    }



    public class PagingCollectionView : CollectionView
    {
        private readonly IList _innerList;
        private readonly int _itemsPerPage;

        private int _currentPage = 1;

        public PagingCollectionView(IList innerList, int itemsPerPage)
            : base(innerList)
        {
            this._innerList = innerList;
            this._itemsPerPage = itemsPerPage;
        }

        public override int Count
        {
            get
            {
                if (this._currentPage < this.PageCount)
                {
                    return this._itemsPerPage;
                }
                else
                {
                    var itemsLeft = this._innerList.Count % this._itemsPerPage;
                    if (0 == itemsLeft)
                    {
                        return this._itemsPerPage;
                    }
                    else
                    {
                        return itemsLeft;
                    }
                }
            }
        }

        public int CurrentPage
        {
            get { return this._currentPage; }
            set
            {
                this._currentPage = value;
                this.OnPropertyChanged(new PropertyChangedEventArgs("CurrentPage"));
            }
        }

        public int ItemsPerPage { get { return this._itemsPerPage; } }

        public int PageCount
        {
            get
            {
                return (this._innerList.Count + this._itemsPerPage - 1)
                    / this._itemsPerPage;
            }
        }

        private int EndIndex
        {
            get
            {
                var end = this._currentPage * this._itemsPerPage - 1;
                return (end > this._innerList.Count) ? this._innerList.Count : end;
            }
        }

        private int StartIndex
        {
            get { return (this._currentPage - 1) * this._itemsPerPage; }
        }

        public override object GetItemAt(int index)
        {
            var offset = index % (this._itemsPerPage);
            return this._innerList[this.StartIndex + offset];
        }

        public void MoveToNextPage()
        {
            if (this._currentPage < this.PageCount)
            {
                this.CurrentPage += 1;
            }
            this.Refresh();
        }

        public void MoveToPreviousPage()
        {
            if (this._currentPage > 1)
            {
                this.CurrentPage -= 1;
            }
            this.Refresh();
        }
    }
}
