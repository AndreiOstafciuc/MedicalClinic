// ***********************************************************************
// Assembly         : GenericControls
// Author           : Marius Bordeian
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DAO;
using System;
using System.Windows;
using Utils;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for CreateAdminForm.xaml
    /// </summary>
    public partial class CreateAdminForm : CustomUserControl
    {
        private CredentialsService _credentialsService;
        private AdministratorService _administratorService;
        private String _errorMessage;

        public CreateAdminForm()
        {
            InitializeComponent();
            _credentialsService = new CredentialsService();
            _administratorService = new AdministratorService();
        }

        /// <summary>
        /// Changes the view to the previous page.
        /// </summary>
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new AdminPageContent());
        }

        /// <summary>
        /// Validates inputs using Utils.Validator class.
        /// </summary>
        private bool ValidateInput(String email, String password, String firstName, String lastName)
        {
            if (String.IsNullOrEmpty(email) || String.IsNullOrEmpty(passwordBox.Password) || String.IsNullOrEmpty(firstName) || String.IsNullOrEmpty(lastName))
            {
                _errorMessage = "Fields cannot be empty.";
                return false;
            }
            if (Utils.Validator.ValidateEmail(email) == false)
            {
                _errorMessage = "Email is invalid. Ex: example@example.com";
                return false;
            }
            if (Utils.Validator.ValidatePassword(password) == false)
            {
                _errorMessage = "Password must have at least 6 characters.";
                return false;
            }
            return true;
        }

        /// <summary>
        /// Submits the form data to the databse
        /// </summary>
        private void button_Click(object sender, RoutedEventArgs e)
        {
            String email = emailTB.Text;
            String password = Encrypter.GetMD5(passwordBox.Password);
            String firstName = firstnameTB.Text;
            String lastName = lastnameTB.Text;
            int adminId = 0;
            if (ValidateInput(email, password, firstName, lastName) == false)
            {
                MessageBox.Show(_errorMessage);
            }
            else
            {
                try
                {
                    adminId = _credentialsService.Save(new Entity.Credentials(email, password, Utils.UserTypes.ADMIN));
                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
                }

                if (adminId != 0)
                {
                    try
                    {
                        adminId = _administratorService.Save(new Entity.Administrator(adminId, firstName, lastName));
                        MessageBox.Show("Account created !");
                        RaiseChangePageContentEvent(new AdminPageContent());
                    }
                    catch (Exception ee)
                    {
                        MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
                        _credentialsService.Delete(adminId);
                    }
                }
            }
        }
    }
}