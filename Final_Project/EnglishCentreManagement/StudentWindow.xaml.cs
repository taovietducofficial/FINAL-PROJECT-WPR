using EnglishCentreManagement.ViewModel;
using EnglishCentreManagement.ViewModel.MainView;
using System.Windows;

namespace EnglishCentreManagement
{
    /// <summary>
    /// Interaction logic for StudentWindow.xaml
    /// </summary>
    public partial class StudentWindow : Window
    {
        public StudentWindow()
        {
            InitializeComponent();
            DataContext = new StudentViewModel();
        }


    }
}
