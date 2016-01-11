// ***********************************************************************
* Author : Cosmanescu Roxana
* Description : Get user input from the displayed form and validates them,  if input is valid then save user data using an instance of PatientService, otherwise show the corresponding error message
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DAO;
using Entity;
using System;
using System.Windows;
using System.Windows.Input;
using Utils;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for SigninContent.xaml
    /// </summary>
    public partial class SigninContent : CustomUserControl
    {
        private CredentialsService _credentialsService;
        private PatientService _patientService;
        private DateTime _defaultDate;
        private String _errorMessage;

        public SigninContent()
        {
            InitializeComponent();
        }

        /// <summary>
        /// validate user input; returns true if valid, otherwise returns false
        /// <param name="patientFirstName"> patientFirstName is povided by user and cannot be empty </param>
        /// <param name="patientLastName"> patientLastName is povided by user and cannot be empty </param>
        /// <param name="patientAddress"> patientAddress is povided by user and cannot be empty </param>
        /// <param name="patientPhone"> patientPhone is povided by user and must have exactly 10 numberic characters </param>
        /// <param name="patientEmail"> patientEmail is povided by user and must be a valid email </param>
        /// <param name="patientPassword"> patientPassword is povided by user and must be minimum 6 characters long </param>
        /// <param name="patientBirthdate"> patientBirthdate is povided by user and must be earlier than the current date</param>
        /// </summary>
        private bool ValidateUserInput(String patientFirstName, String patientLastName, String patientAddress,
                     String patientPhone, String patientEmail, String patientPassword, DateTime patientBirthdate)
        {
            if ((patientFirstName != null && String.IsNullOrEmpty(patientFirstName)) || (patientLastName != null && String.IsNullOrEmpty(patientLastName)) || (patientAddress != null && String.IsNullOrEmpty(patientAddress)) || (patientPhone != null && String.IsNullOrEmpty(patientPhone)) || (patientEmail != null && String.IsNullOrEmpty(patientEmail)) || (patientPassword != null && String.IsNullOrEmpty(patientPassword)) || patientBirthdate == _defaultDate)
            {
                _errorMessage = "Invalid input. Please fill in mandatory fields.";
                return false;
            }
            if (Utils.Validator.ValidateEmail(patientEmail) == false)
            {
                _errorMessage = "Invalid email. Ex: example@example.com";
                return false;
            }
            if (Utils.Validator.ValidatePassword(patientPassword) == false)
            {
                _errorMessage = "Password must have at least 6 characters.";
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
        /// <summary>
        /// handler for buttonSignin click Event, 
        /// gets user input and check if is valid,
        /// if input is valid use CrentialsService and PatientService to insert a new patient, 
        /// otherwise set the errorLabel content and make it visible
        /// </summary>
        private void buttonSignin_Click(object sender, RoutedEventArgs e)
        {
            //create new user, if success redirect to login view
            _credentialsService = new CredentialsService();
            _patientService = new PatientService();
            _defaultDate = DateTime.Now;
            String patientFirstName = textBoxUserFirstName.Text;
            String patientLastName = textBoxUserLastName.Text;
            String patientAddress = textBoxUserAddress.Text;
            String patientPhone = textBoxUserPhone.Text;
            String patientGeneticDisorder = textBoxUserGeneticDisorder.Text;
            String patientInsuranceNumber = textBoxUserInsuranceNr.Text;
            String patientEmail = textBoxUserEmail.Text;
            String patientPassword = (!(passwordBoxUserPassword.Password != null && String.IsNullOrEmpty(passwordBoxUserPassword.Password))) ? Encrypter.GetMD5(passwordBoxUserPassword.Password) : "";
            DateTime patientBirthdate;
            if (datePickerUserBirthdate.SelectedDate != null)
            {
                patientBirthdate = datePickerUserBirthdate.SelectedDate.Value;
            }
            else
            {
                patientBirthdate = _defaultDate;
            }
            int patientId = 0;
            if (ValidateUserInput(patientFirstName, patientLastName, patientAddress, patientPhone, patientEmail, patientPassword
                , patientBirthdate))
            {
                try
                {
                    patientId = _credentialsService.Save(new Credentials(patientEmail, patientPassword, Utils.UserTypes.PATIENT));
                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                }
                if (patientId != 0)
                {
                    try
                    {
                        _patientService.Save(new Patient(patientId, patientLastName, patientFirstName, patientInsuranceNumber, patientAddress, patientBirthdate, patientGeneticDisorder, patientPhone));
                        MessageBox.Show("Account created!");
                        RaiseChangePageContentEvent(new LoginContent());
                    }
                    catch (Exception ee)
                    {
                        MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                        try
                        {
                            _credentialsService.Delete(patientId);
                        }
                        catch (Exception eee)
                        {
                            MessageBox.Show("Something went wrong trying to fix errors ! \n" + eee.Data.ToString());
                        }
                    }
                }
            }
            else
            {
                labelError.Visibility = Visibility.Visible;
                labelError.Content = _errorMessage;
            }
        }
        /// <summary>
        /// handler for buttonBack click Event, 
        /// raise a new event for changing the layout to MainUI (the layout for user GUEST)
        /// </summary>
        private void buttonBack_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }

        /// <summary>
        /// handler for all textBox elements KeyboardFocusChangedEvent,
        /// if user selected a input and begins to write the errorLabel visibility is set hidden
        /// </summary>
        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }

        /// <summary>
        /// handler for DatePicker gotFocus event
        /// errorLabel visibility is set hidden
        /// </summary>
        private void datePickerUserBirthdate_GotFocus(object sender, RoutedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }
    }
}