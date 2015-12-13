using System.Windows;
using DAO;
using Entity;
using DBConnNamespace;

namespace Clinic
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        PacientService pacientService;

        public MainWindow()
        {
            InitializeComponent();
            try
            {
                DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            }
            catch (System.Exception e)
            {
                MessageBox.Show(e.Message);
            }
            pacientService = new PacientService();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            Patient p = pacientService.GetById(100);
            MessageBox.Show(p.FirstName);
        }
    }
}
