using DAO;
using Entity;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for PatientHomePage.xaml
    /// </summary>
    public partial class PatientHomePage : UserControl
    {
        private DepartmentService _deptService;
        private DoctorService _doctorService;
        public PatientHomePage()
        {
            InitializeComponent();
            PopulateDepartmentGrid();
            PopulateDoctorGrid();
        }
        private void PopulateDepartmentGrid()
        {
            _deptService = new DepartmentService();
            List<Department> depts = _deptService.FindAll();
            int i = 0;

            foreach (var dept in depts)
            {
                Expander expander = new Expander();
                expander.HorizontalAlignment = HorizontalAlignment.Stretch;
                expander.Header = dept.Name;
                StackPanel stackPanel = new StackPanel();
                TextBlock txt = new TextBlock();
                txt.Text = dept.Description + ", " + dept.Floor;
                stackPanel.Children.Add(txt);
                expander.Content = stackPanel;
                gridDepartaments.RowDefinitions.Add(new RowDefinition());
                gridDepartaments.RowDefinitions[i].Height = new GridLength(50);
                Grid.SetRow(expander, i);
                i++;
                gridDepartaments.Children.Add(expander);
            }
        }
        private void PopulateDoctorGrid()
        {
            _doctorService = new DoctorService();
            List<Doctor> doctors = _doctorService.FindAll();
            int i = 0;

            foreach (Doctor doctor in doctors)
            {
                //select only doctors that are active
                //a doctor with status 0 means that he does not work at this clinic anymore
                if (doctor.Status == 1)
                {
                    Expander expander = new Expander();
                    expander.Header = doctor.FirstName + " " + doctor.LastName;
                    StackPanel stackPanel = new StackPanel();
                    TextBlock txt = new TextBlock();
                    Department doctorDept = _deptService.FindById(doctor.IdDept);
                    txt.Text = doctorDept.Name + ", " + doctorDept.Floor;
                    stackPanel.Children.Add(txt);
                    expander.Content = stackPanel;
                    gridDoctors.RowDefinitions.Add(new RowDefinition());
                    gridDoctors.RowDefinitions[i].Height = new GridLength(50);
                    Grid.SetRow(expander, i);
                    i++;
                    gridDoctors.Children.Add(expander);
                }
            }


        }
    }
}
