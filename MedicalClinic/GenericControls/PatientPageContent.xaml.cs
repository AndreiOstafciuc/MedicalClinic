/*
* Author : 
* Decription : 
*/

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
        private void InitializeHomePage()
        {
            _patientCurrentPage = new PatientHomePage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        private void menuItemHome_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new PatientHomePage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        private void menuItemEditPatient_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new EditPatientForm();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        private void menuItemViewPatient_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new PatientDetailsPage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        private void menuItemAppointmentHistory_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new AppointmentHistoryPage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        private void menuItemNewAppointment_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new NewAppointmentForm();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        private void menuItemResultHistory_Click(object sender, RoutedEventArgs e)
        {
            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new ResultsHistoryPage();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }

        private void menuItemChangeCredentials_Click(object sender, RoutedEventArgs e)
        {

            gridPacientPage.Children.Remove(_patientCurrentPage);
            _patientCurrentPage = new ChangeCredentialsForm();
            Grid.SetRow(_patientCurrentPage, 1);
            gridPacientPage.Children.Add(_patientCurrentPage);
        }
    }
}
