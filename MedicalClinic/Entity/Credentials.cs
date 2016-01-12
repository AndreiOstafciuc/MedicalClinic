// ***********************************************************************
// Assembly         : Entity
// Author           : Andrei Ostafciuc
//
// ***********************************************************************
// <copyright file="AppointmentService.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System;

namespace Entity
{
    public class Credentials
    {
        private int _id;
        private String _email;
        private String _password;
        private int _type;

        public Credentials()
        {
        }

        public Credentials(String email, String password, int type)
        {
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