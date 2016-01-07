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
            List<Appointment> appointmens = _appointmentService.FindAllByProperty("id_patient",SessionData.UserSessionData.CurrentUserId.ToString());
            if(appointmens!=null)
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
