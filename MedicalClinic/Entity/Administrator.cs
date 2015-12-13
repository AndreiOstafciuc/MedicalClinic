using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    class Administrator
    {
        int _id;
        String _firstName;
        String _lastName;
        public Administrator() { }
        public Administrator(int id, String firstName, String lastName)
        {
            this._id = id;
            this._firstName = firstName;
            this._lastName = lastName;
        }
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public String FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        public String LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }


    }
}
