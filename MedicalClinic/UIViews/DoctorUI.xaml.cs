// ***********************************************************************
// Author : Cosmanescu Roxana
// Description : DoctorUI is derived from GenericUI and overrides GetHeader, GetFooter and GetMainContent methods//              in order to return elements specific for the doctor UI
// ***********************************************************************
// <copyright file="DoctorStatus.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using GenericControls;

namespace UIViews
{
    /// <summary>
    /// Interaction logic for DoctorUI.xaml
    /// </summary>
    public partial class DoctorUI : GenericUI
    {
        public DoctorUI() : base()
        {
            InitializeComponent();
        }
        /// <summary>
        /// returns an object representing the header
        /// </summary>
        /// <returns>CustomUserControl</returns>
        public override CustomUserControl GetHeader()
        {
            return new HeaderWithLogout();
        }
        /// <summary>
        /// returns an object representing the footer
        /// </summary>
        /// <returns>CustomUserControl</returns>
        public override CustomUserControl GetFooter()
        {
            return new Footer();
        }
        /// <summary>
        /// returns an object representing the body
        /// </summary>
        /// <returns>CustomUserControl</returns>
        public override CustomUserControl GetMainContent()
        {
            return new DoctorAppointmentsPage();
        }
    }
}