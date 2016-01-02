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
    public class DoctorService : DAO<Doctor>
    {
        public override List<Doctor> FindAllByProperty(string property, string value)
        {
            List<Doctor> doctorsList = null;

            string sql = " select * from doctor where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
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
            }
            catch (Exception)
            {

            }
            return doctorsList;
        }

        public override Doctor FindById(int id)
        {
            Doctor d = null;
            string sql = " select * from doctor where id_doctor = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
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
            }
            catch (Exception)
            {

            }
            return d;
        }

        public override void Save(Doctor obj)
        {
            string sql = "insert into doctor values (" + obj.Id + ",'" + obj.FirstName + "','" + obj.LastName + "','" + obj.IdDept + "','" + obj.PhoneNumber + "','" + obj.Status + "')";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

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

        public override void Update(Doctor obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE doctor " +
                              "SET first_name = :first_name, " +
                              "last_name = :last_name, " +
                              "id_dept = :id_dept, " +
                              "phone_number = :phone_number, " +
                              "status = :status " +
                              "WHERE id_doctor = :id";
            _command.Parameters.Add(":first_name", OracleDbType.Varchar2).Value = obj.FirstName;
            _command.Parameters.Add(":last_name", OracleDbType.Varchar2).Value = obj.LastName;
            _command.Parameters.Add(":id_dept", OracleDbType.Int32).Value = obj.IdDept;
            _command.Parameters.Add(":phone_number", OracleDbType.Varchar2).Value = obj.PhoneNumber;
            _command.Parameters.Add(":status", OracleDbType.Decimal).Value = obj.Status;
            _command.Parameters.Add(":id_doctor", OracleDbType.Int32).Value = obj.Id;
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
