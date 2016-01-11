// ***********************************************************************
// Author : Cosmanescu Roxana
// Description : MainUI is derived from GenericUI and overrides GetHeader, GetFooter and GetMainContent methods//              in order to return elements specific for the main UI that contains the home page of the app
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
    /// Interaction logic for LoginUi.xaml
    /// </summary>
    public partial class MainUI : GenericUI
    {
        public MainUI() : base()
        {
            InitializeComponent();
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
        /// returns an object representing the header
        /// </summary>
        /// <returns>CustomUserControl</returns>
        public override CustomUserControl GetHeader()
        {
            return new Header();
        }

        /// <summary>
        /// returns an object representing the body
        /// </summary>
        /// <returns>CustomUserControl</returns>
        public override CustomUserControl GetMainContent()
        {
            return new GenericControls.HomePageContent();
        }
    }
}