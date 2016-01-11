// ***********************************************************************
// Assembly         : SessionData
// Author           :
//
// ***********************************************************************
// <copyright file="AppointmentService.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

namespace SessionData
{
    /// <summary>
    /// this class is used for storing data of the current loged in user
    /// </summary>
    public static class UserSessionData
    {
        private static int _currentUserId/* = 0*/;

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