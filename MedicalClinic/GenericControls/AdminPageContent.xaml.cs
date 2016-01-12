// ***********************************************************************
// Assembly         : GenericControls
// Author           : Marius Bordeian
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

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

        /// <summary>
        /// Changes the view to the create doctor account form
        /// </summary>
        private void doctorForm_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new AdminCreateDoctorAccount());
        }

        /// <summary>
        /// Changes the view to the create department form
        /// </summary>
        private void deptForm_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new CreateDepartmentForm());
        }

        /// <summary>
        /// Changes the view to the create admin account form
        /// </summary>
        private void adminForm_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new CreateAdminForm());
        }
    }
}