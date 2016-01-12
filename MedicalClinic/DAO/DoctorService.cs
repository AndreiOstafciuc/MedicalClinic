// ***********************************************************************
// Assembly         : DAO
// Author           : 
//
// ***********************************************************************
// <copyright file="AppointmentService.cs" company="">
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
    public class DoctorService : DAO<Doctor>
    {
        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
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

                    d.Id = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.IdDoctor]);
                    d.FirstName = _dataReader[Utils.DoctorTableProperties.FirstName].ToString();
                    d.LastName = _dataReader[Utils.DoctorTableProperties.LastName].ToString();
                    d.PhoneNumber = _dataReader[Utils.DoctorTableProperties.PhoneNumber].ToString();
                    d.Status = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.Status]);
                    d.IdDept = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.IdDepartment]);
                    doctorsList.Add(d);
                }
            }

            return doctorsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
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

                    d.Id = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.IdDoctor]);
                    d.FirstName = _dataReader[Utils.DoctorTableProperties.FirstName].ToString();
                    d.LastName = _dataReader[Utils.DoctorTableProperties.LastName].ToString();
                    d.PhoneNumber = _dataReader[Utils.DoctorTableProperties.PhoneNumber].ToString();
                    d.Status = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.Status]);
                    d.IdDept = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.IdDepartment]);
                    doctorsList.Add(d);
                }
            }

            return doctorsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
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
                d.Id = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.IdDoctor]);
                d.FirstName = _dataReader[Utils.DoctorTableProperties.FirstName].ToString();
                d.LastName = _dataReader[Utils.DoctorTableProperties.LastName].ToString();
                d.PhoneNumber = _dataReader[Utils.DoctorTableProperties.PhoneNumber].ToString();
                d.Status = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.Status]);
                d.IdDept = Convert.ToInt32(_dataReader[Utils.DoctorTableProperties.IdDepartment]);
            }

            return d;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
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
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
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

        public bool CheckDoctorAvailability(int idDoctor, int day, int time, DateTime date)
        {
            _command.CommandType = CommandType.StoredProcedure;
            _command.CommandText = "check_doctor_availability";
            _command.Parameters.Clear();
            _command.Parameters.Add("v_id_doctor", OracleDbType.Int32, ParameterDirection.Input).Value = idDoctor;
            _command.Parameters.Add("v_day", OracleDbType.Int32, ParameterDirection.Input).Value = day;
            _command.Parameters.Add("v_time", OracleDbType.Int32, ParameterDirection.Input).Value = time;
            _command.Parameters.Add("v_date", OracleDbType.Date, ParameterDirection.Input).Value = date;
            _command.Parameters.Add("v_availability", OracleDbType.Int32, ParameterDirection.Output);
            _command.ExecuteNonQuery();

            int v_availability = Convert.ToInt32(_command.Parameters["v_availability"].Value.ToString());
            if (v_availability == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}