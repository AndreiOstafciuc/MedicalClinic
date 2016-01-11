// ***********************************************************************
// Assembly         : GenericControls
// Author           :
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
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for PatientDetailsPage.xaml
    /// </summary>
    public partial class PatientDetailsPage : UserControl
    {
        private PatientService _patientService;
        private CredentialsService _credentialsService;

        public PatientDetailsPage()
        {
            InitializeComponent();
            DisplayPatientInfo();
        }

        private void DisplayPatientInfo()
        {
            _credentialsService = new CredentialsService();
            Credentials credentials = _credentialsService.FindById(SessionData.UserSessionData.CurrentUserId);
            _patientService = new PatientService();
            Patient patient = _patientService.FindById(SessionData.UserSessionData.CurrentUserId);
            if (patient != null && credentials != null)
            {
                SetImages();
                labelPatientName.Content = patient.FirstName + " " + patient.LastName;
                labelPatientEmail.Content = credentials.Email;
                labelPatientPhone.Content = patient.PhoneNumber;
                labelPatientAddress.Content = patient.Address;
            }
        }

        private void SetImages()
        {
            BitmapImage bmpUser = new BitmapImage();
            bmpUser.BeginInit();
            bmpUser.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/user.png");
            bmpUser.EndInit();
            imgUser.Source = bmpUser;

            BitmapImage bmpPhone = new BitmapImage();
            bmpPhone.BeginInit();
            bmpPhone.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/phone.png");
            bmpPhone.EndInit();
            imgPhone.Source = bmpPhone;

            BitmapImage bmpEmail = new BitmapImage();
            bmpEmail.BeginInit();
            bmpEmail.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/email.png");
            bmpEmail.EndInit();
            imgEmail.Source = bmpEmail;

            BitmapImage bmpAddress = new BitmapImage();
            bmpAddress.BeginInit();
            bmpAddress.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/address.png");
            bmpAddress.EndInit();
            imgAddress.Source = bmpAddress;
        }
    }
}