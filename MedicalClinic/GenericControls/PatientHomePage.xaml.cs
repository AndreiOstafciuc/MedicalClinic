/*
* Author : 
* Decription : 
*/

using DAO;
using Entity;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

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

        private string getDeptName(int id, List<Department> departments)
        {
            foreach (Department d in departments)
            {
                if (d.Id == id)
                {
                    return d.Name;
                }
            }
            return "";
        }

        private void PopulateDoctorGrid()
        {
            _doctorService = new DoctorService();
            List<Doctor> doctors = _doctorService.FindAll();
            List<Department> departments = _deptService.FindAll();
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
                    txt.Text = getDeptName(doctor.IdDept, departments);//doctorDept.Name + ", " + doctorDept.Floor;
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
