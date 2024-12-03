using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel;
using EnglishCentreManagement.ViewModel.Dialog;
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
using System.Windows.Shapes;

namespace EnglishCentreManagement.Dialog
{
    /// <summary>
    /// Interaction logic for CreateScoreBoardDialog.xaml
    /// </summary>
    public partial class CreateScoreBoardDialog : Window
    {
        public CreateScoreBoardDialog(string idTest)
        {
            InitializeComponent();
            DataContext = new CreateScoreBoardViewModel(idTest);
        }
    }
}
