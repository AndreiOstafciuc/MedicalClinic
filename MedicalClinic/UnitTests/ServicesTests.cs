using DAO;
using DBConnNamespace;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Entity;

namespace DAOTests
{
    [TestClass()]
    public class ServicesTests
    {
        CredentialsService credentialsService = null;
        AdministratorService administratorService = null;

        /// <summary>
        /// Testing the "insert" into database function
        /// expected a valid user id of the last saved entry
        /// </summary>
        [TestMethod()]
        public void SaveAdminTest()
        {
            OpenConnection();
            Assert.IsInstanceOfType(administratorService.Save(new Administrator(credentialsService.Save(new Credentials("admin@test.com", "testPassword", Utils.UserTypes.ADMIN)), "TestFirstName", "TestLastName")), typeof(int));
        }

        private void OpenConnection()
        {
            DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            credentialsService = new CredentialsService();
            administratorService = new AdministratorService();
        }
    }
}