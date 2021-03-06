﻿// ***********************************************************************
// Assembly         : DAO
// Author           : Marius Bordeian
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
    public class PatientService : DAO<Patient>
    {
        public PatientService() : base()
        {
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
        public override int Save(Patient obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into patient values ( " +
                            ":id_patient, " +
                             ":first_name, " +
                              ":last_name, " +
                              ":address, " +
                              ":birthdate, " +
                              ":phone_number, " +
                              ":genetic_disorder, " +
                              ":insurance_number)";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = obj.Id;
            _command.Parameters.Add(":first_name", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":last_name", OracleDbType.Varchar2).Value = obj.LastName;
            _command.Parameters.Add(":address", OracleDbType.Varchar2).Value = obj.Address;
            _command.Parameters.Add(":birthdate", OracleDbType.Date).Value = obj.BirthDate;
            _command.Parameters.Add(":phone_number", OracleDbType.Varchar2).Value = obj.PhoneNumber;
            _command.Parameters.Add(":genetic_disorder", OracleDbType.Varchar2).Value = obj.GeneticDiseases;
            _command.Parameters.Add(":insurance_number", OracleDbType.Varchar2).Value = obj.InsuranceNumber;

            _command.ExecuteNonQuery();

            return obj.Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        public override void Update(Patient obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE patient " +
                              "SET first_name = :first_name, " +
                              "last_name = :last_name, " +
                              "address = :address, " +
                              "birthdate = :birthdate, " +
                              "phone_number = :phone_number, " +
                              "genetic_disorder = :genetic_disorder, " +
                              "insurance_number = :insurance_number " +
                              "WHERE id_patient = :id_patient";

            _command.Parameters.Clear();
            _command.Parameters.Add(":first_name", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":last_name", OracleDbType.Varchar2).Value = obj.LastName;
            _command.Parameters.Add(":address", OracleDbType.Varchar2).Value = obj.Address;
            _command.Parameters.Add(":birthdate", OracleDbType.Date).Value = obj.BirthDate;
            _command.Parameters.Add(":phone_number", OracleDbType.Varchar2).Value = obj.PhoneNumber;
            _command.Parameters.Add(":genetic_disorder", OracleDbType.Varchar2).Value = obj.GeneticDiseases;
            _command.Parameters.Add(":insurance_number", OracleDbType.Varchar2).Value = obj.InsuranceNumber;
            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = obj.Id;

            _command.ExecuteNonQuery();
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override Patient FindById(int id)
        {
            Patient p = null;
            string sql = " select * from patient where id_patient = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            _dataReader.Read();

            if (_dataReader.HasRows)
            {
                p = new Patient();
                p.Id = Convert.ToInt32(_dataReader[Utils.PatientTableProperties.IdPatient]);
                p.FirstName = _dataReader[Utils.PatientTableProperties.FirstName].ToString();
                p.LastName = _dataReader[Utils.PatientTableProperties.LastName].ToString();
                p.InsuranceNumber = _dataReader[Utils.PatientTableProperties.InsuranceNumber].ToString();
                p.Address = _dataReader[Utils.PatientTableProperties.Address].ToString();
                p.BirthDate = (DateTime)_dataReader[Utils.PatientTableProperties.Birthdate];
                p.GeneticDiseases = _dataReader[Utils.PatientTableProperties.GeneticDisorder].ToString();
                p.PhoneNumber = _dataReader[Utils.PatientTableProperties.PhoneNumber].ToString();
            }

            return p;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Patient> FindAllByProperty(String property, String value)
        {
            List<Patient> patientsList = null;

            string sql = " select * from patient where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                patientsList = new List<Patient>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Patient p = new Patient();

                    p.Id = Convert.ToInt32(_dataReader[Utils.PatientTableProperties.IdPatient]);
                    p.FirstName = _dataReader[Utils.PatientTableProperties.FirstName].ToString();
                    p.LastName = _dataReader[Utils.PatientTableProperties.LastName].ToString();
                    p.InsuranceNumber = _dataReader[Utils.PatientTableProperties.InsuranceNumber].ToString();
                    p.Address = _dataReader[Utils.PatientTableProperties.Address].ToString();
                    p.BirthDate = (DateTime)_dataReader[Utils.PatientTableProperties.Birthdate];
                    p.GeneticDiseases = _dataReader[Utils.PatientTableProperties.GeneticDisorder].ToString();
                    p.PhoneNumber = _dataReader[Utils.PatientTableProperties.PhoneNumber].ToString();

                    patientsList.Add(p);
                }
            }

            return patientsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Patient> FindAll()
        {
            List<Patient> patientsList = null;

            string sql = " select * from patient";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                patientsList = new List<Patient>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Patient p = new Patient();

                    p.Id = Convert.ToInt32(_dataReader[Utils.PatientTableProperties.IdPatient]);
                    p.FirstName = _dataReader[Utils.PatientTableProperties.FirstName].ToString();
                    p.LastName = _dataReader[Utils.PatientTableProperties.LastName].ToString();
                    p.InsuranceNumber = _dataReader[Utils.PatientTableProperties.InsuranceNumber].ToString();
                    p.Address = _dataReader[Utils.PatientTableProperties.Address].ToString();
                    p.BirthDate = (DateTime)_dataReader[Utils.PatientTableProperties.Birthdate];
                    p.GeneticDiseases = _dataReader[Utils.PatientTableProperties.GeneticDisorder].ToString();
                    p.PhoneNumber = _dataReader[Utils.PatientTableProperties.PhoneNumber].ToString();

                    patientsList.Add(p);
                }
            }

            return patientsList;
        }
    }
}