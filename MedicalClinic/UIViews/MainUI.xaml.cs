﻿using GenericControls;

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
            return new GenericControls.HomePageContent();
        }
        
    }
}
