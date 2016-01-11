/*
* Author : 
* Decription : 
*/

using DAO;
using System;
using System.Windows;
using Utils;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for CreateAdminForm.xaml
    /// </summary>
    public partial class CreateAdminForm : CustomUserControl
    {
        CredentialsService _credentialsService;
        AdministratorService _administratorService;

        public CreateAdminForm()
        {
            InitializeComponent();
            _credentialsService = new CredentialsService();
            _administratorService = new AdministratorService();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new AdminPageContent());
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            String email = emailTB.Text;
            String password = Encrypter.getMD5(passwordBox.Password);
            String firstName = firstnameTB.Text;
            String lastName = lastnameTB.Text;
            int adminId = 0;
            if (email.Equals("") || passwordBox.Password.Equals("") || firstName.Equals("") || lastName.Equals(""))
            {
                MessageBox.Show("Invalid inputs !");
            }
            else
            {
                try
                {
                    adminId = _credentialsService.Save(new Entity.Credentials(email, password, Utils.UserTypes.ADMIN));
                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
                }

                if (adminId != 0)
                {
                    try
                    {
                        adminId = _administratorService.Save(new Entity.Administrator(adminId, firstName, lastName));
                        MessageBox.Show("Account created !");
                        RaiseChangePageContentEvent(new AdminPageContent());
                    }
                    catch (Exception ee)
                    {
                        MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
                        _credentialsService.Delete(adminId);
                    }
                }
            }
        }
    }
}
