using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utils
{
    public class DoctorStatus
    {
        public const int INACTIVE = 0;
        public const int ACTIVE = 1;
        public static Dictionary<int, string> doctorStatuses = new Dictionary<int, string>() { { 0, "INACTIVE" }, { 1, "ACTIVE" } };
    }
}
