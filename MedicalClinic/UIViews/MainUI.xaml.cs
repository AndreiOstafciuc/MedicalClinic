using GenericControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

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
