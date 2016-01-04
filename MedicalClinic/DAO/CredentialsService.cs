using Entity;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;

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
            _command.CommandText = "insert into credentials (email,password,type) values ( " +
                              ":email, " +
                              ":password, " +
                              ":type )";

            _command.Parameters.Clear();
            _command.Parameters.Add(":email", OracleDbType.Varchar2).Value = obj.Email;
            _command.Parameters.Add(":password", OracleDbType.Varchar2).Value = obj.Password;
            _command.Parameters.Add(":type", OracleDbType.Int32).Value = obj.Type;

            _command.ExecuteNonQuery();

            return FindLastInserted().Id;
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

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public Credentials FindLastInserted()
        {
            Credentials c = null;
            string sql = "select * from credentials where id = (select max(id) from credentials)";

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

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public Credentials validateCredentials(String email,String password)
        {
            Credentials credentials = null;
            _command.CommandType = CommandType.StoredProcedure;
            _command.CommandText = "check_user";
            _command.Parameters.Clear();
            _command.Parameters.Add("v_email", OracleDbType.Varchar2,ParameterDirection.Input).Value=email;
            _command.Parameters.Add("v_password", OracleDbType.Varchar2, ParameterDirection.Input).Value = password;
            _command.Parameters.Add("v_id", OracleDbType.Int32, ParameterDirection.Output);
            _command.Parameters.Add("v_type", OracleDbType.Int32, ParameterDirection.Output);
            _command.ExecuteNonQuery();

            int v_id = Convert.ToInt32(_command.Parameters["v_id"].Value.ToString());
            int v_type = Convert.ToInt32(_command.Parameters["v_type"].Value.ToString());

            if (v_id != 0)
            {
                credentials = new Credentials(email,password,v_type);
                credentials.Id = v_id;
            }

            return credentials;
        }
    }
}
