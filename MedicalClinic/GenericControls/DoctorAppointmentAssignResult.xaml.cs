// ***********************************************************************
// Assembly         : GenericControls
// Author           : Andrei Ostafciuc
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DAO;
using Entity;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for DoctorAppointmentAssignResult.xaml
    /// </summary>
    public partial class DoctorAppointmentAssignResult : CustomUserControl
    {
        private AppointmentService _appointmentService;
        private PatientService _patientService;
        private ResultsService _resultsService;

        private Appointment _selectedAppointment;
        private Patient _selectedPatient;


        public DoctorAppointmentAssignResult(int appoitnmentId)
        {
            InitializeComponent();
            groupBox.Visibility = Visibility.Hidden;
            h_date.Visibility = Visibility.Hidden;
            h_diagnosis.Visibility = Visibility.Hidden;
            h_medication.Visibility = Visibility.Hidden;
            h_symptoms.Visibility = Visibility.Hidden;
            h_results.Visibility = Visibility.Hidden;
            _appointmentService = new AppointmentService();
            _patientService = new PatientService();
            _resultsService = new ResultsService();

            _selectedAppointment = _appointmentService.FindById(appoitnmentId);
            _selectedPatient = _patientService.FindById(_selectedAppointment.IdPacient);

            nameLabel.Content = _selectedPatient.FirstName + " " + _selectedPatient.LastName;
            insuranceNumberLabel.Content = _selectedPatient.InsuranceNumber;
            geneticDisorderLabel.Content = _selectedPatient.GeneticDiseases;
        }

        /// <summary>
        /// Assigns a result to an appointment
        /// </summary>
        private void button_Click(object sender, RoutedEventArgs e)
        {
            String symptoms = textBoxSymptoms.Text;
            String medication = textBoxMedication.Text;
            String diagnosis = textBoxDiagnosis.Text;

            if (String.IsNullOrEmpty(symptoms) || String.IsNullOrEmpty(medication) || String.IsNullOrEmpty(diagnosis))
            {
                MessageBox.Show("Inputs not valid !");
            }
            else
            {
                try
                {
                    _resultsService.Save(new Results(_selectedAppointment.Id, DateTime.Now, symptoms, diagnosis, medication));
                    MessageBox.Show("Result successfully asigned !");
                    RaiseChangePageContentEvent(new DoctorAppointmentsPage());
                }
                catch (Exception ee)
                {
                    MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
                }
            }
        }

        /// <summary>
        /// Goes back to previous page
        /// </summary>
        private void GoBack(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new DoctorAppointmentsPage());
        }

        /// <summary>
        /// Gets the result history for the patient and makes visible, the comboboxes and label for that patient
        /// </summary>
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            List<Results> resultsHistory = _resultsService.FindAllResultsOfPatient(_selectedPatient.Id);

            if (resultsHistory != null)
            {
                ComboBoxItem cbm = null;
                comboBoxResults.Items.Clear();
                foreach (Results r in resultsHistory)
                {
                    cbm = new ComboBoxItem();
                    cbm.Content = "Result for appointment " + r.IdAppointment;
                    cbm.Tag = r.Id;
                    comboBoxResults.Items.Add(cbm);
                }
                groupBox.Visibility = Visibility.Visible;
                h_date.Visibility = Visibility.Visible;
                h_diagnosis.Visibility = Visibility.Visible;
                h_medication.Visibility = Visibility.Visible;
                h_symptoms.Visibility = Visibility.Visible;
                h_results.Visibility = Visibility.Visible;
                comboBoxResults.SelectedIndex = 0;
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

        /// <summary>
        /// Changes the labels content according to the selection made
        /// </summary>
        private void comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int selectedResultId = Convert.ToInt32(((ComboBoxItem)comboBoxResults.SelectedItem).Tag.ToString());
            try
            {
                Results selectedResult = _resultsService.FindById(selectedResultId);
                dateHistoryLabel.Content = selectedResult.ResultDate;
                symptomsHistoryLabel.Content = selectedResult.Symptoms;
                diagnosisHistoryabel.Content = selectedResult.Diagnosis;
                medicationHistoryLabel.Content = selectedResult.Medication;
            }
            catch (Exception ee)
            {
                MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
            }
        }
    }
}