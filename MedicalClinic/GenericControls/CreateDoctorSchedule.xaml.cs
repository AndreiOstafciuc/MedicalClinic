using DAO;
using System;
using System.Windows;
using System.Windows.Controls;

// ***********************************************************************
// Assembly         : GenericControls
// Author           : Andrei Ostafciuc
//
// ***********************************************************************
// <copyright file="CreateDoctorSchedule.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************


namespace GenericControls
{
    /// <summary>
    /// Interaction logic for CreateDoctorSchedule.xaml
    /// </summary>
    public partial class CreateDoctorSchedule : CustomUserControl
    {
        ScheduleService scheduleService;
        public CreateDoctorSchedule()
        {
            InitializeComponent();
            scheduleService = new ScheduleService();
            ComboBoxItem cbm = null;
            dayOfWeekCombo.Items.Clear();
            for(int i=0; i<7; i++)
            {
                cbm = new ComboBoxItem();
                cbm.Content = (DayOfWeek)(i);
                cbm.Tag = i;
                dayOfWeekCombo.Items.Add(cbm);
            }
        }

        /// <summary>
        /// Submits form data to database
        /// </summary>
        private void buttonSubmit_Click(object sender, RoutedEventArgs e)
        {
            String startHour = startHourTextBox.Text;
            String endHour = endHourTextBox.Text;
            int dayOfWeek = Convert.ToInt32(((ComboBoxItem)dayOfWeekCombo.SelectedItem).Tag);
            if (startHour.Equals("") || endHour.Equals(""))
            {
                MessageBox.Show("Invalid inputs !");
            }
            else
            {
                int parsedStartHour=0;
                int parsedEndHour=0;
                try
                {
                    parsedStartHour = Convert.ToInt32(startHour);
                    parsedEndHour = Convert.ToInt32(endHour);
                }catch(Exception)
                {
                    MessageBox.Show("Invalid numbers");
                }
                if(parsedEndHour!=0 && parsedStartHour != 0)
                {
                    try
                    {
                        scheduleService.Save(new Entity.Schedule(SessionData.UserSessionData.CurrentUserId, dayOfWeek, parsedStartHour,parsedEndHour));
                        MessageBox.Show("Schedule created !");
                        RaiseChangePageContentEvent(new DoctorAppointmentsPage());
                    } catch(Exception ee)
                    {
                        MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
                    }
                }
            }
        }
    }
}
