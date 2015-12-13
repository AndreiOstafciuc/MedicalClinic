using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Doctor
    {
        int _id;
        String _lastName;
        String _firstName;
        int _idDept;
        String _phoneNumber;
        Boolean _status;

        public Doctor() { }
        public Doctor( int id,String lastName,String firstName,int idDept,String phoneNumber,Boolean status) {
            this._id = id;
            this._lastName = lastName;
            this._firstName = firstName;
            this._idDept = idDept;
            this._phoneNumber = phoneNumber;
            this._status = status;
        }
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public String LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        public String FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        public int IdDept
        {
            get { return _idDept; }
            set { _idDept = value; }
        }
        public String PhoneNumber
        {
            get { return _phoneNumber; }
            set { _phoneNumber = value; }
        }
        public Boolean Status
        {
            get { return _status; }
            set { _status = value; }
        }



    }
}
