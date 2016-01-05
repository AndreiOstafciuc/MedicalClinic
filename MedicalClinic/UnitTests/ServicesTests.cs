using DAO;
using DBConnNamespace;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Entity;
using System;

namespace DAOTests
{
    [TestClass()]
    public class ServicesTests
    {
        CredentialsService credentialsService;
        AdministratorService administratorService;
        PatientService patientService;
        AppointmentService appointmentService;


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
            appointmentService = new AppointmentService();
        }

        /// <summary>
        /// Testing the "insert" into database function
        /// expected a valid user id of the last saved entry
        /// </summary>
        [TestMethod()]
        public void SaveAdminTest()
        {
            OpenConnection();
            Assert.IsInstanceOfType(administratorService.Save(new Administrator(credentialsService.Save(new Credentials("admin" + (new Random().Next()) + "@test.com", "testPassword", Utils.UserTypes.ADMIN)), "TestFirstName", "TestLastName")), typeof(int));
        }

        /// <summary>
        /// database change properties to existing patient
        /// </summary>
        [TestMethod()]
        public void UpdatePatientTest()
        {
            OpenConnection();
            Credentials c = new Credentials("patient"+(new Random().Next())+"@test.com", "passwordTest", Utils.UserTypes.PATIENT);
            Patient p = new Patient(credentialsService.Save(c), "lastNameTT", "WhateverF", "instsav363", "address", System.DateTime.Now, "geneticsDis", "54468413");
            patientService.Save(p);
            p.GeneticDiseases = "new genetics";
            patientService.Update(p);
        }
        
        /// <summary>
        /// fail on empty table content from db
        /// </summary>
        [TestMethod()]
        public void FindAllTest()
        {
            OpenConnection();
            Assert.IsNotNull(appointmentService.FindAll());
        }
    }
}