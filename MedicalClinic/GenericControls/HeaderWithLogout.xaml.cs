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
    /// Interaction logic for HeaderWithLogout.xaml
    /// </summary>
    public partial class HeaderWithLogout : CustomUserControl
    {
        CredentialsService _credentialsService;
        public HeaderWithLogout()
        {
            InitializeComponent();
            _credentialsService = new CredentialsService();
            SetHelpImage();
        }
        private void SetHelpImage()
        {
            BitmapImage bmpHelp = new BitmapImage();
            bmpHelp.BeginInit();
            bmpHelp.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/help.png");
            bmpHelp.EndInit();
            imageBtnHelp.Source = bmpHelp;
        }
        private void logoutButton_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(5);
        }

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
