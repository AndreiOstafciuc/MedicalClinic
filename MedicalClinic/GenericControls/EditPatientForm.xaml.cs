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
        private DateTime _defaultDate;
        private Patient _patient;
        public EditPatientForm()
        {
            InitializeComponent();
            PopulateUserForm();
        }

        private void PopulateUserForm()
        {
            _patientService =new PatientService();
             _patient= _patientService.FindById(SessionData.UserSessionData.CurrentUserId);
            if(_patient != null)
            {
                textBoxUserFirstName.Text = _patient.FirstName;
                textBoxUserLastName.Text = _patient.LastName;
                textBoxUserAddress.Text = _patient.Address;
                datePickerUserBirthdate.SelectedDate = _patient.BirthDate;
                textBoxUserGeneticDisorder.Text = _patient.GeneticDiseases;
                textBoxUserInsuranceNr.Text = _patient.InsuranceNumber;
            }
        }

        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }

        private void datePickerUserBirthdate_GotFocus(object sender, RoutedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }

        private void buttonUpdate_Click(object sender, RoutedEventArgs e)
        {
            _defaultDate = DateTime.Now;
            String patientFirstName = textBoxUserFirstName.Text;
            String patientLastName = textBoxUserLastName.Text;
            String patientAddress = textBoxUserAddress.Text;
            String patientPhone = textBoxUserPhone.Text;
            String patientGeneticDisorder = textBoxUserGeneticDisorder.Text;
            String patientInsuranceNumber = textBoxUserInsuranceNr.Text;
            DateTime patientBirthdate;
            if (datePickerUserBirthdate.SelectedDate != null)
            {
                patientBirthdate = datePickerUserBirthdate.SelectedDate.Value;
            }
            else
            {
                patientBirthdate = _defaultDate;
            }
            
            if (ValidateUserInput(patientFirstName, patientLastName, patientAddress, patientPhone,patientBirthdate))
            {
                try
                {
                    _patient.FirstName = patientFirstName;
                    _patient.LastName = patientLastName;
                    _patient.Address = patientAddress;
                    _patient.GeneticDiseases = patientGeneticDisorder;
                    _patient.InsuranceNumber = patientInsuranceNumber;
                    _patient.BirthDate = patientBirthdate;
                    _patientService.Update(_patient);
                    MessageBox.Show("Information updated!");

                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                }
            }
            else
            {
                labelError.Visibility = Visibility.Visible;
                labelError.Content = "Invalid input. Please fill in mandatory fields.";

            }


        }
        private bool ValidateUserInput(String patientFirstName, String patientLastName, String patientAddress,
                    String patientPhone, DateTime patientBirthdate)
        {
            if (patientFirstName == "" || patientLastName == "" || patientAddress == "" || patientPhone == "" || patientBirthdate == _defaultDate)
                return false;
            return true;
        }
    }
}
