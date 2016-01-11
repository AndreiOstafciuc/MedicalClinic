// ***********************************************************************
// Assembly         : UIViews
// Author           :
//
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
    /// Interaction logic for PatientUI.xaml
    /// </summary>
    public partial class PatientUI : GenericUI
    {
        public PatientUI() : base()
        {
            InitializeComponent();
        }

        public override CustomUserControl GetHeader()
        {
            return new HeaderWithLogout();
        }

        public override CustomUserControl GetFooter()
        {
            return new Footer();
        }

        public override CustomUserControl GetMainContent()
        {
            return new PatientPageContent();
        }
    }
}