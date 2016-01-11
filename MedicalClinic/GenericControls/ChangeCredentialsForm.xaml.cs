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

        private void PopulateEmailInput()
        {
            _credentialsService = new CredentialsService();
            _credentials = _credentialsService.FindById(SessionData.UserSessionData.CurrentUserId);
            textBoxUserEmail.Text = _credentials.Email;
        }

        private bool ValidateUserInput(String email, String oldPassword, String newPassword)
        {
            if (email == "")
            {
                _errorMessage = "Email cannot be empty.";
                return false;
            }
            if(Utils.Validator.ValidateEmail(email)==false)
            {
                _errorMessage = "Invalid email. Ex: example@example.com";
                return false;
            }
            if (oldPassword == "")
            {
                _errorMessage = "Old Password cannot be empty.";
                return false;
            }
            else
            {
                if (Utils.Encrypter.getMD5(oldPassword) != _credentials.Password)
                {
                    _errorMessage = "Old Password is incorrect.";
                    return false;
                }
            }
            if(Utils.Validator.ValidatePassword(newPassword)== false)
            {
                _errorMessage = "New Password must have at least 6 characters.";
                return false;
            }
            return true;

        }
        private void buttonUpdate_Click(object sender, RoutedEventArgs e)
        {

            String email = textBoxUserEmail.Text;
            String oldPassword = textBoxUserOldPassword.Password;
            String newPassword = textBoxUserNewPassword.Password;
            if (ValidateUserInput(email, oldPassword, newPassword) == true)
            {
                _credentials.Email = email;
                _credentials.Password = Utils.Encrypter.getMD5(newPassword);
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

        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }
    }
}
