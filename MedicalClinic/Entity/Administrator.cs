/*
* Author : 
* Decription : 
*/

using System;

namespace Entity
{
    public class Administrator
    {
        int _id_admin;
        String _firstName;
        String _lastName;
        public Administrator() { }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">the ID of the stored credentials in the database</param>
        /// <param name="firstName"></param>
        /// <param name="lastName"></param>
        public Administrator(int id, String firstName, String lastName)
        {
            this._id_admin = id;
            this._firstName = firstName;
            this._lastName = lastName;
        }
        public int Id
        {
            get { return _id_admin; }
            set { _id_admin = value; }
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
