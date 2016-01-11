/*
* Author : Cosmanescu Roxana
* Description : GenericUI is derived from Grid and it is an abstract class
*              Contains three abstract methods GetHeader, GetFooter and GetMainContent that return an object of type CustomUserControl
*              It is the base class from the Template Method pattern
*              The recipe is presented in the constructor and it says that each UI interface in this app must have a header, a mainContent and a footer,
*              the content of this elements can vary but their locations and dimensions must be always the same 
*              header is located on the top of the page
*              footer is located on the bottom of the page
*              body is located between header and footer
*              also here are assigned and handlers for the custom events : ChangeMainWindowLayoutEvent and ChangePageContentEvent
*              if an event ChangeMainWindowLayoutEvent is raised then this event is sent to the main window that has registered an handler for this tyoe of event
*/

using GenericControls;
using System.Windows;
using System.Windows.Controls;

namespace UIViews
{
    public abstract class GenericUI : Grid
    {
        private CustomUserControl _header, _footer, _content;
        public delegate void ChangeMainWindowLayoutHandler(object sender, WindowLayoutEventArgs e);
        public event ChangeMainWindowLayoutHandler OnMainWindowLayoutChange;


        public abstract CustomUserControl GetHeader();
        public abstract CustomUserControl GetFooter();
        public abstract CustomUserControl GetMainContent();
        /// <summary>
        /// contains the recipe that says that each UI interface in this app must have a header, 
        /// a mainContent and a footer,
        /// the content of this elements can vary but their locations and dimensions must be always the same
        /// header is located on the top of the page
        /// footer is located on the bottom of the page
        /// body is located between header and footer       
        /// </summary>
        public GenericUI() : base()
        {
            this.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            _header = GetHeader();
            _footer = GetFooter();
            _content = GetMainContent();
            _content.HorizontalAlignment = HorizontalAlignment.Stretch;
            _content.VerticalAlignment = VerticalAlignment.Stretch;

            _content.OnPageContentChange += new CustomUserControl.ChangePageContentHandler(ChangePageContent);
            _content.OnWindowLayoutChange += new CustomUserControl.ChangeWindowLayoutHandler(ChangeWindowLayout);
            _header.OnWindowLayoutChange += new CustomUserControl.ChangeWindowLayoutHandler(ChangeWindowLayout);
            this.RowDefinitions.Add(new RowDefinition());
            this.RowDefinitions.Add(new RowDefinition());
            this.RowDefinitions.Add(new RowDefinition());

            this.RowDefinitions[0].Height = new GridLength(50);
            this.RowDefinitions[1].Height = new GridLength(1, GridUnitType.Star);
            this.RowDefinitions[2].Height = new GridLength(30);
            Grid.SetRow(_header, 0);
            Grid.SetColumn(_header, 0);
            Grid.SetRow(_content, 1);
            Grid.SetColumn(_content, 0);
            Grid.SetRow(_footer, 2);
            Grid.SetColumn(_footer, 0);

            this.Children.Add(_header);
            this.Children.Add(_content);
            this.Children.Add(_footer);
        }
        /// <summary>
        /// handler for ChangePageContentEvent
        /// content page is changed according to the new pageContent from PageContentEventArgs
        /// register handlers for the custom events
        /// </summary>
        private void ChangePageContent(object sender, PageContentEventArgs e)
        {
            this.Children.Remove(_content);
            _content = e.ArgPageContent;
            _content.HorizontalAlignment = HorizontalAlignment.Stretch;
            _content.VerticalAlignment = VerticalAlignment.Stretch;
            _content.OnPageContentChange += new CustomUserControl.ChangePageContentHandler(ChangePageContent);
            _content.OnWindowLayoutChange += new CustomUserControl.ChangeWindowLayoutHandler(ChangeWindowLayout);
            _content.OnPageContentChange += new CustomUserControl.ChangePageContentHandler(ChangePageContent);
            Grid.SetRow(_content, 1);
            this.Children.Add(_content);

        }
        /// <summary>
        /// raise WindowLayoutEvent to the main window that has a handler registered
        /// </summary>
        private void ChangeWindowLayout(object sender, WindowLayoutEventArgs e)
        {
            RaiseChangeMainWindowLayoutEvent(e.ArgWindowLayout);
        }
        public void RaiseChangeMainWindowLayoutEvent(int type)
        {
            if (OnMainWindowLayoutChange == null) return;
            OnMainWindowLayoutChange(this, new WindowLayoutEventArgs(type));
        }

    }
}
