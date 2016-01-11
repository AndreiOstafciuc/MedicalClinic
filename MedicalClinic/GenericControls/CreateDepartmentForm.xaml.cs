/*
* Author : 
* Decription : 
*/

using DAO;
using System;
using System.Windows;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for CreateDepartmentForm.xaml
    /// </summary>
    public partial class CreateDepartmentForm : CustomUserControl
    {
        DepartmentService _departmentService;
        public CreateDepartmentForm()
        {
            InitializeComponent();
            _departmentService = new DepartmentService();
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
                        _departmentService.Save(new Entity.Department(dname, descr, floor));
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
