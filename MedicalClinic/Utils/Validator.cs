// Author : Cosmanescu Roxana
// Description : Contains various methods for validating emails, appointment date, appointment time, birthdates, password///
// ***********************************************************************
// <copyright file="Validator.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System;
using System.Text.RegularExpressions;

namespace Utils
{
    public static class Validator
    {
        /// <summary> 
        /// validate email according to format presented in RFC 2822 
        /// <param name="email">email is a String representing the email to validate</param>
        /// </summary>
        public static bool ValidateEmail(String email)
        {
            return Regex.IsMatch(email, @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z", RegexOptions.IgnoreCase);
        }

        /// <summary> 
        /// validate phone number to contain exactly 10 characters from 0 to 9
        /// <param name="phoneNumber">phoneNumber is a String representing the phone number to validate</param>
        /// </summary>
        public static bool ValidatePhoneNumber(String phoneNumber)
        {
            return Regex.IsMatch(phoneNumber, "^[0-9]+$", RegexOptions.IgnoreCase) && (phoneNumber.Length == 10);
        }

        /// <summary> 
        /// validate birthdate to be earlier than the current date
        /// <param name="birthdate">birthdate is a DateTime representing the birthdate to validate</param>
        /// </summary>
        public static bool ValidateBithdate(DateTime birthdate)
        {
            if (DateTime.Compare(birthdate, DateTime.Now) >= 0)
            {
                return false;
            }
            return true;
        }

        /// <summary> 
        /// validate appointmentDate to be later then or the same as current date
        /// <param name="appointmentDate">appointmentDate is a DateTime representing the appointment date to validate</param>
        /// </summary>
        public static bool ValidateAppointmentDate(DateTime appointmentDate)
        {
            if (DateTime.Compare(appointmentDate, DateTime.Now) < 0)
            {
                return false;
            }
            return true;
        }

        /// <summary> 
        /// validate hour to be between 00 and 24
        /// <param name="hour">hour is a String representing the hour to validate</param>
        /// </summary>
        public static bool ValidateAppointmentHour(String hour)
        {
            return Regex.IsMatch(hour, "0[0-9]|1[0-9]|2[0-4]") && (hour.Length == 2);
        }

        /// <summary> 
        /// validate password, password must be at least 6 characters long
        /// <param name="pass">pass is a String representing the password to validate</param>
        /// </summary>
        public static bool ValidatePassword(String pass)
        {
            if (pass.Length < 6)
            {
                return false;
            }
            return true;
        }
    }
}