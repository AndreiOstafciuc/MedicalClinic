using System;

namespace Entity
{
    public class Appointment
    {
        int _id;   
        int _idPacient;      
        int _idDoctor; 
        int _time;
        DateTime _appointmentDate;
        String _symptoms;

        public Appointment() { }
        public Appointment(int idPacient,int idDoctor,int time, DateTime appointmentDate,String symtoms){
            this._idPacient = idPacient;
            this._idDoctor=idDoctor;
            this._time = time;
            this._appointmentDate=appointmentDate;
            this._symptoms = symtoms;
        }

        public DateTime AppointmentDate
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
