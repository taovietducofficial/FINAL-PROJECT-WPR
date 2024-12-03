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
    /// Interaction logic for BindablePasswordUC.xaml
    /// </summary>
    public partial class BindablePasswordUC : UserControl
    {
        public static readonly DependencyProperty PasswordProperty = DependencyProperty.Register("Password", typeof(string), typeof(BindablePasswordUC));

        public string Password
        {
            get { return (string)GetValue(PasswordProperty);  }
            set { SetValue(PasswordProperty, value); } 
        }

        public BindablePasswordUC()
        {
            InitializeComponent();
            txbPassword.PasswordChanged += OnPasswordChange;
        }

        private void OnPasswordChange(object sender, RoutedEventArgs e)
        {
            Password = txbPassword.Password;    
        }
    }
}
