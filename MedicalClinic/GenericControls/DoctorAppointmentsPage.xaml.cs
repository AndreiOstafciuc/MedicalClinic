// ***********************************************************************
// Assembly         : GenericControls
// Author           : Andrei Ostafciuc
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DAO;
using Entity;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for DoctorAppointmentsPage.xaml
    /// </summary>
    public partial class DoctorAppointmentsPage : CustomUserControl
    {
        private readonly PagingCollectionView _cview;
        private PatientService _patientService;
        private AppointmentService _appoitmentService;

        public DoctorAppointmentsPage()
        {
            InitializeComponent();
            _patientService = new PatientService();
            _appoitmentService = new AppointmentService();
            List<Appointment> list = _appoitmentService.GetNextAppointmentsByDoctorId(SessionData.UserSessionData.CurrentUserId);

            Dictionary<int, Patient> patientList = GetDictionary(_patientService.FindAll());
            List<object> dataSet = null;
            if (list != null)
            {
                dataSet = new List<object>();
                foreach (Appointment app in list)
                {
                    Patient p = patientList[app.IdPacient];
                    dataSet.Add(new { AppointmentId = app.Id, Patient = p.FirstName + " " + p.LastName, Date = app.ScheduledDate.ToString(), Time = app.Time.ToString(), Symtoms = app.Symptoms.ToString() });
                }

                this._cview = new PagingCollectionView(dataSet, 20);
                this.DataContext = this._cview;
            }
            else
            {
                buttonPrevious.IsEnabled = false;
                buttonNext.IsEnabled = false;
            }
        }

        /// <summary>
        /// Get the next page for the dataset
        /// </summary>
        private void OnNextClicked(object sender, RoutedEventArgs e)
        {
            this._cview.MoveToNextPage();
        }

        /// <summary>
        /// Changes the view with the assign result form.
        /// </summary>
        private void AssignResults(object sender, RoutedEventArgs e)
        {
            int appointmentId = (int)((Button)sender).Tag;
            RaiseChangePageContentEvent(new DoctorAppointmentAssignResult(appointmentId));
        }

        /// <summary>
        /// Get the previous page for the dataset
        /// </summary>
        private void OnPreviousClicked(object sender, RoutedEventArgs e)
        {
            this._cview.MoveToPreviousPage();
        }

        /// <summary>
        /// This returns a dictionary from a list for easier access by key.
        /// </summary>
        public Dictionary<int, Patient> GetDictionary(List<Patient> list)
        {
            Dictionary<int, Patient> dictionary = new Dictionary<int, Patient>();
            if (list != null)
            {
                foreach (Patient p in list)
                {
                    dictionary.Add(p.Id, p);
                }
            }
            return dictionary;
        }
    }

    /// <summary>
    /// Interaction logic for dataset paginator.
    /// </summary>
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

        /// <summary>
        /// Returns an item at given index
        /// </summary>
        public override object GetItemAt(int index)
        {
            var offset = index % (this._itemsPerPage);
            return this._innerList[this.StartIndex + offset];
        }

        /// <summary>
        /// Gets the next page for dataset.
        /// </summary>
        public void MoveToNextPage()
        {
            if (this._currentPage < this.PageCount)
            {
                this.CurrentPage += 1;
            }
            this.Refresh();
        }

        /// <summary>
        /// Gets the previous page for dataset.
        /// </summary>
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