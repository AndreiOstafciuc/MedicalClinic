using DAO;
using DBConnNamespace;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Entity;
using System;
using System.Collections.Generic;

namespace DAOTests
{
    [TestClass()]
    public class ServicesTests
    {
        Random r = new Random(new Random().Next(1024, 2048000));

        CredentialsService credentialsService;
        AdministratorService administratorService;
        PatientService patientService;
        DoctorService doctorService;
        DepartmentService departmentService;
        AppointmentService appointmentService;
        ResultsService resultService;
        ScheduleService scheduleService;

        private string genString(int len = 9)
        {
            List<char> chars = new List<char>();
            chars.Add((char)r.Next(65, 90));
            for (int i = 0; i < len; i++)
            {
                chars.Add((char)r.Next(97, 122));
            }
            return new string(chars.ToArray());
        }

        private void OpenConnection()
        {
            try
            {
                DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            }
            catch (Exception)
            {
                DBConnection.CreateConnection("localhost", "ORCL", "hr", "roxana");
            }

            credentialsService = new CredentialsService();
            administratorService = new AdministratorService();
            patientService = new PatientService();
            doctorService = new DoctorService();
            departmentService = new DepartmentService();
            appointmentService = new AppointmentService();
            resultService = new ResultsService();
            scheduleService = new ScheduleService();
        }

        private void CloseConnection()
        {
            DBConnection.CloseConnection();
        }

        /// <summary>
        /// Testing the admin "insert" into database function
        /// expected a valid user id of the last saved entry
        /// </summary>
        [TestMethod()]
        public void AdminSaveTest()
        {
            string lastName = genString(r.Next(4, 9));
            string firstName = genString(r.Next(4, 9));

            OpenConnection();

            Credentials c = new Credentials(lastName + firstName + "@testAdmin.com", Utils.Encrypter.getMD5("0000"), Utils.UserTypes.ADMIN);
            Administrator a = new Administrator(credentialsService.Save(c), firstName, lastName);
            administratorService.Save(a);

            Assert.IsNotNull(administratorService.FindAllByProperty(Utils.AdminTableProperties.LastName, a.LastName));

            CloseConnection();
        }

        /// <summary>
        /// database change properties to existing admin
        /// </summary>
        [TestMethod()]
        public void AdminUpdateTest()
        {
            string lastName = genString(r.Next(4, 9));
            string firstName = genString(r.Next(4, 9));

            OpenConnection();

            Credentials c = new Credentials(lastName + firstName + "@testAdmin.com", Utils.Encrypter.getMD5("0000"), Utils.UserTypes.ADMIN);
            Administrator a = new Administrator(credentialsService.Save(c), firstName, lastName);
            administratorService.Save(a);
            a.LastName = "Newman fon "+lastName;
            administratorService.Update(a);

            Assert.IsNotNull(administratorService.FindAllByProperty(Utils.AdminTableProperties.LastName, a.LastName));

            CloseConnection();
        }

        /// <summary>
        /// Testing the patient "insert" into database function
        /// expected a valid user id of the last saved entry
        /// </summary>
        [TestMethod()]
        public void PatientSaveTest()
        {
            string lastName = genString(r.Next(4, 9));
            string firstName = genString(r.Next(4, 9));

            OpenConnection();

            Credentials c = new Credentials(lastName + firstName + "@testPatient.com", Utils.Encrypter.getMD5("0000"), Utils.UserTypes.PATIENT);
            Patient p = new Patient(credentialsService.Save(c), lastName, firstName, "instsav363", "address", System.DateTime.Now, "geneticsDis", "54468413");
            patientService.Save(p);

            Assert.IsNotNull(patientService.FindAllByProperty(Utils.PatientTableProperties.LastName, p.LastName));

            CloseConnection();
        }

        /// <summary>
        /// database change properties to existing patient
        /// </summary>
        [TestMethod()]
        public void PatientUpdateTest()
        {
            string lastName = genString(r.Next(4, 9));
            string firstName = genString(r.Next(4, 9));

            OpenConnection();

            Credentials c = new Credentials(lastName + firstName + "@testPatient.com", Utils.Encrypter.getMD5("0000"), Utils.UserTypes.PATIENT);
            Patient p = new Patient(credentialsService.Save(c), lastName, firstName, "instsav363", "address", System.DateTime.Now, "geneticsDis", "54468413");
            patientService.Save(p);
            p.GeneticDiseases = "new genetics";
            patientService.Update(p);
            
            Assert.IsNotNull(patientService.FindAllByProperty(Utils.PatientTableProperties.GeneticDisorder, p.GeneticDiseases));

            CloseConnection();
        }

        /// <summary>
        /// Testing the doctor "insert" into database function
        /// expected a valid user id of the last saved entry
        /// </summary>
        [TestMethod()]
        public void DoctorSaveTest()
        {
            string lastName = genString(r.Next(4, 9));
            string firstName = genString(r.Next(4, 9));

            OpenConnection();

            Credentials c = new Credentials(lastName + firstName + "@testDoc.com", Utils.Encrypter.getMD5("0000"), Utils.UserTypes.DOCTOR);
            Doctor d = new Doctor(credentialsService.Save(c), lastName, firstName, departmentService.FindAll()[0].Id, "85643213", Utils.DoctorStatus.ACTIVE);
            doctorService.Save(d);

            Assert.IsNotNull(doctorService.FindAllByProperty(Utils.DoctorTableProperties.LastName, d.LastName));

            CloseConnection();
        }

        /// <summary>
        /// database change properties to existing doctor
        /// </summary>
        [TestMethod()]
        public void DoctorUpdateTest()
        {
            string lastName = genString(r.Next(4, 9));
            string firstName = genString(r.Next(4, 9));

            OpenConnection();

            Credentials c = new Credentials(lastName + firstName + "@testDoc.com", Utils.Encrypter.getMD5("0000"), Utils.UserTypes.DOCTOR);
            Doctor d = new Doctor(credentialsService.Save(c), lastName, firstName, departmentService.FindAll()[0].Id, "85643213", Utils.DoctorStatus.ACTIVE);
            doctorService.Save(d);
            d.LastName = "Newman fon " + lastName;
            doctorService.Update(d);

            Assert.IsNotNull(doctorService.FindAllByProperty(Utils.DoctorTableProperties.LastName, d.LastName));

            CloseConnection();
        }

        /// <summary>
        /// Testing the department "insert" into database function
        /// </summary>
        [TestMethod()]
        public void DepartmentSaveTest()
        {
            string name = genString(r.Next(4, 9));
            string description = genString(r.Next(15, 20));

            OpenConnection();

            Department d = new Department(name, "This is a Unit Test Created" + description, r.Next(0,9));

            Assert.IsInstanceOfType(departmentService.Save(d), typeof(int));

            CloseConnection();
        }

        /// <summary>
        /// database change properties to existing department
        /// </summary>
        [TestMethod()]
        public void DepartmentUpdateTest()
        {
            string name = genString(r.Next(4, 9));
            string description = genString(r.Next(15, 20));

            OpenConnection();

            Department d = new Department(name, "This is a Unit Test Created" + description, r.Next(0, 9));
            departmentService.Save(d);
            d.Name = "New " + genString(r.Next(4, 9));
            departmentService.Update(d);

            Assert.IsNotNull(departmentService.FindAllByProperty(Utils.DepartmentTableProperties.Name, d.Name));

            CloseConnection();
        }

        /// <summary>
        /// Testing the appointment "insert" into database function
        /// NOTE : the database must contain at least one doctor and one patient
        /// </summary>
        [TestMethod()]
        public void AppointmentSaveTest()
        {
            string description = genString(r.Next(15, 20));

            OpenConnection();

            Appointment a = new Appointment(patientService.FindAll()[0].Id, doctorService.FindAll()[0].Id, r.Next(8, 18), DateTime.Now, description);
            
            Assert.IsInstanceOfType(appointmentService.Save(a), typeof(int));

            CloseConnection();
        }

        /// <summary>
        /// Testing the schedule "insert" into database function
        /// NOTE : the database must contain at least one active doctor
        /// </summary>
        [TestMethod()]
        public void ScheduleSaveTest()
        {
            OpenConnection();

            Schedule s = new Schedule(doctorService.FindAll()[0].Id, r.Next(0,6), r.Next(8,11), r.Next(14,18));

            Assert.IsInstanceOfType(scheduleService.Save(s), typeof(int));

            CloseConnection();
        }

        /// <summary>
        /// Testing the result "insert" into database function
        /// NOTE : the database must contain at least one appointment
        /// </summary>
        [TestMethod()]
        public void ResultSaveTest()
        {
            string symptoms = genString(r.Next(9, 15));
            string diagnosis = genString(r.Next(9, 15));
            string medication = genString(r.Next(9, 15));

            OpenConnection();

            Results res = new Results(appointmentService.FindAll()[0].Id, DateTime.Now, symptoms, diagnosis, medication);

            Assert.IsInstanceOfType(resultService.Save(res), typeof(int));

            CloseConnection();
        }

        /// <summary>
        /// NOTE : the datebase must have the root admin
        /// </summary>
        [TestMethod()]
        public void CredentialsFindByPropertyTest()
        {
            OpenConnection();

            Assert.IsNotNull(credentialsService.FindAllByProperty(Utils.CredentialTableProperties.Email, "admin"));
            
            CloseConnection();
        }
        
        [TestMethod()]
        public void AdminsFindAllTest()
        {
            OpenConnection();

            administratorService.FindAll();

            CloseConnection();
        }

        [TestMethod()]
        public void DoctorsFindAllTest()
        {
            OpenConnection();

            doctorService.FindAll();

            CloseConnection();
        }

        [TestMethod()]
        public void PatientsFindAllTest()
        {
            OpenConnection();

            patientService.FindAll();

            CloseConnection();
        }

        [TestMethod()]
        public void DepartmentsFindAllTest()
        {
            OpenConnection();

            departmentService.FindAll();

            CloseConnection();
        }

        [TestMethod()]
        public void AppointmentsFindAllTest()
        {
            OpenConnection();

            appointmentService.FindAll();

            CloseConnection();
        }

        [TestMethod()]
        public void SchedulesFindAllTest()
        {
            OpenConnection();

            scheduleService.FindAll();

            CloseConnection();
        }

        [TestMethod()]
        public void ResultsFindAllTest()
        {
            OpenConnection();

            resultService.FindAll();

            CloseConnection();
        }
    }
}