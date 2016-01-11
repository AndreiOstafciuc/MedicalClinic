/*
* Author : 
* Decription : 
*/

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
            return new DoctorAppointmentsPage();
        }
    }
}
