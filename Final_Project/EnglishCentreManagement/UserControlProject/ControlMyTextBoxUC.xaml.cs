using System;
using System.Collections.Generic;
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
    /// Interaction logic for ControlMyTextBoxUC.xaml
    /// </summary>
    public partial class ControlMyTextBoxUC : UserControl
    {
        public ControlMyTextBoxUC()
        {
            InitializeComponent();
        }
        public static readonly DependencyProperty HintProperty = DependencyProperty.Register
    ("Hint", typeof(string), typeof(ControlMyTextBoxUC));
        public string Hint
        {
            get { return (string)GetValue(HintProperty); }
            set { SetValue(HintProperty, value); }
        }
    }
}
