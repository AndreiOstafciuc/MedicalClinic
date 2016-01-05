
using GenericControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace UIViews
{
    public abstract class GenericUI: Grid
    {
        private CustomUserControl _header, _footer, _content;
        public delegate void ChangeMainWindowLayoutHandler(object sender, WindowLayoutEventArgs e);
        public event ChangeMainWindowLayoutHandler OnMainWindowLayoutChange;


        public abstract CustomUserControl getHeader();
        public abstract CustomUserControl getFooter();
        public abstract CustomUserControl getMainContent();
        public GenericUI() : base()
        {
            this.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            _header = getHeader();
            _footer = getFooter();
            _content = getMainContent();
            _content.HorizontalAlignment = HorizontalAlignment.Stretch;
            _content.VerticalAlignment = VerticalAlignment.Stretch;

            _content.OnPageContentChange += new CustomUserControl.ChangePageContentHandler(ChangePageContent);
            _content.OnWindowLayoutChange += new CustomUserControl.ChangeWindowLayoutHandler(ChangeWindowLayout);
            _header.OnWindowLayoutChange+= new CustomUserControl.ChangeWindowLayoutHandler(ChangeWindowLayout);
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
