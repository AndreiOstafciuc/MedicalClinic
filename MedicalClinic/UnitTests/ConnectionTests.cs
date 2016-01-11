using DBConnNamespace;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Oracle.ManagedDataAccess.Client;
using System;

namespace ConnectionTests
{
    [TestClass()]
    public class DBConnectionTests
    {
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
            try
            {
                DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            }
            catch (Exception)
            {
                try
                {
                    DBConnection.CreateConnection("localhost", "ORCL", "hr", "roxana");
                }
                catch (Exception e)
                {
                    throw e;
                }
            }

            Assert.IsNotNull(DBConnection.Connection);
            DBConnection.CloseConnection();
        }

        /// <summary>
        /// Exception expected when trying to close a non-opened connection
        /// </summary>
        [TestMethod()]
        [ExpectedException(typeof(NullReferenceException))]
        public void CloseConnectionTest()
        {
            DBConnection.CloseConnection();
        }

        /// <summary>
        /// Connection shall be closed w/o exceptions
        /// </summary>
        [TestMethod()]
        public void CloseConnectionTest2()
        {
            try
            {
                DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            }
            catch (Exception)
            {
                try
                {
                    DBConnection.CreateConnection("localhost", "ORCL", "hr", "roxana");
                }
                catch (Exception e)
                {
                    throw e;
                }
            }

            if (DBConnection.Connection == null)
            {
                throw new Exception("connection was not successfuly opened");
            }

            DBConnection.CloseConnection();

            Assert.IsNull(DBConnection.Connection);            
        }
    }
}