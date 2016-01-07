using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenericControls
{
    public class PageContentEventArgs: EventArgs
    {
            private CustomUserControl _argPageContent;
            public CustomUserControl ArgPageContent
            {
                get
                {
                    return _argPageContent;
                }

                private set
                {
                _argPageContent = value;
                }
            }

        public PageContentEventArgs(CustomUserControl component)
        {
            ArgPageContent = component;
        }
   }
}

