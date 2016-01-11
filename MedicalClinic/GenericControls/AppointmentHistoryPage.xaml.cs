// ***********************************************************************
// Assembly         : GenericControls
// Author           :
//
// ***********************************************************************
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

        private void PopulateAppointmentsDataGrid()
        {
            _appointmentService = new AppointmentService();
            List<Appointment> appointmens = _appointmentService.FindAllByProperty(Utils.AppointmentTableProperties.IdPatient, SessionData.UserSessionData.CurrentUserId.ToString());
            if (appointmens != null)
            {
                dataGridAppointments.Visibility = Visibility.Visible;
                dataGridAppointments.ItemsSource = appointmens;
                dataGridAppointments.IsReadOnly = true;
            }
            else
            {
                labelAppointmentsMsg.Visibility = Visibility;
            }
        }
    }
}