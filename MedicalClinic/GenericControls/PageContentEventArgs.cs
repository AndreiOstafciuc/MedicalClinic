/*
* Author : Cosmanescu Roxana
* Description : PageContentEventArgs is derived from EventArgs and contains an member of type CustomUserControl
*               _argPageContent represents the new page that will be set as body content
*/

using System;

namespace GenericControls
{
    public class PageContentEventArgs : EventArgs
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

