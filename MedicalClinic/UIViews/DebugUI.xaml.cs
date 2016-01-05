using GenericControls;

namespace UIViews
{
    /// <summary>
    /// Interaction logic for LoginUi.xaml
    /// </summary>
    public partial class DebugUI : GenericUI
    {

        public DebugUI() : base()
        {
            InitializeComponent();
        }
        public override CustomUserControl getFooter()
        {
            return new Footer();
        }

        public override CustomUserControl getHeader()
        {
            return new Header();
        }

        public override CustomUserControl getMainContent()
        {
            return new GenericControls.TestContent();
        }

    }
}