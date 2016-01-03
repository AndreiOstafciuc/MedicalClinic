using DBConnNamespace;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Oracle.ManagedDataAccess.Client;

namespace MedicalClinicTests
{
    [TestClass()]
    public class DBConnectionTests
    {
        public static OracleConnection Connection = null;

        /// <summary>
        /// Exception expected when connection params are not valid
        /// </summary>
        [TestMethod()]
        [ExpectedException(typeof(OracleException))]
        public void CreateConnectionTest()
        {
            DBConnection.CreateConnection("localhost", "abc", "hr", "hr");
        }

        /// <summary>
        /// A valid (notNull) Connection shuold be created on correct params
        /// </summary>
        [TestMethod()]
        public void CreateConnectionTest2()
        {
            DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            Connection = DBConnection.Connection;
            Assert.IsNotNull(DBConnection.Connection);
        }
    }
}