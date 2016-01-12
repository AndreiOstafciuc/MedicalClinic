// ***********************************************************************
// Assembly         : DAO
// Author           : Andrei Ostafciuc
//
// ***********************************************************************
// <copyright file="DAO.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using DBConnNamespace;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;

namespace DAO
{
    public abstract class DAO<Object>
    {
        private OracleCommand __command;

        protected OracleCommand _command
        {
            get
            {
                return __command;
            }
            set
            {
                __command = value;
            }
        }

        private OracleDataReader __dataReader;

        protected OracleDataReader _dataReader
        {
            get
            {
                return __dataReader;
            }
            set
            {
                __dataReader = value;
            }
        }

        private OracleTransaction __tr;

        protected OracleTransaction _tr
        {
            get
            {
                return __tr;
            }
            set
            {
                __tr = value;
            }
        }

        public DAO()
        {
            _command = new OracleCommand();
            _command.Connection = DBConnection.Connection;
        }

        abstract public int Save(Object obj);

        abstract public void Update(Object obj);

        abstract public Object FindById(int id);

        abstract public List<Object> FindAll();

        abstract public List<Object> FindAllByProperty(String property, String value);
    }
}