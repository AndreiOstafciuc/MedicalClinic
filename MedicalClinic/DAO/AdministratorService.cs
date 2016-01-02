using Entity;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class AdministratorService : DAO<Administrator>
    {
        public override List<Administrator> FindAllByProperty(string property, string value)
        {
            List<Administrator> administratorsList = null;

            string sql = " select * from admin where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    administratorsList = new List<Administrator>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Administrator a = new Administrator();

                        a.Id = Convert.ToInt32(_dataReader["id_admin"]);
                        a.FirstName = _dataReader["first_name"].ToString();
                        a.LastName = _dataReader["last_name"].ToString();
                        administratorsList.Add(a);
                    }
                }
            }
            catch (Exception)
            {

            }
            return administratorsList;
        }

        public override Administrator FindById(int id)
        {
            Administrator a = null;
            string sql = " select * from admin where id_admin = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();

                _dataReader.Read();

                if (_dataReader.HasRows)
                {
                    a = new Administrator();
                    a.Id = Convert.ToInt32(_dataReader["id_admin"]);
                    a.FirstName = _dataReader["first_name"].ToString();
                    a.LastName = _dataReader["last_name"].ToString();

                }
            }
            catch (Exception)
            {

            }
            return a;
        }

        public override void Save(Administrator obj)
        {
            string sql = "insert into admin values (" + obj.Id + ",'" + obj.FirstName + "','" + obj.LastName + "')";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _command.ExecuteNonQuery();
            }
            catch (Exception)
            {

            }
        }

        public override void Update(Administrator obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE admin " +
                              "SET first_name = :first_name, " +
                              "last_name = :last_name " +
                              "WHERE id_admin = :id";
            _command.Parameters.Add(":email", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":password", OracleDbType.Varchar2).Value = obj.LastName;
            _command.Parameters.Add(":id", OracleDbType.Int32).Value = obj.Id;
            try
            {
                _command.ExecuteNonQuery();
            }
            catch (Exception)
            {

            }
        }
    }
}
