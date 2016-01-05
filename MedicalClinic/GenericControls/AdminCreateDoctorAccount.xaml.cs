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
using Utils;

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
            ComboBoxItem cbm;
            if (deptsList != null)
            {
                foreach (Department d in deptsList)
                {
                    cbm = new ComboBoxItem();
                    cbm.Content = d.Name;
                    cbm.Tag = d.Id;
                    departmentComboBox.Items.Add(cbm);
                }
            }
            foreach(KeyValuePair<int,string> status in DoctorStatus.doctorStatuses)
            {
                cbm = new ComboBoxItem();
                cbm.Content = status.Value;
                cbm.Tag = status.Key;
                statusComoBox.Items.Add(cbm);
            }
            
        }

        private void submitBtn_Click(object sender, RoutedEventArgs e)
        {
            String docEmail = emailTextBox.Text;
            String docPass = Encrypter.getMD5(passwordBox.Password);
            String docFName = firstnameTextBox.Text;
            String docLNaame = lastnameTextBox.Text;
            String docPhoneNumber = phonenumberTextBox.Text;

            int docDeptId = Convert.ToInt32(((ComboBoxItem)departmentComboBox.SelectedItem).Tag.ToString());
            int status = Convert.ToInt32(((ComboBoxItem)statusComoBox.SelectedItem).Tag.ToString());
            int docId = 0;
            int docIdlast = 0;
            try {
                docId = credentialsService.Save(new Credentials(docEmail, docPass, Utils.UserTypes.DOCTOR));
            } catch(Exception ee)
            {
                MessageBox.Show("Something went wrong ! \n"+ee.Data.ToString());
            }

            try
            {
                docIdlast=doctorService.Save(new Doctor(docId, docLNaame, docFName, docDeptId, docPhoneNumber, status));
            }
            catch (Exception ee)
            {
                MessageBox.Show("Something went wrong ! \n" + ee.Data.ToString());
                try
                {
                    credentialsService.delete(docId);
                }
                catch (Exception eee)
                {
                    MessageBox.Show("Something went wrong trying to fix errors ! \n" + eee.Data.ToString());
                }
            }
            if (docIdlast != 0)
            {
                MessageBox.Show("Account created !");
            }
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.ADMIN);
        }
    }

    public class ComboBoxPairs
    {
        public int _Key { get; set; }
        public string _Value { get; set; }

        public ComboBoxPairs(int _key, string _value)
        {
            _Key = _key;
            _Value = _value;
        }
    }
}
