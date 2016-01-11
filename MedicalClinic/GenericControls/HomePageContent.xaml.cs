/*
* Author : 
* Decription : 
*/

using System.Windows;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for HomePageContent.xaml
    /// </summary>
    public partial class HomePageContent : CustomUserControl
    {
        public HomePageContent()
        {
            InitializeComponent();
        }

        private void buttonLogin_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new LoginContent());
        }

        private void buttonSignin_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new SigninContent());
        }

        private void buttonTestStuff_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(-1);
        }
    }
}
