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
    /// Interaction logic for SigninContent.xaml
    /// </summary>
    public partial class SigninContent : CustomUserControl
    {
        public SigninContent()
        {
            InitializeComponent();
        }

        private void buttonSignin_Click(object sender, RoutedEventArgs e)
        {
            //create new user, if success redirect to login view
            DBConnection conn = DBConnNamespace.DBConnection.Connection;
            RaiseChangePageContentEvent(new LoginContent());
        }
    }
}
