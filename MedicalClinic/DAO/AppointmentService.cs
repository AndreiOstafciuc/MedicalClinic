﻿// ***********************************************************************
// Assembly         : DAO
// Author           : Andrei Ostafciuc
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
    public class AppointmentService : DAO<Appointment>
    {
        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Appointment> FindAll()
        {
            List<Appointment> appointmentsList = null;

            string sql = " select * from appointment";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                appointmentsList = new List<Appointment>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Appointment a = new Appointment();

                    a.Id = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Id]);
                    a.IdDoctor = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdDoctor]);
                    a.IdPacient = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdPatient]);
                    a.Time = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Time]);
                    a.ScheduledDate = Convert.ToDateTime(_dataReader[Utils.AppointmentTableProperties.ScheduleDate]);
                    a.Symptoms = _dataReader[Utils.AppointmentTableProperties.Symptoms].ToString();
                    appointmentsList.Add(a);
                }
            }

            return appointmentsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override List<Appointment> FindAllByProperty(string property, string value)
        {
            List<Appointment> appointmentsList = null;

            string sql = " select * from appointment where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                appointmentsList = new List<Appointment>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Appointment a = new Appointment();

                    a.Id = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Id]);
                    a.IdDoctor = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdDoctor]);
                    a.IdPacient = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdPatient]);
                    a.Time = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Time]);
                    a.ScheduledDate = Convert.ToDateTime(_dataReader[Utils.AppointmentTableProperties.ScheduleDate]);
                    a.Symptoms = _dataReader[Utils.AppointmentTableProperties.Symptoms].ToString();
                    appointmentsList.Add(a);
                }
            }

            return appointmentsList;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public override Appointment FindById(int id)
        {
            Appointment a = null;
            string sql = " select * from appointment where id_appointment = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            _dataReader.Read();

            if (_dataReader.HasRows)
            {
                a = new Appointment();
                a.Id = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Id]);
                a.IdDoctor = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdDoctor]);
                a.IdPacient = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdPatient]);
                a.Time = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Time]);
                a.ScheduledDate = Convert.ToDateTime(_dataReader[Utils.AppointmentTableProperties.ScheduleDate]);
                a.Symptoms = _dataReader[Utils.AppointmentTableProperties.Symptoms].ToString();
            }

            return a;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
        public override int Save(Appointment obj)
        {
            string sql = "insert into appointment values (" + obj.Id + ",'" + obj.IdDoctor + "','" + obj.IdPacient + "','" + obj.Time + "','" + obj.ScheduledDate.ToString("dd-MMM-yy") + "','" + obj.Symptoms + "')";

            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into appointment(id_doctor,id_patient,time,scheduled_date,symptoms) values ( " +
                              ":id_doctor, " +
                              ":id_patient, " +
                              ":time, " +
                              ":scheduled_date, " +
                               ":symptoms )";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.IdDoctor;
            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = obj.IdPacient;
            _command.Parameters.Add(":time", OracleDbType.Int32).Value = obj.Time;
            _command.Parameters.Add(":scheduled_date", OracleDbType.Date).Value = obj.ScheduledDate;
            _command.Parameters.Add(":symptoms", OracleDbType.Varchar2).Value = obj.Symptoms;

            _command.ExecuteNonQuery();

            obj.Id = FindLastInserted().Id;

            return obj.Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="OracleException">ExecuteNonQuery()</exception>
        public override void Update(Appointment obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE appointment " +
                              "SET id_doctor = :id_doctor, " +
                              "id_patient = :id_patient, " +
                              "time = :time, " +
                              "scheduled_date = :scheduled_date, " +
                               "symptoms = :symptoms " +
                              "WHERE id_appointment = :id_appointment";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.IdDoctor;
            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = obj.IdPacient;
            _command.Parameters.Add(":time", OracleDbType.Int32).Value = obj.Time;
            _command.Parameters.Add(":scheduled_date", OracleDbType.Date).Value = obj.ScheduledDate;
            _command.Parameters.Add(":symptoms", OracleDbType.Varchar2).Value = obj.Symptoms;
            _command.Parameters.Add(":id_appointment", OracleDbType.Int32).Value = obj.Id;

            _command.ExecuteNonQuery();
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public Appointment FindLastInserted()
        {
            Appointment a = null;
            string sql = "select * from appointment where id_appointment = (select max(id_appointment) from appointment)";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

            _dataReader.Read();

            if (_dataReader.HasRows)
            {
                a = new Appointment();
                a.Id = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Id]);
                a.IdDoctor = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdDoctor]);
                a.IdPacient = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdPatient]);
                a.Time = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Time]);
                a.ScheduledDate = Convert.ToDateTime(_dataReader[Utils.AppointmentTableProperties.ScheduleDate]);
                a.Symptoms = _dataReader[Utils.AppointmentTableProperties.Symptoms].ToString();
            }

            return a;
        }

        /// <exception cref="OracleException">no active connection by ExecuteReader()</exception>
        public List<Appointment> GetNextAppointmentsByDoctorId(int id)
        {
            List<Appointment> appointmentsList = null;

            _command.CommandText = "select * from appointment where id_doctor = :id_doctor and scheduled_date >= :scheduled_date ";//and time >= :time";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = id;
            _command.Parameters.Add(":scheduled_date", OracleDbType.Date).Value = DateTime.Now;
            //  _command.Parameters.Add(":time", OracleDbType.Int32).Value = DateTime.Now.Hour;

            _dataReader = _command.ExecuteReader();

            if (_dataReader.HasRows)
            {
                appointmentsList = new List<Appointment>();
                while (_dataReader.Read() && _dataReader.HasRows)
                {
                    Appointment a = new Appointment();

                    a.Id = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Id]);
                    a.IdDoctor = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdDoctor]);
                    a.IdPacient = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.IdPatient]);
                    a.Time = Convert.ToInt32(_dataReader[Utils.AppointmentTableProperties.Time]);
                    a.ScheduledDate = Convert.ToDateTime(_dataReader[Utils.AppointmentTableProperties.ScheduleDate]);
                    a.Symptoms = _dataReader[Utils.AppointmentTableProperties.Symptoms].ToString();
                    appointmentsList.Add(a);
                }
            }

            return appointmentsList;
        }
    }
}