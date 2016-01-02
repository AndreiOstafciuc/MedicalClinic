﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Administrator
    {
        int _id_admin;
        String _firstName;
        String _lastName;
        public Administrator() { }
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
