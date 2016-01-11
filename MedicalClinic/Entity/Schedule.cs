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

namespace Entity
{
    public class Schedule
    {
        private int _id;
        private int _idDoctor;
        private int _day;
        private int _startHour;
        private int _endHour;

        public Schedule()
        {
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="idDoctor">the id got from the Save() method on credentialsService</param>
        /// <param name="day">day of week [0-6] where 0 == "sunday"</param>
        /// <param name="startHour"></param>
        /// <param name="endHour"></param>
        public Schedule(int idDoctor, int day, int startHour, int endHour)
        {
            this._idDoctor = idDoctor;
            this._day = day;
            this._startHour = startHour;
            this._endHour = endHour;
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public int IdDoctor
        {
            get { return _idDoctor; }
            set { _idDoctor = value; }
        }

        public int Day
        {
            get { return _day; }
            set { _day = value; }
        }

        public int StartHour
        {
            get { return _startHour; }
            set { _startHour = value; }
        }

        public int EndHour
        {
            get { return _endHour; }
            set { _endHour = value; }
        }
    }
}