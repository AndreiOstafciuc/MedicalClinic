using DAO;
using Entity;
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
    /// Interaction logic for AdminCreateDoctorAccount.xaml
    /// </summary>
    public partial class AdminCreateDoctorAccount : CustomUserControl
    {
        DepartmentService departmentService;
        CredentialsService credentialsService;
        DoctorService doctorService;

        List<Department> deptsList;
        List<String> statusList;
        public AdminCreateDoctorAccount()
        {
            InitializeComponent();
            initializeComboBoxes();
        }
        public void initializeComboBoxes()
        {
            departmentService = new DepartmentService();
            credentialsService = new CredentialsService();
            doctorService = new DoctorService();

            deptsList = departmentService.FindAll();
            statusList = new List<string>() { "active", "inactive" };
            foreach(Department d in deptsList)
            {
                departmentComboBox.Items.Add(d.Name);
            }
            // inlocuit cu o lista din utils
            ComboBoxItem item = new ComboBoxItem();
            //item.SetValue = 1;
            //item.Tag=
            //statusComoBox.Items.Add()
            statusComoBox.Items.Add("inactive");
            statusComoBox.Items.Add("active");
        }

        private void submitBtn_Click(object sender, RoutedEventArgs e)
        {
            String docEmail = emailTextBox.Text;
            String docPass = passwordBox.Password;
            String docFName = firstnameTextBox.Text;
            String docLNaame = lastnameTextBox.Text;
            String docPhoneNumber = phonenumberTextBox.Text;
            int docDeptId = deptsList[departmentComboBox.SelectedIndex].Id;
            int status = statusComoBox.SelectedIndex;
            doctorService.Save(new Doctor(credentialsService.Save(new Credentials(docEmail, docPass, Utils.UserTypes.DOCTOR)),docLNaame,docFName,docDeptId,docPhoneNumber,status));
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.ADMIN);
        }
    }
}
