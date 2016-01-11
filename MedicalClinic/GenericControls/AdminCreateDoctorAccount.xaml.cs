/*
* Author : 
* Decription : 
*/

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
        DepartmentService _departmentService;
        CredentialsService _credentialsService;
        DoctorService _doctorService;

        List<Department> _deptsList;
        List<String> _statusList;
        public AdminCreateDoctorAccount()
        {
            InitializeComponent();
            initializeComboBoxes();
        }
        public void initializeComboBoxes()
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
            foreach (KeyValuePair<int, string> status in DoctorStatus.doctorStatuses)
            {
                cbm = new ComboBoxItem();
                cbm.Content = status.Value;
                cbm.Tag = status.Key;
                statusComoBox.Items.Add(cbm);
            }

        }

        private void submitBtn_Click(object sender, RoutedEventArgs e)
        {
            String docEmail = emailTextBox.Text;
            String docPass = Encrypter.getMD5(passwordBox.Password);
            String docFName = firstnameTextBox.Text;
            String docLNaame = lastnameTextBox.Text;
            String docPhoneNumber = phonenumberTextBox.Text;

            if (docEmail.Equals("") || passwordBox.Password.Equals("") || docFName.Equals("") || docLNaame.Equals("") || docPhoneNumber.Equals(""))
            {
                MessageBox.Show("Wrong inputs !");
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
                        _doctorService.Save(new Doctor(docId, docLNaame, docFName, docDeptId, docPhoneNumber, status));
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
