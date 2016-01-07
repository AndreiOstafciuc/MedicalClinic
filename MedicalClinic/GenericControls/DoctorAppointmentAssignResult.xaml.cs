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

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for DoctorAppointmentAssignResult.xaml
    /// </summary>
    public partial class DoctorAppointmentAssignResult : CustomUserControl
    {
        AppointmentService appointmentService;
        PatientService patientService;
        ResultsService resultsService;

        Appointment selectedAppointment;
        Patient selectedPatient;

        public DoctorAppointmentAssignResult(int appoitnmentId)
        {
            InitializeComponent();
            groupBox.Visibility = Visibility.Hidden;
            h_date.Visibility = Visibility.Hidden;
            h_diagnosis.Visibility = Visibility.Hidden;
            h_medication.Visibility = Visibility.Hidden;
            h_symptoms.Visibility = Visibility.Hidden;
            h_results.Visibility = Visibility.Hidden;
            appointmentService = new AppointmentService();
            patientService = new PatientService();
            resultsService = new ResultsService();
            
            selectedAppointment = appointmentService.FindById(appoitnmentId);
            selectedPatient = patientService.FindById(selectedAppointment.IdPacient);

            nameLabel.Content = selectedPatient.FirstName + " " + selectedPatient.LastName;
            insuranceNumberLabel.Content = selectedPatient.InsuranceNumber;
            geneticDisorderLabel.Content = selectedPatient.GeneticDiseases;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            String symptoms = textBox.Text;
            String medication = textBox_Copy1.Text;
            String diagnosis = textBox_Copy.Text;

            if(symptoms.Equals("") || medication.Equals("") || diagnosis.Equals(""))
            {
                MessageBox.Show("Inputs not valid !");
            }
            else
            {
                try
                {
                resultsService.Save(new Results(selectedAppointment.Id,DateTime.Now,symptoms,diagnosis,medication));
                MessageBox.Show("Result successfully asigned !");
                RaiseChangePageContentEvent(new DoctorAppointmentsPage());

                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong !\n"+ee.Data.ToString());
                }
            }
        }

        private void GoBack(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new DoctorAppointmentsPage());
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            List<Results> resultsHistory = resultsService.findAllResultsOfPatient(selectedPatient.Id);


            if (resultsHistory != null)
            {
                ComboBoxItem cbm = null;
                comboBox.Items.Clear();
                foreach (Results r in resultsHistory)
                {
                    cbm = new ComboBoxItem();
                    cbm.Content ="Result for appointment "+r.IdAppointment;
                    cbm.Tag = r.Id;
                    comboBox.Items.Add(cbm);
                }
                groupBox.Visibility = Visibility.Visible;
                h_date.Visibility = Visibility.Visible;
                h_diagnosis.Visibility = Visibility.Visible;
                h_medication.Visibility = Visibility.Visible;
                h_symptoms.Visibility = Visibility.Visible;
                h_results.Visibility = Visibility.Visible;
                comboBox.SelectedIndex = 0;
                dateHistoryLabel.Content = resultsHistory[0].ResultDate;
                symptomsHistoryLabel.Content = resultsHistory[0].Symptoms;
                diagnosisHistoryabel.Content = resultsHistory[0].Diagnosis;
                medicationHistoryLabel.Content = resultsHistory[0].Medication;
            }
            else
            {
                MessageBox.Show("No results history for this patient !");
            }

        }

        private void comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int selectedResultId = Convert.ToInt32(((ComboBoxItem)comboBox.SelectedItem).Tag.ToString());
            try
            {
                Results selectedResult = resultsService.FindById(selectedResultId);
                dateHistoryLabel.Content = selectedResult.ResultDate;
                symptomsHistoryLabel.Content = selectedResult.Symptoms;
                diagnosisHistoryabel.Content = selectedResult.Diagnosis;
                medicationHistoryLabel.Content = selectedResult.Medication;
            }
            catch (Exception ee)
            {
                MessageBox.Show("Something went wrong !\n"+ee.Data.ToString());
            }
        }
    }
}
