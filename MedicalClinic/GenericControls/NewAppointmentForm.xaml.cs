﻿using DAO;
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
    /// Interaction logic for NewAppointmentForm.xaml
    /// </summary>
    public partial class NewAppointmentForm : UserControl
    {
        private DepartmentService _departmentService;
        private DoctorService _doctorService;
        private ScheduleService _scheduleService;
        private AppointmentService _appointmentService;
        private String _errorMessage = "";
        private DateTime _defaultDate;
        public NewAppointmentForm()
        {
            _defaultDate = new DateTime(1, 1, 1);
            InitializeComponent();
            PopulateDepartmentsList();
        }

        private void PopulateDepartmentsList()
        {
            _departmentService = new DepartmentService();
            List<Department> allDepartments = _departmentService.FindAll();
            ComboBoxItem cbm;
            if (allDepartments != null)
            {
                foreach (Department d in allDepartments)
                {
                    cbm = new ComboBoxItem();
                    cbm.Content = d.Name;
                    cbm.Tag = d.Id;
                    comboBoxDepartments.Items.Add(cbm);
                }
                
            }
        }
        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Visible;
        }

        private void datePickerAppointmentDate_GotFocus(object sender, RoutedEventArgs e)
        {
            labelError.Visibility = Visibility.Visible; 
        }

        private void comboBoxDepartments_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (comboBoxDepartments.SelectedItem != null)
            {
                int selectedDeptId = Convert.ToInt32(((ComboBoxItem)comboBoxDepartments.SelectedItem).Tag.ToString());
                PopulateDoctorsList(selectedDeptId);
            }
        }
        private void PopulateDoctorsList(int departmentId)
        {
            _doctorService = new DoctorService();
            List<Doctor> doctors = _doctorService.FindAllByProperty("id_dept", departmentId.ToString());
            ComboBoxItem cmb;
            if(doctors!=null)
            {
                foreach (Doctor d in doctors)
                {
                    cmb = new ComboBoxItem();
                    cmb.Content = d.FirstName+" "+d.LastName;
                    cmb.Tag = d.Id;
                    comboBoxDoctors.Items.Add(cmb);
                }
                comboBoxDoctors.IsEnabled = true;
            }
        }
        private bool ValidateUserInput(int idDept, int idDoctor, DateTime date, String time, String symptoms)
        {
            if(idDept==0 || idDoctor==0)
            {
                _errorMessage = "You have to select a department and a doctor";
                return false;
            }
            if(date==_defaultDate)
            {
                _errorMessage = "Please select a valid date";
                return false;
            }
            if(time=="")
            {
                _errorMessage = "Please select a valid time";
                return false;
            }
            if(date<DateTime.Now)
            {
                _errorMessage = "Please select a valid date. You cannot choose a date in the past";
                return false;
            }
            int day = (int)date.DayOfWeek;
            if(_doctorService.checkDoctorAvailability(idDoctor,day,Convert.ToInt32(time), date)== false)
            {
                _errorMessage = "Doctor is not available, please select another date or time";
                return false;
            }
            return true;

        }

        private void buttonSave_Click(object sender, RoutedEventArgs e)
        {
            int deptId = 0;
            int doctorId = 0;
            if (comboBoxDepartments.SelectedItem!=null)
            {
                deptId = Convert.ToInt32(((ComboBoxItem)comboBoxDepartments.SelectedItem).Tag.ToString());
            }
            if(comboBoxDoctors.SelectedItem!= null)
            {
                doctorId = Convert.ToInt32(((ComboBoxItem)comboBoxDoctors.SelectedItem).Tag.ToString());
            }
            DateTime scheduledDate = _defaultDate;
            if(datePickerAppointmentDate.SelectedDate!=null)
            {
                scheduledDate = datePickerAppointmentDate.SelectedDate.Value;
            }
            String time = textBoxTime.Text;
            String symptoms = textBoxSymptoms.Text;
            if(ValidateUserInput(deptId, doctorId, scheduledDate, time, symptoms)== true)
            {
                //create new appointment
                _appointmentService = new AppointmentService();
                try
                {
                    _appointmentService.Save(new Appointment(SessionData.UserSessionData.CurrentUserId, doctorId, Convert.ToInt32(time), scheduledDate, symptoms));
                    MessageBox.Show("Appointment created");
                }
                catch(Exception ex)
                {
                    MessageBox.Show("Something went wrong\n" + ex.Data.ToString());
                }
            }
            else
            {
                labelError.Content = _errorMessage;
                labelError.Visibility = Visibility.Visible;
            }
        }
    }
}