/*
* Author : Cosmanescu Roxana
* Description : The page contains all the results of the user
                Get all results from database using AppointmentService and ResultsService and the populate dataGridResults with the list returned
                If there are no results for this user, display a corresponding message
*/
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DAO;
using Entity;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for ResultsHistoryPage.xaml
    /// </summary>
    public partial class ResultsHistoryPage : UserControl
    {
        private ResultsService _resultService;
        private AppointmentService _appointmentService;

        public ResultsHistoryPage()
        {
            InitializeComponent();
            RetrieveResults();
        }

        /// <summary>
        /// get all appointments for the current user (represented by SessionData.UserSessionData.CurrentUserId) using AppointmentService,
        /// if the returned list is empty then show a specific message,
        /// otherwise for each appointment in the list find the corresponding results in the database using ResultsService,  
        /// it the list returned is not empty append this results to the final list of results,
        /// if the final list of results is empty the show a specific message, else set  dataGridResults.ItemsSource to this list
        /// </summary>
        private void RetrieveResults()
        {
            _resultService = new ResultsService();
            _appointmentService = new AppointmentService();
            List<Appointment> appointments = _appointmentService.FindAllByProperty(Utils.AppointmentTableProperties.IdPatient, SessionData.UserSessionData.CurrentUserId.ToString());
            List<Results> results = new List<Results>();
            if (appointments != null)
            {
                foreach (Appointment app in appointments)
                {
                    List<Results> partialResults = _resultService.FindAllByProperty(Utils.ResultsTableProperties.IdAppointment, app.Id.ToString());
                    if (partialResults != null)
                    {
                        results.AddRange(partialResults);
                    }
                }
                if (results.Count != 0)
                {
                    dataGridResults.Visibility = Visibility.Visible;
                    dataGridResults.ItemsSource = results;
                    dataGridResults.IsReadOnly = true;
                }
                else
                {
                    labelResultsMsg.Visibility = Visibility.Visible;
                }
            }
            else
            {
                labelResultsMsg.Visibility = Visibility.Visible;
            }
        }
    }
}