// ***********************************************************************
// Assembly         : GenericControls
// Author           :
//
// ***********************************************************************
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System;

namespace GenericControls
{
    public class WindowLayoutEventArgs : EventArgs
    {
        private int _argWindowLayout;

        public int ArgWindowLayout
        {
            get
            {
                return _argWindowLayout;
            }

            private set
            {
                _argWindowLayout = value;
            }
        }

        public WindowLayoutEventArgs(int type)
        {
            ArgWindowLayout = type;
        }
    }
}