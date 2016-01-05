using DAO;
using DBConnNamespace;
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
    /// Interaction logic for LoginContent.xaml
    /// </summary>
    public partial class LoginContent : CustomUserControl
    {
        CredentialsService credentialService;

        public LoginContent() : base()
        {
            InitializeComponent();
            credentialService = new CredentialsService();
        }

        private void buttonLogin_Click(object sender, RoutedEventArgs e)
        {
            //verify user
            Credentials c = credentialService.validateCredentials(textBoxUserEmail.Text, Utils.Encrypter.getMD5(passwordBoxUserPassword.Password));
           
            //if exists change layout according to his role: doctor, admin, user
            if (c != null)
            {
                switch (c.Type)
                {
                    case Utils.UserTypes.ADMIN: RaiseChangeWindowLayoutEvent(Utils.UserTypes.ADMIN); break;
                    case Utils.UserTypes.DOCTOR: RaiseChangeWindowLayoutEvent(Utils.UserTypes.DOCTOR); break;
                    case Utils.UserTypes.USER: RaiseChangeWindowLayoutEvent(Utils.UserTypes.USER); break;
                }
            }
            else
            {
                errorLabel.Visibility = Visibility.Visible;
            }
        }

        private void hideErrorLabel(object sender, TextChangedEventArgs e)
        {
            errorLabel.Visibility = Visibility.Hidden;
        }

        private void hideErrorLabel(object sender, KeyEventArgs e)
        {
            errorLabel.Visibility = Visibility.Hidden;
        }
    }
}
