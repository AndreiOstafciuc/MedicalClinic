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
        public override CustomUserControl GetFooter()
        {
            return new Footer();
        }

        public override CustomUserControl GetHeader()
        {
            return new Header();
        }

        public override CustomUserControl GetMainContent()
        {
            return new GenericControls.HomePageContent();
        }
        
    }
}
