/*
* Author : Cosmanescu Roxana
* Description : PatientUI is derived from GenericUI and overrides GetHeader, GetFooter and GetMainContent methods
*              in order to return elements specific for the patient UI
*/

using GenericControls;

namespace UIViews
{
    /// <summary>
    /// Interaction logic for PatientUI.xaml
    /// </summary>
    public partial class PatientUI : GenericUI
    {
        public PatientUI() : base()
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
            return new PatientPageContent();
        }
    }
}
