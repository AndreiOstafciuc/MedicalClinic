// ***********************************************************************
// Author : Cosmanescu Roxana, Ostafciuc Andrei
// Description : This page contains three sections: a section where all the departments and info about them are displayed, //               a section where all doctors and info about them are displayed, //               a section where generalInfo about the clinic is displayed
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************


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
        /// <summary>
        /// gets all departments using DepartmentService
        /// and buid a Expander control with header= department name and content= department description
        /// for each expander create a new row in  gridDepartaments
        /// </summary>
        private void PopulateDepartmentGrid()
        {
            _deptService = new DepartmentService();
            List<Department> depts = _deptService.FindAll();
            int i = 0;
            if (depts != null)
            {
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
        }

        /// <summary>
        /// gets department name from a list by id
        /// </summary>
        /// <param name="id">id is department id</param>
        /// <param name="departments">departments is a List<Department></param>
        /// <returns></returns>
        private string GetDepartmentName(int id, List<Department> departments)
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

        /// <summary>
        /// gets all doctors using DoctorService
        /// and buid a Expander control with header= doctor name and content= department
        /// for each expander create a new row in  gridDoctors
        /// </summary>
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
                    txt.Text = GetDepartmentName(doctor.IdDept, departments);//doctorDept.Name + ", " + doctorDept.Floor;
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