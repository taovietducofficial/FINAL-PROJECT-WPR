using EnglishCentreManagement.ViewModel;
using EnglishCentreManagement.ViewModel.MainView;
using System.Windows;

namespace EnglishCentreManagement
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
            DataContext = new LoginViewModel();
        }
    }
}
