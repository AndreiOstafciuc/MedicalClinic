/*
* Author : 
* Decription : 
*/

using DAO;
using Entity;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for EditPatientForm.xaml,
    /// gets user input, validate input and update patient data if input is valid
    /// </summary>
    public partial class EditPatientForm : UserControl
    {
        private PatientService _patientService;
        private DateTime _defaultDate;
        private Patient _patient;
        private String _errorMessage;
        public EditPatientForm()
        {
            InitializeComponent();
            PopulateUserForm();
        }

        /// <summary>
        /// using SessionData.UserSessionData finds which user is currently logged in,
        /// using PatientService retrieve data from database about the current user, in order to fill the fields of the edit form
        /// </summary>
        private void PopulateUserForm()
        {
            _patientService = new PatientService();
            _patient = _patientService.FindById(SessionData.UserSessionData.CurrentUserId);
            if (_patient != null)
            {
                textBoxUserFirstName.Text = _patient.FirstName;
                textBoxUserLastName.Text = _patient.LastName;
                textBoxUserAddress.Text = _patient.Address;
                textBoxUserPhone.Text = _patient.PhoneNumber;
                datePickerUserBirthdate.SelectedDate = _patient.BirthDate;
                textBoxUserGeneticDisorder.Text = _patient.GeneticDiseases;
                textBoxUserInsuranceNr.Text = _patient.InsuranceNumber;
            }
        }


        /// <summary>
        /// handler method for KeyboardFocusChanged 
        /// that hides error message when user begins to edit form fiedls
        /// </summary>
        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }
        /// <summary>
        /// handler method for DateTimePicker GotFocus
        /// that hides error message when user selects a new date
        /// </summary>
        private void datePickerUserBirthdate_GotFocus(object sender, RoutedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }

        private void buttonUpdate_Click(object sender, RoutedEventArgs e)
        {
            _defaultDate = DateTime.Now;
            String patientFirstName = textBoxUserFirstName.Text;
            String patientLastName = textBoxUserLastName.Text;
            String patientAddress = textBoxUserAddress.Text;
            String patientPhone = textBoxUserPhone.Text;
            String patientGeneticDisorder = textBoxUserGeneticDisorder.Text;
            String patientInsuranceNumber = textBoxUserInsuranceNr.Text;
            DateTime patientBirthdate;
            if (datePickerUserBirthdate.SelectedDate != null)
            {
                patientBirthdate = datePickerUserBirthdate.SelectedDate.Value;
            }
            else
            {
                patientBirthdate = _defaultDate;
            }

            if (ValidateUserInput(patientFirstName, patientLastName, patientAddress, patientPhone, patientBirthdate))
            {
                try
                {
                    _patient.FirstName = patientFirstName;
                    _patient.LastName = patientLastName;
                    _patient.Address = patientAddress;
                    _patient.GeneticDiseases = patientGeneticDisorder;
                    _patient.InsuranceNumber = patientInsuranceNumber;
                    _patient.BirthDate = patientBirthdate;
                    _patientService.Update(_patient);
                    MessageBox.Show("Information updated!");

                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                }
            }
            else
            {
                labelError.Visibility = Visibility.Visible;
                labelError.Content = _errorMessage;

            }


        }
        private bool ValidateUserInput(String patientFirstName, String patientLastName, String patientAddress,
                    String patientPhone, DateTime patientBirthdate)
        {
            if (patientFirstName == "" || patientLastName == "" || patientAddress == "" || patientPhone == "" || patientBirthdate == _defaultDate)
            {
                _errorMessage = "Invalid input. Please fill in mandatory fields.";
                return false;
            }
            if (Utils.Validator.ValidatePhoneNumber(patientPhone) == false)
            {
                _errorMessage = "Invalid phone. Format: only numeric and 10 characters long.";
                return false;
            }
            if (Utils.Validator.ValidateBithdate(patientBirthdate) == false)
            {
                _errorMessage = " Invalid birthdate. Birthdate cannot be in the future.";
                return false;
            }
            return true;
        }
    }
}
