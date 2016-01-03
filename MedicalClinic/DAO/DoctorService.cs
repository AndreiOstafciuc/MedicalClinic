using Entity;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;

namespace DAO
{
    public class DoctorService : DAO<Doctor>
    {

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Doctor> FindAll()
        {
            List<Doctor> doctorsList = null;

            string sql = " select * from doctor";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();
                if (_dataReader.HasRows)
                {
                    doctorsList = new List<Doctor>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Doctor d = new Doctor();

                        d.Id = Convert.ToInt32(_dataReader["id_doctor"]);
                        d.FirstName = _dataReader["first_name"].ToString();
                        d.LastName = _dataReader["last_name"].ToString();
                        d.PhoneNumber = _dataReader["phone_number"].ToString();
                        d.Status = Convert.ToInt32(_dataReader["status"]);
                        d.IdDept = Convert.ToInt32(_dataReader["id_dept"]);
                        doctorsList.Add(d);
                    }
                }

            return doctorsList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Doctor> FindAllByProperty(string property, string value)
        {
            List<Doctor> doctorsList = null;

            string sql = " select * from doctor where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();
                if (_dataReader.HasRows)
                {
                    doctorsList = new List<Doctor>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Doctor d = new Doctor();

                        d.Id = Convert.ToInt32(_dataReader["id_doctor"]);
                        d.FirstName = _dataReader["first_name"].ToString();
                        d.LastName = _dataReader["last_name"].ToString();
                        d.PhoneNumber = _dataReader["phone_number"].ToString();
                        d.Status = Convert.ToInt32(_dataReader["status"]);
                        d.IdDept = Convert.ToInt32(_dataReader["id_dept"]);
                        doctorsList.Add(d);
                    }
                }

            return doctorsList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override Doctor FindById(int id)
        {
            Doctor d = null;
            string sql = " select * from doctor where id_doctor = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

                _dataReader.Read();

                if (_dataReader.HasRows)
                {
                    d = new Doctor();
                    d.Id = Convert.ToInt32(_dataReader["id_doctor"]);
                    d.FirstName = _dataReader["first_name"].ToString();
                    d.LastName = _dataReader["last_name"].ToString();
                    d.PhoneNumber = _dataReader["phone_number"].ToString();
                    d.Status = Convert.ToInt32(_dataReader["status"]);
                    d.IdDept = Convert.ToInt32(_dataReader["id_dept"]);
                }

            return d;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
        public override int Save(Doctor obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into doctor values ( " +
                              ":id_doctor, " +
                              ":first_name, " +
                              ":last_name, " +
                              ":id_dept, " +
                              ":phone_number, " +
                              ":status)";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.Id;
            _command.Parameters.Add(":first_name", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":last_name", OracleDbType.Varchar2).Value = obj.LastName;
            _command.Parameters.Add(":id_dept", OracleDbType.Int32).Value = obj.IdDept;
            _command.Parameters.Add(":phone_number", OracleDbType.Varchar2).Value = obj.PhoneNumber;
            _command.Parameters.Add(":status", OracleDbType.Decimal).Value = obj.Status;

            _command.ExecuteNonQuery();
                        
            return obj.Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
        public override void Update(Doctor obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE doctor " +
                              "SET first_name = :first_name, " +
                              "last_name = :last_name, " +
                              "id_dept = :id_dept, " +
                              "phone_number = :phone_number, " +
                              "status = :status " +
                              "WHERE id_doctor = :id_doctor";

            _command.Parameters.Clear();
            _command.Parameters.Add(":first_name", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":last_name", OracleDbType.Varchar2).Value = obj.LastName;
            _command.Parameters.Add(":id_dept", OracleDbType.Int32).Value = obj.IdDept;
            _command.Parameters.Add(":phone_number", OracleDbType.Varchar2).Value = obj.PhoneNumber;
            _command.Parameters.Add(":status", OracleDbType.Decimal).Value = obj.Status;
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.Id;

            _command.ExecuteNonQuery();
        }
    }
}
