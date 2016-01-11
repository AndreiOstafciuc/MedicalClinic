// ***********************************************************************
// Assembly         : Entity
// Author           :
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
    public class Appointment
    {
        private int _id;
        private int _idPacient;
        private int _idDoctor;
        private int _time;
        private DateTime _appointmentDate;
        private String _symptoms;

        public Appointment()
        {
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="idPacient">an ID for a patient from the database</param>
        /// <param name="idDoctor">an ID for a doctor from the database</param>
        /// <param name="time">hour at what appointment starts</param>
        /// <param name="appointmentDate"></param>
        /// <param name="symtoms"></param>
        public Appointment(int idPacient, int idDoctor, int time, DateTime appointmentDate, String symtoms)
        {
            this._idPacient = idPacient;
            this._idDoctor = idDoctor;
            this._time = time;
            this._appointmentDate = appointmentDate;
            this._symptoms = symtoms;
        }

        public DateTime ScheduledDate
        {
            get { return _appointmentDate; }
            set { _appointmentDate = value; }
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public int IdPacient
        {
            get { return _idPacient; }
            set { _idPacient = value; }
        }

        public int IdDoctor
        {
            get { return _idDoctor; }
            set { _idDoctor = value; }
        }

        public int Time
        {
            get { return _time; }
            set { _time = value; }
        }

        public String Symptoms
        {
            get { return _symptoms; }
            set { _symptoms = value; }
        }
    }
}