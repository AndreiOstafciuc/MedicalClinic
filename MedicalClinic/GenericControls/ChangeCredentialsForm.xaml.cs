// ***********************************************************************
// Author : Cosmanescu Roxana
// Description : Get user input from the form and validates, if input is valid then update user data, otherwise show the corresponding error message
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
using System.Windows.Controls;
using System.Windows.Input;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for ChangeCredentialsForm.xaml
    /// </summary>
    public partial class ChangeCredentialsForm : UserControl
    {
        private CredentialsService _credentialsService;
        private Credentials _credentials;
        private String _errorMessage;

        public ChangeCredentialsForm()
        {
            InitializeComponent();
            PopulateEmailInput();
        }

        /// <summary>
        /// find current user that is logged in the application and get his email in order to fill the edit
        /// form with his old email
        /// </summary>
        private void PopulateEmailInput()
        {
            _credentialsService = new CredentialsService();
            _credentials = _credentialsService.FindById(SessionData.UserSessionData.CurrentUserId);
            if (_credentials != null)
            {
                textBoxUserEmail.Text = _credentials.Email;
            }
            
        }
        /// <summary>
        /// <param name="email"> email is povided by user and must be a valid email, </param>
        /// <param name="oldPassword"> oldPassword is povided by user and must be the same as the password stored in the database, </param>
        /// <param name="newPassword"> newPassword is povided by user and must be minimum 6 characters long </param>
        /// </summary>
        private bool ValidateUserInput(String email, String oldPassword, String newPassword)
        {
            if ((email != null && String.IsNullOrEmpty(email)))
            {
                _errorMessage = "Email cannot be empty.";
                return false;
            }
            if (Utils.Validator.ValidateEmail(email) == false)
            {
                _errorMessage = "Invalid email. Ex: example@example.com";
                return false;
            }
            if ((oldPassword != null && String.IsNullOrEmpty(oldPassword)))
            {
                _errorMessage = "Old Password cannot be empty.";
                return false;
            }
            else
            {
                if (Utils.Encrypter.GetMD5(oldPassword) != _credentials.Password)
                {
                    _errorMessage = "Old Password is incorrect.";
                    return false;
                }
            }
            if (Utils.Validator.ValidatePassword(newPassword) == false)
            {
                _errorMessage = "New Password must have at least 6 characters.";
                return false;
            }
            return true;
        }
        /// <summary>
        /// handler for buttonUpdate click Event, 
        /// gets user input and check if is valid,
        /// if input is valid user CrentialsService to update user info, 
        /// otherwise set the errorLabel content and make it visible
        /// </summary>
        private void buttonUpdate_Click(object sender, RoutedEventArgs e)
        {
            String email = textBoxUserEmail.Text;
            String oldPassword = textBoxUserOldPassword.Password;
            String newPassword = textBoxUserNewPassword.Password;
            if (ValidateUserInput(email, oldPassword, newPassword) == true)
            {
                _credentials.Email = email;
                _credentials.Password = Utils.Encrypter.GetMD5(newPassword);
                try
                {
                    _credentialsService.Update(_credentials);
                    MessageBox.Show("Credentials updated");
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Something went wrong ! \n" + ex.Data.ToString());
                }
            }
            else
            {
                labelError.Content = _errorMessage;
                labelError.Visibility = Visibility.Visible;
            }
        }

        /// <summary>
        /// handler for all textBox elements KeyboardFocusChangedEvent,
        /// if user selected a input and begins to write the errorLabel  visibility is set hidden
        /// </summary>
        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }
    }
}