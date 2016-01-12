// ***********************************************************************
// Assembly         : DAO
// Author           : Andrei Ostafciuc
//
// ***********************************************************************
// <copyright file="AdministratorService.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using Entity;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;

namespace DAO
{
    public class AdministratorService : DAO<Administrator>
    {
        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Administrator> FindAll()
        {
            List<Administrator> administratorsList = null;

            string sql = " select * from admin";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                administratorsList = new List<Administrator>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Administrator a = new Administrator();

                    a.Id = Convert.ToInt32(_dataReader[Utils.AdminTableProperties.Id]);
                    a.FirstName = _dataReader[Utils.AdminTableProperties.FirstName].ToString();
                    a.LastName = _dataReader[Utils.AdminTableProperties.LastName].ToString();
                    administratorsList.Add(a);
                }
            }

            return administratorsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Administrator> FindAllByProperty(string property, string value)
        {
            List<Administrator> administratorsList = null;

            string sql = " select * from admin where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                administratorsList = new List<Administrator>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Administrator a = new Administrator();

                    a.Id = Convert.ToInt32(_dataReader[Utils.AdminTableProperties.Id]);
                    a.FirstName = _dataReader[Utils.AdminTableProperties.FirstName].ToString();
                    a.LastName = _dataReader[Utils.AdminTableProperties.LastName].ToString();
                    administratorsList.Add(a);
                }
            }

            return administratorsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override Administrator FindById(int id)
        {
            Administrator a = null;
            string sql = " select * from admin where id_admin = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            _dataReader.Read();

            if (_dataReader.HasRows)
            {
                a = new Administrator();
                a.Id = Convert.ToInt32(_dataReader[Utils.AdminTableProperties.Id]);
                a.FirstName = _dataReader[Utils.AdminTableProperties.FirstName].ToString();
                a.LastName = _dataReader[Utils.AdminTableProperties.LastName].ToString();
            }

            return a;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
        public override int Save(Administrator obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into admin values (" +
                              ":id, " +
                              ":first_name, " +
                              ":last_name )";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id", OracleDbType.Int32).Value = obj.Id;
            _command.Parameters.Add(":email", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":password", OracleDbType.Varchar2).Value = obj.LastName;

            _command.ExecuteNonQuery();

            return obj.Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        public override void Update(Administrator obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE admin " +
                              "SET first_name = :first_name, " +
                              "last_name = :last_name " +
                              "WHERE id_admin = :id";

            _command.Parameters.Clear();
            _command.Parameters.Add(":email", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":password", OracleDbType.Varchar2).Value = obj.LastName;
            _command.Parameters.Add(":id", OracleDbType.Int32).Value = obj.Id;

            _command.ExecuteNonQuery();
        }
    }
}