﻿using Entity;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class ScheduleService : DAO<Schedule>
    {
        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Schedule> FindAll()
        {
            List<Schedule> schedulesList = null;

            string sql = " select * from schedule";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    schedulesList = new List<Schedule>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Schedule s = new Schedule();

                        s.Id = Convert.ToInt32(_dataReader["id_schedule"]);
                        s.Day = Convert.ToInt32(_dataReader["day"]);
                        s.StartHour = Convert.ToInt32(_dataReader["start_hour"]);
                        s.EndHour = Convert.ToInt32(_dataReader["end_hour"]);
                        s.Id_doctor = Convert.ToInt32(_dataReader["id_doctor"]);
                        schedulesList.Add(s);
                    }
                }

            return schedulesList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Schedule> FindAllByProperty(string property, string value)
        {
            List<Schedule> schedulesList = null;

            string sql = " select * from schedule where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    schedulesList = new List<Schedule>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Schedule s = new Schedule();

                        s.Id = Convert.ToInt32(_dataReader["id_schedule"]);
                        s.Day = Convert.ToInt32(_dataReader["day"]);
                        s.StartHour = Convert.ToInt32(_dataReader["start_hour"]);
                        s.EndHour = Convert.ToInt32(_dataReader["end_hour"]);
                        s.Id_doctor = Convert.ToInt32(_dataReader["id_doctor"]);
                        schedulesList.Add(s);
                    }
                }

            return schedulesList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override Schedule FindById(int id)
        {
            Schedule s = null;
            string sql = " select * from schedule where id_schedule = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

            _dataReader = _command.ExecuteReader();

                _dataReader.Read();

                if (_dataReader.HasRows)
                {
                    s = new Schedule();
                    s.Id = Convert.ToInt32(_dataReader["id_schedule"]);
                    s.Day = Convert.ToInt32(_dataReader["day"]);
                    s.StartHour = Convert.ToInt32(_dataReader["start_hour"]);
                    s.EndHour = Convert.ToInt32(_dataReader["end_hour"]);
                    s.Id_doctor = Convert.ToInt32(_dataReader["id_doctor"]);
                }

            return s;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
        public override int Save(Schedule obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into schedule (day,start_hour,end_hour,id_doctor) values (" +
                              ":day, " +
                              ":start_hour, " +
                              ":end_hour, " +
                              ":id_doctor )";

            _command.Parameters.Clear();
            _command.Parameters.Add(":day", OracleDbType.Int32).Value = obj.Day;
            _command.Parameters.Add(":start_hour", OracleDbType.Int32).Value = obj.StartHour;
            _command.Parameters.Add(":end_hour", OracleDbType.Int32).Value = obj.EndHour;
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.Id_doctor;
          
            _command.ExecuteNonQuery();

            return obj.Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
        public override void Update(Schedule obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE schedule " +
                              "SET day = :day, " +
                              "start_hour = :start_hour, " +
                              "end_hour = :end_hour, " +
                              "id_doctor = :id_doctor " +
                              "WHERE id_schedule = :id_schedule";

            _command.Parameters.Clear();
            _command.Parameters.Add(":day", OracleDbType.Int32).Value = obj.Day;
            _command.Parameters.Add(":start_hour", OracleDbType.Int32).Value = obj.StartHour;
            _command.Parameters.Add(":end_hour", OracleDbType.Int32).Value = obj.EndHour;
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.Id_doctor;
            _command.Parameters.Add(":id_schedule", OracleDbType.Int32).Value = obj.Id;

            _command.ExecuteNonQuery();
        }
    }
}
