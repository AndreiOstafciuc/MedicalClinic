// ***********************************************************************
// Assembly         : DAO
// Author           : 
//
// ***********************************************************************
// <copyright file="ResultsService.cs" company="">
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
    public class ResultsService : DAO<Results>
    {
        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Results> FindAll()
        {
            List<Results> resultsList = null;

            string sql = " select * from result";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                resultsList = new List<Results>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Results r = new Results();

                    r.Id = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdResult]);
                    r.IdAppointment = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdAppointment]);
                    r.ResultDate = Convert.ToDateTime(_dataReader[Utils.ResultsTableProperties.ResultDate]);
                    r.Symptoms = _dataReader[Utils.ResultsTableProperties.Symptoms].ToString();
                    r.Diagnosis = _dataReader[Utils.ResultsTableProperties.Diagnosis].ToString();
                    r.Medication = _dataReader[Utils.ResultsTableProperties.Mediaction].ToString();
                    resultsList.Add(r);
                }
            }

            return resultsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Results> FindAllByProperty(string property, string value)
        {
            List<Results> resultsList = null;

            string sql = " select * from result where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                resultsList = new List<Results>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Results r = new Results();

                    r.Id = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdResult]);
                    r.IdAppointment = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdAppointment]);
                    r.ResultDate = Convert.ToDateTime(_dataReader[Utils.ResultsTableProperties.ResultDate]);
                    r.Symptoms = _dataReader[Utils.ResultsTableProperties.Symptoms].ToString();
                    r.Diagnosis = _dataReader[Utils.ResultsTableProperties.Diagnosis].ToString();
                    r.Medication = _dataReader[Utils.ResultsTableProperties.Mediaction].ToString();
                    resultsList.Add(r);
                }
            }

            return resultsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override Results FindById(int id)
        {
            Results r = null;
            string sql = " select * from result where id_result = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            _dataReader.Read();

            if (_dataReader.HasRows)
            {
                r = new Results();
                r.Id = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdResult]);
                r.IdAppointment = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdAppointment]);
                r.ResultDate = Convert.ToDateTime(_dataReader[Utils.ResultsTableProperties.ResultDate]);
                r.Symptoms = _dataReader[Utils.ResultsTableProperties.Symptoms].ToString();
                r.Diagnosis = _dataReader[Utils.ResultsTableProperties.Diagnosis].ToString();
                r.Medication = _dataReader[Utils.ResultsTableProperties.Mediaction].ToString();
            }

            return r;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
        public override int Save(Results obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into result(id_appointment,result_date,symptoms,diagnosis,medication) values (" +
                              ":id_appointment, " +
                              ":result_date, " +
                              ":symptoms, " +
                              ":diagnosis, " +
                              ":medication )";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_appointment", OracleDbType.Int32).Value = obj.IdAppointment;
            _command.Parameters.Add(":result_date", OracleDbType.Date).Value = obj.ResultDate;
            _command.Parameters.Add(":symptoms", OracleDbType.Varchar2).Value = obj.Symptoms;
            _command.Parameters.Add(":diagnosis", OracleDbType.Varchar2).Value = obj.Diagnosis;
            _command.Parameters.Add(":medication", OracleDbType.Varchar2).Value = obj.Medication;

            _command.ExecuteNonQuery();

            obj.Id = FindLastInserted().Id;

            return obj.Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        public override void Update(Results obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE result " +
                              "SET id_appointment = :id_appointment, " +
                              "result_date = :result_date, " +
                              "symptoms = :symptoms, " +
                              "diagnosis = :diagnosis, " +
                              "medication = :medication " +
                              "WHERE id_result = :id_result";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_appointment", OracleDbType.Int32).Value = obj.IdAppointment;
            _command.Parameters.Add(":result_date", OracleDbType.Date).Value = obj.ResultDate;
            _command.Parameters.Add(":symptoms", OracleDbType.Varchar2).Value = obj.Symptoms;
            _command.Parameters.Add(":diagnosis", OracleDbType.Varchar2).Value = obj.Diagnosis;
            _command.Parameters.Add(":medication", OracleDbType.Varchar2).Value = obj.Medication;
            _command.Parameters.Add(":id_result", OracleDbType.Int32).Value = obj.Id;

            _command.ExecuteNonQuery();
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public Results FindLastInserted()
        {
            Results r = null;
            string sql = "select * from result where id_result = (select max(id_result) from result)";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            _dataReader.Read();

            if (_dataReader.HasRows)
            {
                r = new Results();
                r.Id = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdResult]);
                r.IdAppointment = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdAppointment]);
                r.ResultDate = Convert.ToDateTime(_dataReader[Utils.ResultsTableProperties.ResultDate]);
                r.Symptoms = _dataReader[Utils.ResultsTableProperties.Symptoms].ToString();
                r.Diagnosis = _dataReader[Utils.ResultsTableProperties.Diagnosis].ToString();
                r.Medication = _dataReader[Utils.ResultsTableProperties.Mediaction].ToString();
            }

            return r;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public List<Results> FindAllResultsOfPatient(int patientId)
        {
            List<Results> resultsList = null;

            string sql = "select * from result where id_appointment in (select id_appointment from appointment where id_patient = " + patientId + ")";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                resultsList = new List<Results>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Results r = new Results();

                    r.Id = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdResult]);
                    r.IdAppointment = Convert.ToInt32(_dataReader[Utils.ResultsTableProperties.IdAppointment]);
                    r.ResultDate = Convert.ToDateTime(_dataReader[Utils.ResultsTableProperties.ResultDate]);
                    r.Symptoms = _dataReader[Utils.ResultsTableProperties.Symptoms].ToString();
                    r.Diagnosis = _dataReader[Utils.ResultsTableProperties.Diagnosis].ToString();
                    r.Medication = _dataReader[Utils.ResultsTableProperties.Mediaction].ToString();
                    resultsList.Add(r);
                }
            }

            return resultsList;
        }
    }
}