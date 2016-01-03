using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using DAO;
using DBConnNamespace;
using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace DAO
{
    public class PatientService : DAO<Patient>
    {

        public PatientService() : base()
        {

        }

        public override void Save(Patient pacient)
        {
            //string sql = "insert into patient values (" + pacient.Id + ",'" + pacient.FirstName + "','" + pacient.LastName + "','" + pacient.Address + "','" + pacient.BirthDate.ToString("dd-MM-yyyy") + "','" + pacient.PhoneNumber + "','" + pacient.GeneticDiseases + "','" + pacient.InsuranceNumber + "')";
            
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into patient values ( " +
                              ":id_patient, " +
                              ":first_name, " +
                              ":last_name, " +
                              ":address, " +
                              ":birthdate, " +
                              ":phone_number, " +
                              ":genetic_disorder, " +
                              ":insurance_number )";

            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = pacient.Id;
            _command.Parameters.Add(":first_name", OracleDbType.Varchar2).Value = pacient.FirstName;
            _command.Parameters.Add(":last_name", OracleDbType.Varchar2).Value = pacient.LastName;
            _command.Parameters.Add(":address", OracleDbType.Varchar2).Value = pacient.Address;
            _command.Parameters.Add(":birthdate", OracleDbType.Date).Value = pacient.BirthDate;
            _command.Parameters.Add(":phone_number", OracleDbType.Varchar2).Value = pacient.PhoneNumber;
            _command.Parameters.Add(":genetic_disorder", OracleDbType.Varchar2).Value = pacient.GeneticDiseases;
            _command.Parameters.Add(":insurance_number", OracleDbType.Varchar2).Value = pacient.InsuranceNumber;

            try
            {
                _command.ExecuteNonQuery();
            }
            catch (Exception)
            {

            }
        }

        public override void Update(Patient pacient)
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
            _command.Parameters.Add(":first_name", OracleDbType.Varchar2).Value = pacient.FirstName;
            _command.Parameters.Add(":last_name", OracleDbType.Varchar2).Value = pacient.LastName;
            _command.Parameters.Add(":address", OracleDbType.Varchar2).Value = pacient.Address;
            _command.Parameters.Add(":birthdate", OracleDbType.Date).Value = pacient.BirthDate;
            _command.Parameters.Add(":phone_number", OracleDbType.Varchar2).Value = pacient.PhoneNumber;
            _command.Parameters.Add(":genetic_disorder", OracleDbType.Varchar2).Value = pacient.GeneticDiseases;
            _command.Parameters.Add(":insurance_number", OracleDbType.Varchar2).Value = pacient.InsuranceNumber;
            _command.Parameters.Add(":id_patient", OracleDbType.Int32).Value = pacient.Id;
            try
            {
                _command.ExecuteNonQuery();
            }
            catch (Exception)
            {

            }
        }

        public override Patient FindById(int id)
        {
            Patient p = null;
            string sql = " select * from patient where id_patient = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();

                _dataReader.Read();

                if (_dataReader.HasRows)
                {
                    p = new Patient();
                    p.Id = Convert.ToInt32(_dataReader["id_patient"]);
                    p.FirstName = _dataReader["first_name"].ToString();
                    p.LastName = _dataReader["last_name"].ToString();
                    p.InsuranceNumber = _dataReader["insurance_number"].ToString();
                    p.Address = _dataReader["address"].ToString();
                    p.BirthDate = (DateTime)_dataReader["birthdate"];
                    p.GeneticDiseases = _dataReader["genetic_disorder"].ToString();
                    p.PhoneNumber = _dataReader["phone_number"].ToString();

                }
            }
            catch (Exception)
            {

            }
            return p;
        }

        public override List<Patient> FindAllByProperty(String property, String value)
        {
            List<Patient> patientsList = null;

            string sql = " select * from patient where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    patientsList = new List<Patient>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Patient p = new Patient();

                        p.Id = Convert.ToInt32(_dataReader["id_patient"]);
                        p.FirstName = _dataReader["first_name"].ToString();
                        p.LastName = _dataReader["last_name"].ToString();
                        p.InsuranceNumber = _dataReader["insurance_number"].ToString();
                        p.Address = _dataReader["address"].ToString();
                        p.BirthDate = (DateTime)_dataReader["birthdate"];
                        p.GeneticDiseases = _dataReader["genetic_disorder"].ToString();
                        p.PhoneNumber = _dataReader["phone_number"].ToString();

                        patientsList.Add(p);
                    }
                }
            }
            catch (Exception)
            {

            }
            return patientsList;
        }

    }
}
