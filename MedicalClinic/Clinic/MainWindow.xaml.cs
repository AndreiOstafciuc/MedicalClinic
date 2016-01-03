﻿using System.Windows;
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

            try
            {
                administratorService.Save(new Administrator(credentialsService.Save(new Credentials(1, "admin@s.com", "password", 2)), "Admin test", "last name admin"));

                patientService.Save(new Patient(credentialsService.Save(new Credentials(5, "patient@s.com", "password", 1)), "Patient test", "first name test", "2301230232", "address test", new System.DateTime(), "genetic diseases", "0785858585"));


                departmentService.Save(new Department(1, "Cardiologie", "Departamentul de cardiologie", 1));
                doctorService.Save(new Doctor(credentialsService.Save(new Credentials(2, "doctor@s.com", "password", 2)), "Doctor test", "test d", 1, "0785858585", 1));
                appointmentService.Save(new Appointment(5, patientService.FindAll()[0].Id, doctorService.FindAll()[0].Id, 12, new System.DateTime(), "symptoms"));
                resultsService.Save(new Results(5, 5, new System.DateTime(), "simptome test", "diagnostic test", "medicatie test"));
                scheduleService.Save(new Schedule(5, doctorService.FindAll()[0].Id, 2, 10, 18));


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
            }
            catch (System.Exception ee)
            {
                MessageBox.Show(ee.Message);
            }

            textBox.Text = "Success !";

        }
    }
}
