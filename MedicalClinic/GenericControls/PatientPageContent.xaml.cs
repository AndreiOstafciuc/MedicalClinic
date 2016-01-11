// ***********************************************************************
// Author : Cosmanescu Roxana
// Description : This page contains a menu, 
//               from this menu user can go to home page,
//               can edit his personal data and credentials
//               can view his personal data
//               can make a new appointment
//               can view appointments and results history
// <summary></summary>
// ***********************************************************************

using System.Windows;
using System.Windows.Controls;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for PatientPageContent.xaml
    /// </summary>
    public partial class PatientPageContent : CustomUserControl
    {
        private UserControl _patientCurrentPage;

        public PatientPageContent()
        {
            InitializeComponent();
            InitializeHomePage();
        }
        /// <summary>
        /// set current page content to home page
        /// </summary>
        private void InitializeHomePage()
        {
            _patientCurrentPage = new PatientHomePage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        /// <summary>
        /// handler for menuItemHome click, 
        /// set current page content to home page
        /// </summary>

        private void menuItemHome_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new PatientHomePage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        /// <summary>
        /// handler for menuItemEditPatient click, 
        /// set current page content to edit patient form
        /// </summary>
        private void menuItemEditPatient_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new EditPatientForm();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        /// <summary>
        /// handler for menuItemViewPatient click, 
        /// set current page content to the page of patient personal data
        /// </summary>
        private void menuItemViewPatient_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new PatientDetailsPage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        /// <summary>
        /// handler for  menuItemAppointmentHistory click, 
        /// set current page content to appointment history page
        /// </summary>
        private void menuItemAppointmentHistory_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new AppointmentHistoryPage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        /// <summary>
        /// handler for menuItemNewAppointment click, 
        /// set current page content to new appointment form
        /// </summary>
        private void menuItemNewAppointment_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new NewAppointmentForm();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        /// <summary>
        /// handler for menuItemResultHistory click, 
        /// set current page content to result history page
        /// </summary>
        private void menuItemResultHistory_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new ResultsHistoryPage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }
        /// <summary>
        /// handler for menuItemChangeCredentials click, 
        /// set current page content to change credentials form
        /// </summary>
        private void menuItemChangeCredentials_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new ChangeCredentialsForm();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }
    }
}