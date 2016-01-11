// ***********************************************************************
* Author : Cosmanescu Roxana, Bordeian Marius, Ostafciuc Andrei
* Description : Contains the new appointment form, get input , validate input, 
*              if input is valid and the selected doctor is avalable a new appointment is inserted in the database using AppointmentService,
               otherwise corresponding error message are displayed
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************


using DAO;
using Entity;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for NewAppointmentForm.xaml
    /// </summary>
    public partial class NewAppointmentForm : UserControl
    {
        private DepartmentService _departmentService;
        private ScheduleService _scheduleService;
        private DoctorService _doctorService;
        private AppointmentService _appointmentService;
        private String _errorMessage = "";
        private DateTime _defaultDate;

        public NewAppointmentForm()
        {
            _defaultDate = new DateTime(1, 1, 1);
            InitializeComponent();
            scheduleTitle.Visibility = Visibility.Hidden;
            scheduleContent.Visibility = Visibility.Hidden;
            PopulateDepartmentsList();
        }

        private void PopulateDepartmentsList()
        {
            _departmentService = new DepartmentService();
            _scheduleService = new ScheduleService();
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
        /// <summary>
        /// handler for all textBox elements KeyboardFocusChangedEvent,
        /// if user selected a input and begins to write the errorLabel visibility is set hidden
        /// </summary>
        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Visible;
        }

        /// <summary>
        /// handler for DatePicker gotFocus event
        /// errorLabel visibility is set hidden
        /// </summary>
        private void datePickerAppointmentDate_GotFocus(object sender, RoutedEventArgs e)
        {
            labelError.Visibility = Visibility.Visible;
        }

        private void comboBoxDepartments_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            scheduleTitle.Visibility = Visibility.Hidden;
            scheduleContent.Visibility = Visibility.Hidden;
            if (comboBoxDepartments.SelectedItem != null)
            {
                comboBoxDoctors.Items.Clear();
                int selectedDeptId = Convert.ToInt32(((ComboBoxItem)comboBoxDepartments.SelectedItem).Tag.ToString());
                PopulateDoctorsList(selectedDeptId);
            }
        }

        private void PopulateDoctorsList(int departmentId)
        {
            _doctorService = new DoctorService();
            List<Doctor> doctors = _doctorService.FindAllByProperty("id_dept", departmentId.ToString());
            ComboBoxItem cmb;
            if (doctors != null)
            {
                foreach (Doctor d in doctors)
                {
                    cmb = new ComboBoxItem();
                    cmb.Content = d.FirstName + " " + d.LastName;
                    cmb.Tag = d.Id;
                    comboBoxDoctors.Items.Add(cmb);
                }
                comboBoxDoctors.IsEnabled = true;
            }
        }
        /// <summary>
        /// validate user input; returns true if valid, otherwise returns false
        /// <param name="idDept"> idDept is selected by user and cannot be 0 </param>
        /// <param name="idDoctor"> idDoctor is selected by user and cannot be 0 </param>
        /// <param name="date"> date is povided by user and must be a date later than or the same as current date</param>
        /// <param name="time"> time is povided by user and must be between 00 and 24 </param>
        /// </summary>
        private bool ValidateUserInput(int idDept, int idDoctor, DateTime date, String time)
        {
            if (idDept == 0 || idDoctor == 0)
            {
                _errorMessage = "You have to select a department and a doctor";
                return false;
            }
            if (date == _defaultDate)
            {
                _errorMessage = "Please select a valid date";
                return false;
            }
            if (Utils.Validator.ValidateAppointmentHour(time) == false)
            {
                _errorMessage = "Please select a valid time.";
                return false;
            }
            if (Utils.Validator.ValidateAppointmentDate(date) == false)
            {
                _errorMessage = "Please select a valid date. You cannot choose a date in the past";
                return false;
            }
            int day = (int)date.DayOfWeek;
            if (_doctorService.CheckDoctorAvailability(idDoctor, day, Convert.ToInt32(time), date) == false)
            {
                _errorMessage = "Doctor is not available, please select another date or time";
                return false;
            }

            return true;
        }

        /// <summary>
        /// handler for button save click Event, 
        /// gets user input and check if is valid,
        /// if input is valid and selected doctor is available user AppointmentService to create new appointment 
        /// otherwise set the errorLabel content and make it visible
        /// </summary>
        private void buttonSave_Click(object sender, RoutedEventArgs e)
        {
            int deptId = 0;
            int doctorId = 0;
            if (comboBoxDepartments.SelectedItem != null)
            {
                deptId = Convert.ToInt32(((ComboBoxItem)comboBoxDepartments.SelectedItem).Tag.ToString());
            }
            if (comboBoxDoctors.SelectedItem != null)
            {
                doctorId = Convert.ToInt32(((ComboBoxItem)comboBoxDoctors.SelectedItem).Tag.ToString());
            }
            DateTime scheduledDate = _defaultDate;
            if (datePickerAppointmentDate.SelectedDate != null)
            {
                scheduledDate = datePickerAppointmentDate.SelectedDate.Value;
            }
            String time = textBoxTime.Text;
            String symptoms = textBoxSymptoms.Text;
            if (ValidateUserInput(deptId, doctorId, scheduledDate, time) == true)
            {
                //create new appointment
                _appointmentService = new AppointmentService();
                try
                {
                    _appointmentService.Save(new Appointment(SessionData.UserSessionData.CurrentUserId, doctorId, Convert.ToInt32(time), scheduledDate, symptoms));
                    MessageBox.Show("Appointment created");
                }
                catch (Exception ex)
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

        /// <summary>
        /// handler for comboBoxDoctors SelectionChanged Event, 
        /// gets selected Doctor and find his schedule using ScheduleService
        /// build a string with his schedule and show the schedule to the user, in order to select a proper time for his appointment
        /// </summary>
        private void comboBoxDoctors_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (comboBoxDoctors.SelectedItem != null)
            {
                List<Schedule> schedule = _scheduleService.FindAllByProperty(Utils.ScheduleTableProperties.IdDoctor, ((ComboBoxItem)comboBoxDoctors.SelectedItem).Tag.ToString());
                String sch = "";
                foreach (Schedule s in schedule)
                {
                    sch += (DayOfWeek)(s.Day) + "\t" + s.StartHour + "-" + s.EndHour + "\n";
                }
                scheduleTitle.Visibility = Visibility.Visible;
                scheduleContent.Visibility = Visibility.Visible;
                scheduleContent.Content = sch;
            }
        }
    }
}