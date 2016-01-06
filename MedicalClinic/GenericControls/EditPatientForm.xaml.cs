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
    /// Interaction logic for EditPatientForm.xaml
    /// </summary>
    public partial class EditPatientForm : UserControl
    {
        private PatientService _patientService;
        private CredentialsService _credentialsService;
        public EditPatientForm()
        {
            InitializeComponent();
            populateUserForm();
        }

        private void populateUserForm()
        {
            _credentialsService = new CredentialsService();
            Credentials credentials = _credentialsService.FindById(SessionData.UserSessionData.CurrentUserId);
            _patientService =new PatientService();
            Patient patient = _patientService.FindById(SessionData.UserSessionData.CurrentUserId);
            if(patient!=null && credentials!=null)
            {
                textBoxUserFirstName.Text = patient.FirstName;
                textBoxUserLastName.Text = patient.LastName;
                textBoxUserAddress.Text = patient.Address;
                textBoxUserEmail.Text = credentials.Email;
                passwordBoxUserPassword.Password = credentials.Password;
                datePickerUserBirthdate.SelectedDate = patient.BirthDate;
                textBoxUserGeneticDisorder.Text = patient.GeneticDiseases;
                textBoxUserInsuranceNr.Text = patient.InsuranceNumber;
            }
        }

        private void hideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {

        }

        private void datePickerUserBirthdate_GotFocus(object sender, RoutedEventArgs e)
        {

        }

        private void buttonUpdate_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
