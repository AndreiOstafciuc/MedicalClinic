/*
* Author : Cosmanescu Roxana
* Description : The Home Page of the applications, contains a description of the medical clinic, a sign up button and a login button, 
*               When user presses login button an event ChangePageContentEvent is raised in order to change the body content to login form
*               When user presses sign up button an event ChangePageContentEvent is raised in order to change the body content to sign up form
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

        /// <summary>
        ///Handler for login button click event, 
        ///an event ChangePageContentEvent is raised in order to change the body content to login form
        /// </summary>
        private void buttonLogin_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new LoginContent());
        }

        /// <summary>
        ///Handler for signin button click event, 
        ///an event ChangePageContentEvent is raised in order to change the body content to sign up form
        /// </summary>
        private void buttonSignin_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new SigninContent());
        }

        
    }
}
