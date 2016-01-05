using DAO;
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
    /// Interaction logic for CreateDepartmentForm.xaml
    /// </summary>
    public partial class CreateDepartmentForm : CustomUserControl
    {
        DepartmentService departmentService;
        public CreateDepartmentForm()
        {
            InitializeComponent();
            departmentService = new DepartmentService();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangePageContentEvent(new AdminPageContent());
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            String dname = nameLabel.Text;
            String descr = descriptionLabel.Text;
            String sFloor = floorLabel.Text;
            int floor = 0;
            if (dname.Equals("") || descr.Equals("") || sFloor.Equals(""))
            {
                MessageBox.Show("Invalid inputs !");
            }
            else
            {
                try
                {
                    floor = Convert.ToInt32(sFloor);
                    try
                    {
                        departmentService.Save(new Entity.Department(dname,descr,floor));
                        MessageBox.Show("Department created !");
                        RaiseChangePageContentEvent(new AdminPageContent());
                    }
                    catch (Exception ee)
                    {
                        MessageBox.Show("Something went wrong !\n" + ee.Data.ToString());
                    }
                }
                catch (Exception)
                {
                    MessageBox.Show("Floor is not integer !");
                }
            }
        }
    }
}
