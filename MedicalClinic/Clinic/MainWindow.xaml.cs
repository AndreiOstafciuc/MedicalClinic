using System.Windows;
using System.Collections.Generic;
using UIViews;
using System;
using DBConnNamespace;

namespace Clinic
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        
        GenericUI mainUI;
        public MainWindow()
        {
            InitializeComponent();
            DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            mainUI = new MainUI();
           mainUI.OnMainWindowLayoutChange+= new GenericUI.ChangeMainWindowLayoutHandler(ChangeWindowLayout);
            mainUI.VerticalAlignment = VerticalAlignment.Stretch;
            pageContainer.Children.Add(mainUI);
        }
        private void ChangeWindowLayout(object sender,GenericControls.WindowLayoutEventArgs e)
        {
            switch(e.ArgWindowLayout)
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
