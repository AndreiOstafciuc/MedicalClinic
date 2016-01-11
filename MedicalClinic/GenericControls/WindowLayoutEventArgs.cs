// ***********************************************************************
* Author : Cosmanescu Roxana
* Description : WindowLayoutEventArgs is derived from EventArgs and contains an member of type int, 
*               _argWindowLayout represents the type of the user interface that will be set
*               more about these types are in Utils.UserTypes
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