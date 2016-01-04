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
    /// Interaction logic for AdminPageContent.xaml
    /// </summary>
    public partial class AdminPageContent : CustomUserControl
    {
        public AdminPageContent()
        {
            InitializeComponent();
        }

        private void updateBtn_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new AdminCreateDoctorAccount());
        }
    }
}
