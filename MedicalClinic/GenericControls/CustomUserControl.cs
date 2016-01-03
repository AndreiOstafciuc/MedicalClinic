using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace GenericControls
{
    public class CustomUserControl: UserControl
    {
        public delegate void ChangeContentHandler(object sender, UserControlEventArgs e);
        public event ChangeContentHandler OnPageContentChange;
        public CustomUserControl():base()
        {

        }
        public void RaiseChangePageContentEvent(CustomUserControl comp)
        {
            if (OnPageContentChange == null) return;
            OnPageContentChange(this, new UserControlEventArgs(comp));
        }

    }
}
