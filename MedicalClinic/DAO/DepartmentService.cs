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

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Department> FindAll()
        {
            List<Department> deptsList = null;

            string sql = " select * from department";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

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

            return deptsList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override List<Department> FindAllByProperty(string property, string value)
        {
            List<Department> deptsList = null;

            string sql = " select * from department where " + property + " like '" + value + "'";

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

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

            return deptsList;
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public override Department FindById(int id)
        {
            Department d = null;
            string sql = " select * from department where id_dept = " + id;

            _command.CommandText = sql;
            _command.CommandType = CommandType.Text;

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
            return d;
        }

        /// <summary>
        /// inserts into database the obj
        /// </summary>
        /// <param name="obj">object to insert into database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
        /// <returns>id of the saved entity</returns>
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
           
             _command.ExecuteNonQuery();

            return obj.Id;
        }

        /// <summary>
        /// updates the obj from database
        /// </summary>
        /// <param name="obj">object to update from database</param>
        /// <exception cref="System.Exception">ExecuteNonQuery()</exception>
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

            _command.ExecuteNonQuery();
        }
    }
}
