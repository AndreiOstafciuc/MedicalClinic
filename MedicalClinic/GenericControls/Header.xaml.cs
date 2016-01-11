// ***********************************************************************
* Author : Cosmanescu Roxana, Ostafciuc Andrei
* Description : The header of the page containing application logo and the help button
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System;
using System.Windows;
using System.Windows.Media.Imaging;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for Header.xaml
    /// </summary>
    public partial class Header : CustomUserControl
    {
        public Header()
        {
            InitializeComponent();
            SetHelpImage();
        }
        /// <summary>
        /// Get image for help button from resources and set the source
        /// </summary>
        private void SetHelpImage()
        {
            BitmapImage bmpHelp = new BitmapImage();
            bmpHelp.BeginInit();
            bmpHelp.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/help.png");
            bmpHelp.EndInit();
            imageBtnHelp.Source = bmpHelp;
        }

        /// <summary>
        ///Handler for helpButton click event, 
        ///open generic help
        /// </summary>
        private void helpButton_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start(System.IO.Path.GetDirectoryName(System.IO.Path.GetDirectoryName(System.IO.Directory.GetCurrentDirectory())) + "\\Resources\\helps\\GenericHelp.chm");
        }
    }
}