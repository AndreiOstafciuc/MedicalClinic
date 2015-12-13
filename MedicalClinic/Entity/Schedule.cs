using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Schedule
    {
        int _id;  
        int _idDoctor;  
        int _day; 
        int _startHour;
        int _endHour;

        public Schedule() { }
        public Schedule(int id, int id_doctor,int day,int startHour, int endHour)
        {
            this._id = id;
            this._idDoctor = id_doctor;
            this._day = day;
            this._startHour = startHour;
            this._endHour = endHour;
        }
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public int Id_doctor
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
