// ***********************************************************************
// Author : Cosmanescu Roxana
// Description : The page contains all the appointments of the user
//                Get all appointments from database using AppointmentService and the populate dataGridAppointments with the list returned
//              If there are no appointments for this user, display a corresponding message
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
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
    /// Interaction logic for AppointmentHistoryPage.xaml
    /// </summary>
    public partial class AppointmentHistoryPage : UserControl
    {
        private AppointmentService _appointmentService;

        public AppointmentHistoryPage()
        {
            InitializeComponent();
            PopulateAppointmentsDataGrid();
        }

        /// <summary>
        /// get all appointments for the current user (represented by SessionData.UserSessionData.CurrentUserId) using AppointmentService,
        /// if the returned list is empty then show a specific message
        /// otherwise set  dataGridAppointments ItemsSource to this list
        /// </summary>
        private void PopulateAppointmentsDataGrid()
        {
            _appointmentService = new AppointmentService();
            List<Appointment> appointments = _appointmentService.FindAllByProperty(Utils.AppointmentTableProperties.IdPatient, SessionData.UserSessionData.CurrentUserId.ToString());
            if (appointments != null)
            {
                dataGridAppointments.Visibility = Visibility.Visible;
                dataGridAppointments.ItemsSource = appointments;
                dataGridAppointments.IsReadOnly = true;
            }
            else
            {
                labelAppointmentsMsg.Visibility = Visibility;
            }
        }
    }
}