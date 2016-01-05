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
using Utils;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for SigninContent.xaml
    /// </summary>
    public partial class SigninContent : CustomUserControl
    {
        private CredentialsService _credentialsService;
        private PatientService _patientService;
        private DateTime _defaultDate;
        public SigninContent()
        {
            InitializeComponent();
        }

        private bool validateUserInput(String patientFirstName, String patientLastName, String patientAddress,
                     String patientPhone,String patientEmail, String patientPassword ,DateTime patientBirthdate)
        {
            if (patientFirstName == "" || patientLastName == "" || patientAddress == "" || patientPhone == "" || patientEmail == "" || patientPassword == "" || patientBirthdate == _defaultDate)
                return false;
            return true;
        }
        private void buttonSignin_Click(object sender, RoutedEventArgs e)
        {
            //create new user, if success redirect to login view
            _credentialsService = new CredentialsService();
            _patientService = new PatientService();
            _defaultDate = DateTime.Now;
            String patientFirstName = textBoxUserFirstName.Text;
            String patientLastName = textBoxUserLastName.Text;
            String patientAddress = textBoxUserAddress.Text;
            String patientPhone = textBoxUserPhone.Text;
            String patientGeneticDisorder = textBoxUserGeneticDisorder.Text;
            String patientInsuranceNumber = textBoxUserInsuranceNr.Text;
            String patientEmail = textBoxUserEmail.Text;
            String patientPassword = (passwordBoxUserPassword.Password!="")?Encrypter.getMD5(passwordBoxUserPassword.Password):"";
            DateTime patientBirthdate;
            if (datePickerUserBirthdate.SelectedDate != null)
            {
                patientBirthdate = datePickerUserBirthdate.SelectedDate.Value;
            }
            else
            {
                patientBirthdate = _defaultDate;
            }
            int patientId = 0;
            if(validateUserInput(patientFirstName, patientLastName, patientAddress, patientPhone, patientEmail, patientPassword
                ,patientBirthdate))
            {
                try
                {
                    patientId=_credentialsService.Save(new Credentials(patientEmail, patientPassword, Utils.UserTypes.PATIENT));
                }catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                }
                try
                {
                    _patientService.Save(new Patient(patientId,patientLastName,patientFirstName,patientInsuranceNumber,patientAddress,patientBirthdate,patientGeneticDisorder,patientPhone));
                    
                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                    try
                    {
                        _credentialsService.delete(patientId);
                    }
                    catch (Exception eee)
                    {
                        MessageBox.Show("Something went wrong trying to fix errors ! \n" + eee.Data.ToString());
                    }
                }
                if(patientId!=0)
                {
                    MessageBox.Show("Account created!");
                    RaiseChangePageContentEvent(new LoginContent());
                }
            }
            else
            {
                labelError.Visibility = Visibility.Visible;
                labelError.Content= "Invalid input. Please fill in mandatory fields.";
                
            }

            
        }

        private void buttonBack_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }

         
       
        private void hideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }

        private void datePickerUserBirthdate_GotFocus(object sender, RoutedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }
    }
}
