﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Results
    {
        int _id;
        int _idAppointment;       
        DateTime _resultDate;    
        String _symptoms;
        String _diagnosis;
        String _medication;

        public Results() { }
        public Results(int idAppointment, DateTime resultDate,String symptoms,String diagnosis,String medication)
        {
            this._idAppointment = idAppointment;
            this._resultDate = resultDate;
            this._symptoms = symptoms;
            this._diagnosis = diagnosis;
            this._medication = medication;
        }
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public int IdAppointment
        {
            get { return _idAppointment; }
            set { _idAppointment = value; }
        }
        public DateTime ResultDate
        {
            get { return _resultDate; }
            set { _resultDate = value; }
        }
        public String Symptoms
        {
            get { return _symptoms; }
            set { _symptoms = value; }
        }
        public String Diagnosis
        {
            get { return _diagnosis; }
            set { _diagnosis = value; }
        }
        public String Medication
        {
            get { return _medication; }
            set { _medication = value; }
        }


    }
}
