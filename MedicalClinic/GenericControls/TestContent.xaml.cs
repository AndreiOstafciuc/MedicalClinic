using DAO;
using DBConnNamespace;
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
    /// Interaction logic for MainContent.xaml
    /// </summary>
    public partial class TestContent : CustomUserControl
    {
        AdministratorService administratorService;
        AppointmentService appointmentService;
        DepartmentService departmentService;
        ResultsService resultsService;
        ScheduleService scheduleService;
        PatientService patientService;
        CredentialsService credentialsService;
        DoctorService doctorService;
        CleanupService cleanupService;
        public TestContent()
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
            administratorService = new AdministratorService();
            appointmentService = new AppointmentService();
            departmentService = new DepartmentService();
            resultsService = new ResultsService();
            scheduleService = new ScheduleService();
            patientService = new PatientService();
            credentialsService = new CredentialsService();
            doctorService = new DoctorService();
            cleanupService = new CleanupService();
        }
        private void button_Click(object sender, RoutedEventArgs e)
        {



            // ----------- testing phase

            //Insert as long as no constrait is violated

            try
            {
                Credentials c = credentialsService.validateCredentials("admin","pass");
               // cleanupService.CleanDatabase();
            }
            catch (System.Exception ee)
            {
                MessageBox.Show(ee.Message);
            }
            
            try
            {
                Random r = new Random(new Random().Next(789, 987));
                /*
                for (int pcnt = 298; pcnt < 500; pcnt ++)
                {
                    patientService.Save(new Patient(credentialsService.Save(
                            new Credentials("patient" + pcnt.ToString("D4") + "@gmail.com", Utils.Encrypter.getMD5(pcnt.ToString("D4")), Utils.UserTypes.PATIENT)
                        ), "Last Name "+ pcnt.ToString("D4"), "First Name "+ pcnt.ToString("D4"), "ins"+r.Next(100000000, 999999999).ToString(), 
                        "address#"+ pcnt.ToString("D4"), System.DateTime.Now, "genetic#"+ pcnt.ToString("D4"), r.Next(100000,999999).ToString()));
                }
                */
                /*
                for (int acnt = 0; acnt < 30; acnt++)
                {
                    administratorService.Save(new Administrator(credentialsService.Save(
                        new Credentials("admin" + acnt.ToString("D4") + "@gmail.com", Utils.Encrypter.getMD5(acnt.ToString("D4")), Utils.UserTypes.ADMIN)
                        ), "Admin First Name " + acnt.ToString("D4"), "Admin Last Name" + acnt.ToString("D4")));
                }
                */
                /*
                for (int deptcnt = 0; deptcnt < 13; deptcnt++)
                {
                    departmentService.Save(new Department("Department#"+deptcnt.ToString("D2"), "Description for Department nr." + deptcnt.ToString("D2"), r.Next(0,9)));
                }
                */
                /*
                for (int dcnt = 30; dcnt < 100; dcnt++)
                {
                    doctorService.Save(new Doctor(credentialsService.Save(
                        new Credentials("doc" + dcnt.ToString("D4") + "@gmail.com", Utils.Encrypter.getMD5(dcnt.ToString("D4")), Utils.UserTypes.DOCTOR)
                        ), "Doctor Last Name" + dcnt.ToString("D4"), "Doctor First Name " + dcnt.ToString("D4"), r.Next(330,342), r.Next(100000, 999999).ToString(), Utils.DoctorStatus.ACTIVE));
                }
                */
                /*
                int g = administratorService.Save(new Administrator(credentialsService.Save(new Credentials("admin@s.com", "password", 2)), "Admin test", "last name admin"));

                int f = patientService.Save(new Patient(credentialsService.Save(new Credentials("patient@s.com", "password", 1)), "Patient test", "first name test", "2301230232", "address test", new System.DateTime(), "genetic diseases", "0785858585"));


                int a = departmentService.Save(new Department("Cardiologie", "Departamentul de cardiologie", 1));
                int b = doctorService.Save(new Doctor(credentialsService.Save(new Credentials("doctor@s.com", "password", 2)), "Doctor test", "test d", departmentService.FindAll()[0].Id, "0785858585", 1));
                int c = appointmentService.Save(new Appointment(patientService.FindAll()[0].Id, doctorService.FindAll()[0].Id, 12, new System.DateTime(), "symptoms"));
                int d = resultsService.Save(new Results(appointmentService.FindAll()[0].Id, new System.DateTime(), "simptome test", "diagnostic test", "medicatie test"));
                int ee = scheduleService.Save(new Schedule(doctorService.FindAll()[0].Id, 2, 10, 18));


                // FindAllByProperty

                List<Administrator> al = administratorService.FindAllByProperty("id_admin", "5");
                List<Appointment> aal = appointmentService.FindAllByProperty("id_appointment", "5");
                List<Department> dl = departmentService.FindAllByProperty("id_dept", "5");
                List<Results> rl = resultsService.FindAllByProperty("id_result", "5");
                List<Schedule> sl = scheduleService.FindAllByProperty("id_schedule", "5");
                List<Patient> pl = patientService.FindAllByProperty("id_patient", "5");
                List<Credentials> cl = credentialsService.FindAllByProperty("id", "5");
                List<Doctor> ddl = doctorService.FindAllByProperty("id_doctor", "5");




                Administrator admin = administratorService.FindById(administratorService.FindAll()[0].Id);
                admin.LastName = "Changed Name";
                administratorService.Update(admin);


                Appointment appointment = appointmentService.FindById(appointmentService.FindAll()[0].Id);
                appointment.Symptoms = "Changed Symptoms";
                appointment.AppointmentDate = new System.DateTime(2016, 10, 10);
                appointmentService.Update(appointment);


                Department department = departmentService.FindById(departmentService.FindAll()[0].Id);
                department.Floor = 6;
                departmentService.Update(department);


                Results result = resultsService.FindById(resultsService.FindAll()[0].Id);
                result.Diagnosis = "Changed diagnosis";
                resultsService.Update(result);


                Schedule schedule = scheduleService.FindById(scheduleService.FindAll()[0].Id);
                schedule.Day = 4;
                scheduleService.Update(schedule);


                Patient patient = patientService.FindById(patientService.FindAll()[0].Id);
                patient.BirthDate = new System.DateTime(2016, 10, 10);
                patientService.Update(patient);


                Credentials credential = credentialsService.FindById(credentialsService.FindAll()[0].Id);
                credential.Password = "Changed pass";
                credentialsService.Update(credential);

                Doctor doctor = doctorService.FindById(doctorService.FindAll()[0].Id);
                doctor.PhoneNumber = "5555555555";
                doctorService.Update(doctor);
                */
            }
           
            catch (System.Exception ee)
            {
                MessageBox.Show(ee.Message);
                return;
            }

            textBox.Text = "Success !";
        }

        private void buttonBack_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }
    }
}
