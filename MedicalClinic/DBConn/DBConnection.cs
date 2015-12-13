using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBConnNamespace
{
    public class DBConnection
    {
        private static OracleConnection _conn;

        public static OracleConnection Connection
        {
            get { return DBConnection._conn; }
        }
       public static void CreateConnection(String ip, String serviceName, String user, String password)
       {
            _conn = new OracleConnection();
            _conn.ConnectionString = "Data Source=" + ip + ":1521/" + serviceName + "; User Id=" + user + ";Password=" + password + ";";
            _conn.Open();            
        }
    }
}
