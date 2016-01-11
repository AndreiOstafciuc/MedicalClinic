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
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using Utils;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for AdminCreateDoctorAccount.xaml
    /// </summary>
    public partial class AdminCreateDoctorAccount : CustomUserControl
    {
        private DepartmentService _departmentService;
        private CredentialsService _credentialsService;
        private DoctorService _doctorService;

        private List<Department> _deptsList;
        private List<String> _statusList;

        private String _errorMessage;
        public AdminCreateDoctorAccount()
        {
            InitializeComponent();
            InitializeComboBoxes();
        }

        public void InitializeComboBoxes()
        {
            _departmentService = new DepartmentService();
            _credentialsService = new CredentialsService();
            _doctorService = new DoctorService();

            _deptsList = _departmentService.FindAll();
            _statusList = new List<string>() { "active", "inactive" };
            ComboBoxItem cbm;
            if (_deptsList != null)
            {
                foreach (Department d in _deptsList)
                {
                    cbm = new ComboBoxItem();
                    cbm.Content = d.Name;
                    cbm.Tag = d.Id;
                    departmentComboBox.Items.Add(cbm);
                }
            }
            foreach (KeyValuePair<int, string> status in DoctorStatus.DoctorStatuses)
            {
                cbm = new ComboBoxItem();
                cbm.Content = status.Value;
                cbm.Tag = status.Key;
                statusComoBox.Items.Add(cbm);
            }
        }
        private bool ValidateInput(String email, String password, String firstName, String lastName)
        {
            if (email.Equals("") || password.Equals("") || firstName.Equals("") || lastName.Equals(""))
            {
                _errorMessage = "Fields cannot be empty.";
                return false;
            }
            if (Utils.Validator.ValidateEmail(email) == false)
            {
                _errorMessage = "Email is invalid. Ex: example@example.com";
                return false;
            }
            if (Utils.Validator.ValidatePassword(password) == false)
            {
                _errorMessage = "Password must have at least 6 characters.";
                return false;
            }
            return true;
        }

        private void submitBtn_Click(object sender, RoutedEventArgs e)
        {
            String docEmail = emailTextBox.Text;
            String docPass = Encrypter.GetMD5(passwordBox.Password);
            String docFName = firstnameTextBox.Text;
            String docLName = lastnameTextBox.Text;
            String docPhoneNumber = phonenumberTextBox.Text;

            if (ValidateInput(docEmail,passwordBox.Password,docFName,docLName)== false)
            {
                MessageBox.Show(_errorMessage);
            }
            else {
                int docDeptId = Convert.ToInt32(((ComboBoxItem)departmentComboBox.SelectedItem).Tag.ToString());
                int status = Convert.ToInt32(((ComboBoxItem)statusComoBox.SelectedItem).Tag.ToString());
                int docId = 0;
                try
                {
                    docId = _credentialsService.Save(new Credentials(docEmail, docPass, Utils.UserTypes.DOCTOR));
                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                }

                if (docId != 0)
                {
                    try
                    {
                        _doctorService.Save(new Doctor(docId, docLName, docFName, docDeptId, docPhoneNumber, status));
                        MessageBox.Show("Account created !");
                        RaiseChangeWindowLayoutEvent(Utils.UserTypes.ADMIN);
                    }
                    catch (Exception ee)
                    {
                        MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                        try
                        {
                            _credentialsService.Delete(docId);
                        }
                        catch (Exception eee)
                        {
                            MessageBox.Show("Something went wrong trying to fix errors ! \n" + eee.Data.ToString());
                        }
                    }
                }
            }
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new AdminPageContent());
        }
    }
}