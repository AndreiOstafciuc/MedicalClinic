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
        public abstract UserControl getHeader();
        public abstract UserControl getFooter();
        public abstract UserControl getMainContent();
        public GenericUI() : base()
        {
            this.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            UserControl header = getHeader();
            UserControl footer = getFooter();
            UserControl content = getMainContent();

            this.RowDefinitions.Add(new RowDefinition());
            this.RowDefinitions.Add(new RowDefinition());
            this.RowDefinitions.Add(new RowDefinition());
            this.RowDefinitions[0].Height = new GridLength(50);
            this.RowDefinitions[1].Height = new GridLength(1, GridUnitType.Star);
            this.RowDefinitions[2].Height = new GridLength(30);
            Grid.SetRow(header, 0);
            Grid.SetColumn(header, 0);
            Grid.SetRow(content, 1);
            Grid.SetColumn(content, 0);
            Grid.SetRow(footer, 2);
            Grid.SetColumn(footer, 0);

            this.Children.Add(header);
            this.Children.Add(content);
            this.Children.Add(footer);
        }
    }
}
