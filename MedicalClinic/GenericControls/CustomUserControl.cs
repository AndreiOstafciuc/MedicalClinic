
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
        public delegate void ChangePageContentHandler(object sender, PageContentEventArgs e);
        public event ChangePageContentHandler OnPageContentChange;
        public delegate void ChangeWindowLayoutHandler(object sender, WindowLayoutEventArgs e);
        public event ChangeWindowLayoutHandler OnWindowLayoutChange;

        public CustomUserControl():base()
        {

        }
        public void RaiseChangePageContentEvent(CustomUserControl comp)
        {
            if (OnPageContentChange == null) return;
            OnPageContentChange(this, new PageContentEventArgs(comp));
        }
        public void RaiseChangeWindowLayoutEvent(int type)
        {
            if (OnWindowLayoutChange == null) return;
            OnWindowLayoutChange(this, new WindowLayoutEventArgs(type));
        }

    }
}
