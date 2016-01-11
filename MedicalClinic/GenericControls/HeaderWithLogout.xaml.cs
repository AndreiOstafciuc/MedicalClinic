/*
* Author : Cosmanescu Roxana, Ostafciuc Andrei
* Description : The header of the page containing application logo , the help button and the logout button
*/

using DAO;
using Entity;
using System;
using System.Windows;
using System.Windows.Media.Imaging;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for HeaderWithLogout.xaml
    /// </summary>
    public partial class HeaderWithLogout : CustomUserControl
    {
        private CredentialsService _credentialsService = new CredentialsService();
        /// <summary>
        /// Initialize component and call SetHelpImage to set image for helpButton
        /// </summary>
        public HeaderWithLogout()
        {
            InitializeComponent();
            _credentialsService = new CredentialsService();
            SetHelpImage();
        }
        /// <summary>
        /// Get image for help button from resources and set the source
        /// </summary>
        private void SetHelpImage()
        {
            BitmapImage bmpHelp = new BitmapImage();
            bmpHelp.BeginInit();
            bmpHelp.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/help.png");
            bmpHelp.EndInit();
            imageBtnHelp.Source = bmpHelp;
        }
        /// <summary>
        /// handler for click event for logoutButton
        /// raise a new event ChangeWindowLayoutEvent for returning to the home page of the application
        /// </summary>
        private void logoutButton_Click(object sender, RoutedEventArgs e)
        {

            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }

        /// <summary>
        ///Handler for helpButton click event, 
        ///open help according to current user type
        /// </summary>
        private void helpButton_Click(object sender, RoutedEventArgs e)
        {
            int id = SessionData.UserSessionData.CurrentUserId;

            _credentialsService = new CredentialsService();
            Credentials c = _credentialsService.FindById(id);
            if (c != null)
            {
                switch (c.Type)
                {
                    case Utils.UserTypes.ADMIN: System.Diagnostics.Process.Start(System.IO.Path.GetDirectoryName(System.IO.Path.GetDirectoryName(System.IO.Directory.GetCurrentDirectory())) + "\\Resources\\helps\\AdminHelp.chm"); break;
                    case Utils.UserTypes.PATIENT: System.Diagnostics.Process.Start(System.IO.Path.GetDirectoryName(System.IO.Path.GetDirectoryName(System.IO.Directory.GetCurrentDirectory())) + "\\Resources\\helps\\PatientHelp.chm"); break;
                    case Utils.UserTypes.DOCTOR: System.Diagnostics.Process.Start(System.IO.Path.GetDirectoryName(System.IO.Path.GetDirectoryName(System.IO.Directory.GetCurrentDirectory())) + "\\Resources\\helps\\DoctorHelp.chm"); break;
                }
            }

        }
    }
}
