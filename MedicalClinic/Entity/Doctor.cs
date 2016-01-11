/*
* Author : 
* Decription : 
*/

using System;

namespace Entity
{
    public class Doctor
    {
        int _id;
        String _lastName;
        String _firstName;
        int _idDept;
        String _phoneNumber;
        int _status;

        public Doctor() { }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">same ID as the credentials stored in the database for the doctor</param>
        /// <param name="lastName"></param>
        /// <param name="firstName"></param>
        /// <param name="idDept">a valid ID of an department from the database</param>
        /// <param name="phoneNumber"></param>
        /// <param name="status">from Utils.DoctorStatus as ACTIVE or INACTIVE</param>
        public Doctor(int id, String lastName, String firstName, int idDept, String phoneNumber, int status)
        {
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
        public int Status
        {
            get { return _status; }
            set { _status = value; }
        }



    }
}
