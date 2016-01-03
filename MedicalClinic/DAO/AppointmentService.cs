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
    public class AppointmentService : DAO<Appointment>
    {
        public override List<Appointment> FindAllByProperty(string property, string value)
        {
            List<Appointment> appointmentsList = null;

            string sql = " select * from appointment where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    appointmentsList = new List<Appointment>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Appointment a = new Appointment();

                        a.Id = Convert.ToInt32(_dataReader["id_appointment"]);
                        a.IdDoctor = Convert.ToInt32(_dataReader["id_doctor"]);
                        a.IdPacient = Convert.ToInt32(_dataReader["id_patient"]);
                        a.Time = Convert.ToInt32(_dataReader["time"]);
                        a.AppointmentDate = Convert.ToDateTime(_dataReader["scheduled_date"]);
                        a.Symptoms = _dataReader["symptoms"].ToString();
                        appointmentsList.Add(a);
                    }
                }
            }
            catch (Exception)
            {

            }
            return appointmentsList;
        }

        public override Appointment FindById(int id)
        {
            Appointment a = null;
            string sql = " select * from appointment where id_appointment = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();

                _dataReader.Read();

                if (_dataReader.HasRows)
                {
                    a = new Appointment();
                    a.Id = Convert.ToInt32(_dataReader["id_appointment"]);
                    a.IdDoctor = Convert.ToInt32(_dataReader["id_doctor"]);
                    a.IdPacient = Convert.ToInt32(_dataReader["id_patient"]);
                    a.Time = Convert.ToInt32(_dataReader["time"]);
                    a.AppointmentDate = Convert.ToDateTime(_dataReader["scheduled_date"]);
                    a.Symptoms = _dataReader["symptoms"].ToString();
                }
            }
            catch (Exception)
            {

            }
            return a;
        }

        public override void Save(Appointment obj)
        {
            string sql = "insert into appointment values (" + obj.Id + ",'" + obj.IdDoctor + "','" + obj.IdPacient + "','" + obj.Time + "','" + obj.AppointmentDate.ToString("dd-MMM-yy") + "','" + obj.Symptoms + "')";

            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into appointment values ( " +
                               ":id_appointment, "+
                              ":id_doctor, " +
                              ":id_patient, " +
                              ":time, " +
                              ":scheduled_date, " +
                               ":symptoms )";
            _command.Parameters.Add(":id_appointment", OracleDbType.Int32).Value = obj.Id;
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.IdDoctor;
            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = obj.IdPacient;
            _command.Parameters.Add(":time", OracleDbType.Int32).Value = obj.Time;
            _command.Parameters.Add(":scheduled_date", OracleDbType.Date).Value = obj.AppointmentDate;
            _command.Parameters.Add(":symptoms", OracleDbType.Varchar2).Value = obj.Symptoms;
           
            try
            {
                _command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                // poate aparea contraint violation
                // poate facem un logger ceva + un sistem de afisare a errorilor pentru utilizator
            }
        }

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
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.IdDoctor;
            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = obj.IdPacient;
            _command.Parameters.Add(":time", OracleDbType.Int32).Value = obj.Time;
            _command.Parameters.Add(":scheduled_date", OracleDbType.Date).Value = obj.AppointmentDate;
            _command.Parameters.Add(":symptoms", OracleDbType.Varchar2).Value = obj.Symptoms;
            _command.Parameters.Add(":id_appointment", OracleDbType.Int32).Value = obj.Id;
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
