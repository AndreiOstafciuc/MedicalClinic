// ***********************************************************************
// Author : Cosmanescu Roxana
// Description : Get user (identified by SessionData.UserSessionData.CurrentUserId) data from database using CredentialsService and PatientService //               and display data on the page ( suggestive images located in resource are used for this information)
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
        /// <summary>
        ///  Get user (identified by SessionData.UserSessionData.CurrentUserId) data from database using CredentialsService and PatientService 
       ///and display data on the page
       /// </summary>
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
        /// <summary>
        /// Get images from resources and set the sources of the images in the UI
        /// </summary>
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