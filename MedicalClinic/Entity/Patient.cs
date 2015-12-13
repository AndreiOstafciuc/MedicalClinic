using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    class Patient
    {
        int _id;
        String _lastName;
        String _firstName;  
        String _insuranceNumber; 
        String _address;
        DateTime _birthDate;     
        String _geneticDiseases;      
        String _phoneNumber;

        public Patient(){}

        public Patient( int id,String lastName,String firstName,String insuranceNumber,String address,DateTime birthDate,String geneticDiseases,String phoneNumber)
        {
            this._id = id;
            this._lastName = lastName;
            this._firstName = firstName;
            this._insuranceNumber = insuranceNumber;
            this._address = address;
            this._birthDate = birthDate;
            this._geneticDiseases = geneticDiseases;
            this._phoneNumber = phoneNumber;
        }
   
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public String LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        public String FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        public String InsuranceNumber
        {
            get { return _insuranceNumber; }
            set { _insuranceNumber = value; }
        }
        public String Address
        {
            get { return _address; }
            set { _address = value; }
        }
        public DateTime BirthDate
        {
            get { return _birthDate; }
            set { _birthDate = value; }
        }
        public String GeneticDiseases
        {
            get { return _geneticDiseases; }
            set { _geneticDiseases = value; }
        }
        public String PhoneNumber
        {
            get { return _phoneNumber; }
            set { _phoneNumber = value; }
        }



    }
}
