// ***********************************************************************
// Assembly         : GenericControls
// Author           : Andrei Ostafciuc
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DAO;
using Entity;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for LoginContent.xaml
    /// </summary>
    public partial class LoginContent : CustomUserControl
    {
        private CredentialsService credentialService;

        public LoginContent() : base()
        {
            InitializeComponent();
            credentialService = new CredentialsService();
        }

        /// <summary>
        /// Checks entered credentials and, if valid, redirects to the appropriate view.
        /// </summary>
        private void buttonLogin_Click(object sender, RoutedEventArgs e)
        {
            //verify user
            Credentials c = credentialService.ValidateCredentials(textBoxUserEmail.Text, Utils.Encrypter.GetMD5(passwordBoxUserPassword.Password));

            //if exists change layout according to his role: doctor, admin, user
            if (c != null)
            {
                SessionData.UserSessionData.SaveUserSessionData(c.Id);
                switch (c.Type)
                {
                    case Utils.UserTypes.ADMIN: RaiseChangeWindowLayoutEvent(Utils.UserTypes.ADMIN); break;
                    case Utils.UserTypes.DOCTOR: RaiseChangeWindowLayoutEvent(Utils.UserTypes.DOCTOR); break;
                    case Utils.UserTypes.PATIENT: RaiseChangeWindowLayoutEvent(Utils.UserTypes.PATIENT); break;
                }
            }
            else
            {
                errorLabel.Visibility = Visibility.Visible;
            }
        }

        /// <summary>
        /// Hides the error label
        /// </summary>
        private void hideErrorLabel(object sender, TextChangedEventArgs e)
        {
            errorLabel.Visibility = Visibility.Hidden;
        }

        /// <summary>
        /// Checks entered credentials and, if valid, redirects to the appropriate view.
        /// </summary>
        private void hideErrorLabel(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                Credentials c = credentialService.ValidateCredentials(textBoxUserEmail.Text, Utils.Encrypter.GetMD5(passwordBoxUserPassword.Password));

                //if exists change layout according to his role: doctor, admin, user
                if (c != null)
                {
                    //save user session data
                    SessionData.UserSessionData.SaveUserSessionData(c.Id);
                    switch (c.Type)
                    {
                        case Utils.UserTypes.ADMIN: RaiseChangeWindowLayoutEvent(Utils.UserTypes.ADMIN); break;
                        case Utils.UserTypes.DOCTOR: RaiseChangeWindowLayoutEvent(Utils.UserTypes.DOCTOR); break;
                        case Utils.UserTypes.PATIENT: RaiseChangeWindowLayoutEvent(Utils.UserTypes.PATIENT); break;
                    }
                }
                else
                {
                    errorLabel.Visibility = Visibility.Visible;
                }
            }
            else
            {
                errorLabel.Visibility = Visibility.Hidden;
            }
        }

        /// <summary>
        /// Changes the view to the previous page
        /// </summary>
        private void buttonBack_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }
    }
}