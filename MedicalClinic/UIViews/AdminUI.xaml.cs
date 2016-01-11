/*
* Author : 
* Decription : 
*/

using GenericControls;

namespace UIViews
{
    /// <summary>
    /// Interaction logic for AdminUI.xaml
    /// </summary>
    public partial class AdminUI : GenericUI
    {
        public AdminUI() : base()
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
            return new AdminPageContent();
        }
    }
}
