using System.Collections.Generic;

namespace Utils
{
    /// <summary>
    /// the doctor has two "states", either ACTIVE (as working for the MedicalClinic), either INACTIVE (left Clinic, vacation or any other)
    /// </summary>
    public class DoctorStatus
    {
        public const int INACTIVE = 0;
        public const int ACTIVE = 1;
        public static Dictionary<int, string> doctorStatuses = new Dictionary<int, string>() { { 0, "INACTIVE" }, { 1, "ACTIVE" } };
    }
}
