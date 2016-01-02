using System.Windows;
using DAO;
using Entity;
using DBConnNamespace;
using System.Collections.Generic;

namespace Clinic
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        AdministratorService administratorService;
        AppointmentService appointmentService;
        DepartmentService departmentService;
        ResultsService resultsService;
        ScheduleService scheduleService;
        PatientService patientService;
        CredentialsService credentialsService;
        DoctorService doctorService;

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
            administratorService = new AdministratorService();
            appointmentService = new AppointmentService();
            departmentService = new DepartmentService();
            resultsService = new ResultsService();
            scheduleService = new ScheduleService();
            patientService = new PatientService();
            credentialsService = new CredentialsService();
            doctorService = new DoctorService();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {



            // ----------- testing phase

            //Insert as long as no constrait is violated
            
            credentialsService.Save(new Credentials(5, "serviceTest@s.com", "password", 2));
            administratorService.Save(new Administrator(5, "Admin test", "last name admin"));
            patientService.Save(new Patient(5, "Patient test", "first name test", "2301230232", "address test", new System.DateTime(), "genetic diseases", "0785858585"));
            departmentService.Save(new Department(5, "Cardiologie", "Departamentul de cardiologie", 1));
            doctorService.Save(new Doctor(5, "Doctor test", "test d", 5, "0785858585", 1));
            appointmentService.Save(new Appointment(5, 5, 5, 12, new System.DateTime()));
            resultsService.Save(new Results(5, 5, new System.DateTime(), "simptome test", "diagnostic test", "medicatie test"));
            scheduleService.Save(new Schedule(5, 5, 2, 10, 18));
            

            // FindAllByProperty

            List<Administrator> al = administratorService.FindAllByProperty("id_admin", "5");
            List<Appointment> aal = appointmentService.FindAllByProperty("id_appointment", "5");
            List<Department> dl = departmentService.FindAllByProperty("id_dept", "5");
            List<Results> rl = resultsService.FindAllByProperty("id_result", "5");
            List<Schedule> sl = scheduleService.FindAllByProperty("id_schedule", "5");
            List<Patient> pl = patientService.FindAllByProperty("id_patient", "5");
            List<Credentials> cl = credentialsService.FindAllByProperty("id", "5");
            List<Doctor> ddl = doctorService.FindAllByProperty("id_doctor", "5");




            Administrator admin = administratorService.FindById(5);
            admin.LastName = "Changed Name";
            administratorService.Update(admin);


            Appointment appointment = appointmentService.FindById(5);
            appointment.Symptoms = "Changed Symptoms";
            appointment.AppointmentDate = new System.DateTime(2016, 10, 10);
            appointmentService.Update(appointment);


            Department department = departmentService.FindById(5);
            department.Floor = 6;
            departmentService.Update(department);


            Results result = resultsService.FindById(5);
            result.Diagnosis = "Changed diagnosis";
            resultsService.Update(result);


            Schedule schedule = scheduleService.FindById(5);
            schedule.Day = 4;
            scheduleService.Update(schedule);


            Patient patient = patientService.FindById(5);
            patient.BirthDate = new System.DateTime(2016, 10, 10);
            patientService.Update(patient);


            Credentials credential = credentialsService.FindById(5);
            credential.Password = "Changed pass";
            credentialsService.Update(credential);

            Doctor doctor = doctorService.FindById(5);
            doctor.PhoneNumber = "5555555555";
            doctorService.Update(doctor);

            MessageBox.Show("Success !");

        }
    }
}
