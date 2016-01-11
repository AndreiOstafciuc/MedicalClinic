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
    /// Interaction logic for HeaderWithLogout.xaml
    /// </summary>
    public partial class HeaderWithLogout : CustomUserControl
    {
        /// <summary>
        /// Initialize component and call SetHelpImage to set image for helpButton
        /// </summary>
        public HeaderWithLogout()
        {
            InitializeComponent();
            SetHelpImage();
        }
        /// <summary>
        /// Get image for help button from resources and set the source
        /// </summary>
        private void SetHelpImage()
        {
            BitmapImage bmpHelp = new BitmapImage();
            bmpHelp.BeginInit();
            bmpHelp.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/help.png");
            bmpHelp.EndInit();
            imageBtnHelp.Source = bmpHelp;
        }
        /// <summary>
        /// handler for click event for logoutButton
        /// raise a new event ChangeWindowLayoutEvent for returning to the home page of the application
        /// </summary>
        private void logoutButton_Click(object sender, RoutedEventArgs e)
        {
            
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }
    }
}
