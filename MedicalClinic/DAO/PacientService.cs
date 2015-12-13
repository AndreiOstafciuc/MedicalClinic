using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using DAO;
using DBConnNamespace;
using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace DAO
{
    public class PacientService : DAO<Patient>
    {
       
        public PacientService() : base()
        {
            
        }

        public override void Save(Patient pacient)
        {
            
        }

        public override void Update(Patient pacient)
        {
        }

        public override Patient GetById(int id)
        {
            Patient p = new Patient();

            string sql = " select last_name, first_name from employees where employee_id = "+id; // C#

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            _dataReader = _command.ExecuteReader(); 
            _dataReader.Read();
            p.FirstName = _dataReader["first_name"].ToString();
            p.LastName = _dataReader["last_name"].ToString();

            return p ;
        }

        public override List<Patient> FindAllByProperty(String property, String value)
        {
            return new List<Patient>();
        }
    }
}
