using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
   public class CleanupService : DAO<Object>
    {
        public override List<object> FindAll()
        {
            throw new NotImplementedException();
        }

        public override List<object> FindAllByProperty(string property, string value)
        {
            throw new NotImplementedException();
        }

        public override object FindById(int id)
        {
            throw new NotImplementedException();
        }

        public override int Save(object obj)
        {
            throw new NotImplementedException();
        }

        public override void Update(object obj)
        {
            throw new NotImplementedException();
        }

        /// <exception cref="System.Exception">no active connection by ExecuteReader()</exception>
        public void CleanDatabase()
        {
            _command.CommandType = CommandType.StoredProcedure;
            _command.CommandText = "cleandatabase_proc";
            _command.ExecuteNonQuery();
        }
    }
}
