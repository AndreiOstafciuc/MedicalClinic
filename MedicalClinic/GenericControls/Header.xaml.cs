﻿using System;
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
    }
}
