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
               labelPatientName.Content=patient.FirstName+" "+patient.LastName;
               labelPatientEmail.Content = credentials.Email;
               labelPatientPhone.Content = patient.PhoneNumber;
               labelPatientAddress.Content = patient.Address;
            }
        }
    }
}
