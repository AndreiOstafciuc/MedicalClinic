using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    class Credentials
    {
        int _id;   
        String _username;     
        String _password;
        String _type;

        public Credentials() { }
        public Credentials(  int id,String username,String password,String type)
        {
            this._id = id;
            this._username = username;
            this._password = password;
            this._type = type;
        }
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public String Username
        {
            get { return _username; }
            set { _username = value; }
        }
        public String Password
        {
            get { return _password; }
            set { _password = value; }
        }
        public String Type
        {
            get { return _type; }
            set { _type = value; }
        }


    }
}
