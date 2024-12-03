using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace EnglishCentreManagement.UserControlProject
{
    /// <summary>
    /// Interaction logic for DataGridUC.xaml
    /// </summary>
    public partial class DataGridUC : UserControl
    {
        public DataGridUC()
        {
            InitializeComponent();
        }

        public static readonly DependencyProperty DataListProperty = DependencyProperty.Register("DataList", typeof(ObservableCollection<object>),typeof(DataGridUC),new PropertyMetadata(null));

        public ObservableCollection<object> DataList
        {
            get { return (ObservableCollection<object>)GetValue(DataListProperty); }
            set { SetValue(DataListProperty, value); }
        }
    }
}
