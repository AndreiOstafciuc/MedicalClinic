using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace GenericControls
{
    public class WindowLayoutEventArgs:EventArgs
    {
        private int _argWindowLayout;
        public int ArgWindowLayout
        {
            get
            {
                return _argWindowLayout;
            }

            private set
            {
                _argWindowLayout = value;
            }
        }

        public WindowLayoutEventArgs(int type)
        {
            ArgWindowLayout = type;
        }
    }
}
