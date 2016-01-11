using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Utils
{
    public static class Validator
    {
        public static bool ValidateEmail(String email)
        {
           return Regex.IsMatch(email, @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z", RegexOptions.IgnoreCase);
        }
        public static bool ValidatePhoneNumber(String phoneNumber)
        {
            return Regex.IsMatch(phoneNumber, "^[0-9]+$", RegexOptions.IgnoreCase) && (phoneNumber.Length == 10);
        }
        public static bool ValidateBithdate(DateTime birthdate)
        {
            if(DateTime.Compare(birthdate,DateTime.Now)>=0)
            {
                return false;
            }
            return true;
        }
        public static bool ValidateAppointmentDate(DateTime appointmentDate)
        {
            if (DateTime.Compare(appointmentDate, DateTime.Now) <0)
            {
                return false;
            }
            return true;
        }
        public static bool ValidateAppointmentHour(String hour)
        {
            return Regex.IsMatch(hour, "0[0-9]|1[0-9]|2[0-4]") && (hour.Length == 2);
        }
        public static bool ValidatePassword(String pass)
        {
            if(pass.Length<6)
            {
                return false;
            }
            return true;
        }
    }
}
