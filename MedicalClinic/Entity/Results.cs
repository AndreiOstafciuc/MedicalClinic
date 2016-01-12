// ***********************************************************************
// Assembly         : Entity
// Author           : Marius Bordeian
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
    public class Results
    {
        private int _id;
        private int _idAppointment;
        private DateTime _resultDate;
        private String _symptoms;
        private String _diagnosis;
        private String _medication;

        public Results()
        {
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="idAppointment">a valid appointmentID from the database</param>
        /// <param name="resultDate"></param>
        /// <param name="symptoms"></param>
        /// <param name="diagnosis"></param>
        /// <param name="medication"></param>
        public Results(int idAppointment, DateTime resultDate, String symptoms, String diagnosis, String medication)
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