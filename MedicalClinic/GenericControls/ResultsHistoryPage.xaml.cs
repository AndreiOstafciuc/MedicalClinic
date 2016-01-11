// ***********************************************************************
// Assembly         : GenericControls
// Author           :
//
// ***********************************************************************
// <copyright file="ResultsHistoryPage.xaml.cs" company="">
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

        private void RetrieveResults()
        {
            _resultService = new ResultsService();
            _appointmentService = new AppointmentService();
            List<Appointment> appointments = _appointmentService.FindAllByProperty("id_patient", SessionData.UserSessionData.CurrentUserId.ToString());
            List<Results> results = new List<Results>();
            if (appointments != null)
            {
                foreach (Appointment app in appointments)
                {
                    List<Results> partialResults = _resultService.FindAllByProperty("id_appointment", app.Id.ToString());
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