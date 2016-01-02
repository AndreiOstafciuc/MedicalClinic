﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Credentials
    {
        int _id;   
        String _email;     
        String _password;
        int _type;

        public Credentials() { }
        public Credentials(  int id,String email,String password,int type)
        {
            this._id = id;
            this._email = email;
            this._password = password;
            this._type = type;
        }
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public String Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public String Password
        {
            get { return _password; }
            set { _password = value; }
        }
        public int Type
        {
            get { return _type; }
            set { _type = value; }
        }


    }
}
