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
    public class DepartmentService : DAO<Department>
    {
        public override List<Department> FindAll()
        {
            List<Department> deptsList = null;

            string sql = " select * from department";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    deptsList = new List<Department>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Department d = new Department();

                        d.Id = Convert.ToInt32(_dataReader["id_dept"]);
                        d.Name = _dataReader["name"].ToString();
                        d.Description = _dataReader["description"].ToString();
                        d.Floor = Convert.ToInt32(_dataReader["floor"].ToString());
                        deptsList.Add(d);
                    }
                }
            }
            catch (Exception)
            {

            }
            return deptsList;
        }

        public override List<Department> FindAllByProperty(string property, string value)
        {
            List<Department> deptsList = null;

            string sql = " select * from department where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();


                if (_dataReader.HasRows)
                {
                    deptsList = new List<Department>();
                    while (_dataReader.Read() && _dataReader.HasRows)
                    {

                        Department d = new Department();

                        d.Id = Convert.ToInt32(_dataReader["id_dept"]);
                        d.Name = _dataReader["name"].ToString();
                        d.Description = _dataReader["description"].ToString();
                        d.Floor = Convert.ToInt32(_dataReader["floor"].ToString());
                        deptsList.Add(d);
                    }
                }
            }
            catch (Exception)
            {

            }
            return deptsList;
        }

        public override Department FindById(int id)
        {
            Department d = null;
            string sql = " select * from department where id_dept = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;
            try
            {
                _dataReader = _command.ExecuteReader();

                _dataReader.Read();

                if (_dataReader.HasRows)
                {
                    d = new Department();
                    d.Id = Convert.ToInt32(_dataReader["id_dept"]);
                    d.Name = _dataReader["name"].ToString();
                    d.Description = _dataReader["description"].ToString();
                    d.Floor = Convert.ToInt32(_dataReader["floor"].ToString());
                }
            }
            catch (Exception)
            {

            }
            return d;
        }

        public override int Save(Department obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "insert into department values ( " +
                              ":id_dept, " +
                              ":name, " +
                              ":description, " +
                              ":floor)";

            _command.Parameters.Clear();
            _command.Parameters.Add(":id_dept", OracleDbType.Int32).Value = obj.Id;
            _command.Parameters.Add(":name", OracleDbType.Varchar2).Value = obj.Name;
            _command.Parameters.Add(":description", OracleDbType.Varchar2).Value = obj.Description;
            _command.Parameters.Add(":floor", OracleDbType.Int32).Value = obj.Floor;
           

            try
            {
                _command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                // poate facem un logger ceva + un sistem de afisare a errorilor pentru utilizator
            }

            return obj.Id;
        }

        public override void Update(Department obj)
        {
            _command.CommandType = CommandType.Text;
            _command.CommandText = "UPDATE department " +
                              "SET name = :name, " +
                              "description = :description, " +
                              "floor = :floor " +
                              "WHERE id_dept = :id_dept";

            _command.Parameters.Clear();
            _command.Parameters.Add(":name", OracleDbType.Varchar2).Value = obj.Name;
            _command.Parameters.Add(":description", OracleDbType.Varchar2).Value = obj.Description;
            _command.Parameters.Add(":floor", OracleDbType.Int32).Value = obj.Floor;
            _command.Parameters.Add(":id_dept", OracleDbType.Int32).Value = obj.Id;
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
