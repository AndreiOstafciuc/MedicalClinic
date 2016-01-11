/*
* Author : 
* Decription : 
*/

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
        private void SetHelpImage()
        {
            BitmapImage bmpHelp = new BitmapImage();
            bmpHelp.BeginInit();
            bmpHelp.UriSource = new Uri("pack://application:,,,/Clinic;component/Resources/help.png");
            bmpHelp.EndInit();
            imageBtnHelp.Source = bmpHelp;
        }

        private void helpButton_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start(System.IO.Path.GetDirectoryName(System.IO.Path.GetDirectoryName(System.IO.Directory.GetCurrentDirectory())) + "\\Resources\\helps\\GenericHelp.chm");
        }
    }
}
