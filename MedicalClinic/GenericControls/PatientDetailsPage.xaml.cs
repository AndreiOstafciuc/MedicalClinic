using DAO;
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
    /// Interaction logic for PatientDetailsPage.xaml
    /// </summary>
    public partial class PatientDetailsPage : UserControl
    {
        private PatientService _patientService;
        private CredentialsService _credentialsService;
        public PatientDetailsPage()
        {
            InitializeComponent();
            displayPatientInfo();
        }
        private void displayPatientInfo()
        {
            _credentialsService = new CredentialsService();
            Credentials credentials = _credentialsService.FindById(SessionData.UserSessionData.CurrentUserId);
            _patientService = new PatientService();
            Patient patient = _patientService.FindById(SessionData.UserSessionData.CurrentUserId);
            if (patient != null && credentials != null)
            {
                setImages();
               labelPatientName.Content=patient.FirstName+" "+patient.LastName;
               labelPatientEmail.Content = credentials.Email;
               labelPatientPhone.Content = patient.PhoneNumber;
               labelPatientAddress.Content = patient.Address;
            }
        }
        private void setImages()
        {
            BitmapImage bmpUser = new BitmapImage();
            bmpUser.BeginInit();
            bmpUser.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/user.png");
            bmpUser.EndInit();
            imgUser.Source = bmpUser;

            BitmapImage bmpPhone = new BitmapImage();
            bmpPhone.BeginInit();
            bmpPhone.UriSource= new Uri("pack://application:,,,/Clinic;component/Resources/phone.png");
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
