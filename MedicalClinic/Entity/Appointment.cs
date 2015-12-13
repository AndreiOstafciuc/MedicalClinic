using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Appointment
    {
        int _id;   
        int _idPacient;      
        int _idDoctor; 
        int _time;
        int _appointmentDate;
        String _symptom;

        public Appointment() { }
        public Appointment(int id, int idPacient,int idDoctor,int time,int appointmentDate){
            this._id = id;
            this._idPacient = idPacient;
            this._idDoctor=idDoctor;
            this._time = time;
            this._appointmentDate=appointmentDate;

        }

        public int AppointmentDate
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
        public String Symptom
        {
            get { return _symptom; }
            set { _symptom = value; }
        }

    }
}
