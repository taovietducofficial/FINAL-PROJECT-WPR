using EnglishCentreManagement.ViewModel;
using EnglishCentreManagement.ViewModel.MainView;
using System.Windows;

namespace EnglishCentreManagement
{
    /// <summary>
    /// Interaction logic for ManagerWindow.xaml
    /// </summary>
    public partial class ManagerWindow : Window
    {
        public ManagerWindow()
        {
            InitializeComponent();
            DataContext = new ManagerViewModel();
        }
    }
}
