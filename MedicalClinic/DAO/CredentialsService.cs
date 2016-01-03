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
    public class CredentialsService : DAO<Credentials>
    {
        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Credentials> FindAll()
        {
            List<Credentials> credentialsList = null;

            string sql = " select * from credentials";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    credentialsList = new List<Credentials>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Credentials c = new Credentials();

                        c.Id = Convert.ToInt32(_dataReader["id"]);
                        c.Email = _dataReader["email"].ToString();
                        c.Password = _dataReader["password"].ToString();
                        c.Type = Convert.ToInt32(_dataReader["type"]);
                        credentialsList.Add(c);
                    }
                }

            return credentialsList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Credentials> FindAllByProperty(string property, string value)
        {
            List<Credentials> credentialsList = null;

            string sql = " select * from credentials where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    credentialsList = new List<Credentials>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Credentials c = new Credentials();

                        c.Id = Convert.ToInt32(_dataReader["id"]);
                        c.Email = _dataReader["email"].ToString();
                        c.Password = _dataReader["password"].ToString();
                        c.Type = Convert.ToInt32(_dataReader["type"]);
                        credentialsList.Add(c);
                    }
                }

            return credentialsList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override Credentials FindById(int id)
        {
            Credentials c = null;
            string sql = " select * from credentials where id = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

                _dataReader.Read();

                if (_dataReader.HasRows)
                {
                    c = new Credentials();
                    c.Id = Convert.ToInt32(_dataReader["id"]);
                    c.Email = _dataReader["email"].ToString();
                    c.Password = _dataReader["password"].ToString();
                    c.Type = Convert.ToInt32(_dataReader["type"]);

                }
            return c;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
        public override int Save(Credentials obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into credentials values ( " +
                              ":id, " +
                              ":email, " +
                              ":password, " +
                              ":type )";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id", OracleDbType.Int32).Value = obj.Id;
            _command.Parameters.Add(":email", OracleDbType.Varchar2).Value = obj.Email;
            _command.Parameters.Add(":password", OracleDbType.Varchar2).Value = obj.Password;
            _command.Parameters.Add(":type", OracleDbType.Int32).Value = obj.Type;

            _command.ExecuteNonQuery();

            return FindAllByProperty("email", obj.Email)[0].Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
        public override void Update(Credentials obj)
        {

            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE credentials " +
                              "SET email = :email, " +
                              "password = :password, " +
                              "type = :type " +
                              "WHERE id = :id";

            _command.Parameters.Clear();
            _command.Parameters.Add(":email", OracleDbType.Varchar2).Value = obj.Email;
            _command.Parameters.Add(":password", OracleDbType.Varchar2).Value = obj.Password;
            _command.Parameters.Add(":type", OracleDbType.Int32).Value = obj.Type;
            _command.Parameters.Add(":id", OracleDbType.Int32).Value = obj.Id;

            _command.ExecuteNonQuery();
        }
    }
}
