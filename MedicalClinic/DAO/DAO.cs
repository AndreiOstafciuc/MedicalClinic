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

        public DAO()
        {
            _command = new OracleCommand();
            _command.Connection = DBConnection.Connection;
        }
        abstract public void Save(Object pacient);
        abstract public void Update(Object pacient);
        abstract public Object GetById(int id);
        abstract public List<Object> FindAllByProperty(String property, String value);
    }
}
