using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SessionData
{
    public static class UserSessionData
    {
        private static int _currentUserId;

        public static int CurrentUserId
        {
            get { return _currentUserId; }
        }
        public static void SaveUserSessionData(int id)
        {
            _currentUserId = id;
        }

    }
}
