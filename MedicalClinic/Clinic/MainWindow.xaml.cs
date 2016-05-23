// ***********************************************************************
// Assembly         : Clinic
// Author           : Andrei Ostafciuc, Marius Bordeian
//
// ***********************************************************************
// <copyright file="MainWindow.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DBConnNamespace;
using System;
using System.Windows;
using UIViews;

namespace Clinic
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private GenericUI mainUI;

        public MainWindow()
        {
            InitializeComponent();
            try
            {
                DBConnection.CreateConnection("localhost", "orcl", "hr", "hr");
            }
            catch (Exception)
            {
                try
                {
                    DBConnection.CreateConnection("localhost", "ORCL", "hr", "roxana");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    Environment.Exit(1);
                }
            }
            mainUI = new MainUI();
            mainUI.OnMainWindowLayoutChange += new GenericUI.ChangeMainWindowLayoutHandler(ChangeWindowLayout);
            mainUI.VerticalAlignment = VerticalAlignment.Stretch;
            pageContainer.Children.Add(mainUI);
        }

        private void ChangeWindowLayout(object sender, GenericControls.WindowLayoutEventArgs e)
        {
            switch (e.ArgWindowLayout)
            {

                case Utils.UserTypes.DOCTOR:
                    mainUI = new DoctorUI();
                    break;

                case Utils.UserTypes.ADMIN:
                    mainUI = new AdminUI();
                    break;

                case Utils.UserTypes.PATIENT:
                    mainUI = new PatientUI();
                    break;

                default:
                    mainUI = new MainUI();
                    break;
            }
            mainUI.OnMainWindowLayoutChange += new GenericUI.ChangeMainWindowLayoutHandler(ChangeWindowLayout);
            mainUI.VerticalAlignment = VerticalAlignment.Stretch;
            pageContainer.Children.RemoveAt(0);
            pageContainer.Children.Add(mainUI);
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            DBConnection.CloseConnection();
        }
    }
}