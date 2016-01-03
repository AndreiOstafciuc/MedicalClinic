using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenericControls
{
    public class UserControlEventArgs: EventArgs
    {
            private CustomUserControl _argUserControl;
            public CustomUserControl ArgUserControl
            {
                get
                {
                    return _argUserControl;
                }

                private set
                {
                 _argUserControl = value;
                }
            }

        public UserControlEventArgs(CustomUserControl component)
        {
            ArgUserControl = component;
        }
   }
}

