// ***********************************************************************
* Author : Cosmanescu Roxana
* Description : A class derived form System.Windows.Controls.UserControl that has two custom events
*       ChangePageContentHandler -for changing the body of the current window
*       ChangeWindowLayoutHandler -for changing the window layout         
// <copyright file="DoctorAppointmentAssignResult.xaml.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System.Windows.Controls;

namespace GenericControls
{
    /// <summary>
    /// Contains two custom events
    /// ChangePageContentHandler -for changing the body of the current window
    /// ChangeWindowLayoutHandler -for changing the window layout
    /// </summary>
    public class CustomUserControl : UserControl
    {
        public delegate void ChangePageContentHandler(object sender, PageContentEventArgs e);

        public event ChangePageContentHandler OnPageContentChange;

        public delegate void ChangeWindowLayoutHandler(object sender, WindowLayoutEventArgs e);

        public event ChangeWindowLayoutHandler OnWindowLayoutChange;

        public CustomUserControl() : base()
        {
        }

        /// <summary>
        /// <param name="comp">comp an object of type CustomUserControl which will be set as the new body of the page </param>
        /// </summary>
        public void RaiseChangePageContentEvent(CustomUserControl comp)
        {
            if (OnPageContentChange == null) return;
            OnPageContentChange(this, new PageContentEventArgs(comp));
        }

        /// <summary>
        /// <param name="type">type is an integer that represents the type of user interface that will be displayed,</param>
        /// types of users are defined in Utils.UserTypes
        /// </summary>
        public void RaiseChangeWindowLayoutEvent(int type)
        {
            if (OnWindowLayoutChange == null) return;
            OnWindowLayoutChange(this, new WindowLayoutEventArgs(type));
        }
    }
}