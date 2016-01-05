using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utils
{
    public class DoctorStatus
    {
        public static Dictionary<int, string> doctorStatuses = new Dictionary<int, string>() { { 0, "inactive" }, { 1, "active" } };
    }
}
