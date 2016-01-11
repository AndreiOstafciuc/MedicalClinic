﻿/*
* Author : 
* Decription : 
*/

using DAO;
using Entity;
using System;
using System.Windows;
using System.Windows.Input;
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
        private String _errorMessage;
        public SigninContent()
        {
            InitializeComponent();
        }

        private bool ValidateUserInput(String patientFirstName, String patientLastName, String patientAddress,
                     String patientPhone, String patientEmail, String patientPassword, DateTime patientBirthdate)
        {
            if (patientFirstName == "" || patientLastName == "" || patientAddress == "" || patientPhone == "" || patientEmail == "" || patientPassword == "" || patientBirthdate == _defaultDate)
            {
                _errorMessage = "Invalid input. Please fill in mandatory fields.";
                return false;
            }
            if(Utils.Validator.ValidateEmail(patientEmail)==false)
            {
                _errorMessage = "Invalid email. Ex: example@example.com";
                return false;
            }
            if (Utils.Validator.ValidatePassword(patientPassword) == false)
            {
                _errorMessage = "Password must have at least 6 characters.";
                return false;
            }
            if (Utils.Validator.ValidatePhoneNumber(patientPhone) == false)
            {
                _errorMessage = "Invalid phone. Format: only numeric and 10 characters long.";
                return false;
            }
            if(Utils.Validator.ValidateBithdate(patientBirthdate)==false)
            {
                _errorMessage = " Invalid birthdate. Birthdate cannot be in the future.";
                return false;
            }
            
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
            String patientPassword = (passwordBoxUserPassword.Password != "") ? Encrypter.getMD5(passwordBoxUserPassword.Password) : "";
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
            if (ValidateUserInput(patientFirstName, patientLastName, patientAddress, patientPhone, patientEmail, patientPassword
                , patientBirthdate))
            {
                try
                {
                    patientId = _credentialsService.Save(new Credentials(patientEmail, patientPassword, Utils.UserTypes.PATIENT));
                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                }
                if (patientId != 0)
                {
                    try
                    {
                        _patientService.Save(new Patient(patientId, patientLastName, patientFirstName, patientInsuranceNumber, patientAddress, patientBirthdate, patientGeneticDisorder, patientPhone));
                        MessageBox.Show("Account created!");
                        RaiseChangePageContentEvent(new LoginContent());
                    }
                    catch (Exception ee)
                    {
                        MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                        try
                        {
                            _credentialsService.Delete(patientId);
                        }
                        catch (Exception eee)
                        {
                            MessageBox.Show("Something went wrong trying to fix errors ! \n" + eee.Data.ToString());
                        }
                    }
                }
            }
            else
            {
                labelError.Visibility = Visibility.Visible;
                labelError.Content = _errorMessage;

            }


        }

        private void buttonBack_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }



        private void HideErrorMessage(object sender, KeyboardFocusChangedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }

        private void datePickerUserBirthdate_GotFocus(object sender, RoutedEventArgs e)
        {
            labelError.Visibility = Visibility.Hidden;
        }
    }
}
