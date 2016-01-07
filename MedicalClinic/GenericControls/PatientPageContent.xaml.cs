using DAO;
using Entity;
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
using static System.Net.Mime.MediaTypeNames;

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
