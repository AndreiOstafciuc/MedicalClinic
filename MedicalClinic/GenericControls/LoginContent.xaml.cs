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
        
        public LoginContent():base()
        {
            InitializeComponent();
        }

        private void buttonNextPage_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new MainContent());
        }
    }
}
