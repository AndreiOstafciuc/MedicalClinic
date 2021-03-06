﻿// ***********************************************************************
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
    public class Patient
    {
        private int _id;
        private String _lastName;
        private String _firstName;
        private String _insuranceNumber;
        private String _address;
        private DateTime _birthDate;
        private String _geneticDiseases;
        private String _phoneNumber;

        public Patient()
        {
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="id">same ID as the credentials for the patient</param>
        /// <param name="lastName"></param>
        /// <param name="firstName"></param>
        /// <param name="insuranceNumber"></param>
        /// <param name="address"></param>
        /// <param name="birthDate"></param>
        /// <param name="geneticDiseases"></param>
        /// <param name="phoneNumber"></param>
        public Patient(int id, String lastName, String firstName, String insuranceNumber, String address, DateTime birthDate, String geneticDiseases, String phoneNumber)
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