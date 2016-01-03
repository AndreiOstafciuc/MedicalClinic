using DBConnNamespace;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public abstract class DAO<Object>
    {
        protected OracleCommand _command;
        protected OracleDataReader _dataReader;
        protected OracleTransaction _tr;
        

        public DAO()
        {
            _command = new OracleCommand();
            _command.Connection = DBConnection.Connection;
           
        }
        abstract public int Save(Object obj);
        abstract public void Update(Object obj);
        abstract public Object FindById(int id);
        abstract public List<Object> FindAll();
        abstract public List<Object> FindAllByProperty(String property, String value);
    }
}
