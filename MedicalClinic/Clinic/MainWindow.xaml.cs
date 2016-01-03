using System.Windows;
using DAO;
using Entity;
using DBConnNamespace;
using System.Collections.Generic;
using UIViews;

namespace Clinic
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        

        public MainWindow()
        {
            InitializeComponent();
            var doctorUI = new DoctorUI();
            doctorUI.VerticalAlignment = VerticalAlignment.Stretch;
            pageContainer.Children.Add(doctorUI);
            
        }
  
    }
}
