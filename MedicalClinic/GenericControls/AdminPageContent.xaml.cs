/*
* Author : 
* Decription : 
*/

using System.Windows;

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

        private void doctorForm_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new AdminCreateDoctorAccount());
        }

        private void deptForm_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new CreateDepartmentForm());
        }

        private void adminForm_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new CreateAdminForm());
        }
    }
}
