using EnglishCentreManagement.ViewModel;
using EnglishCentreManagement.ViewModel.MainView;
using System.Windows;

namespace EnglishCentreManagement
{
    /// <summary>
    /// Interaction logic for TeacherWindow.xaml
    /// </summary>
    public partial class TeacherWindow : Window
    {
        public TeacherWindow()
        {
            InitializeComponent();
            DataContext = new TeacherViewModel();
        }
    }
}
