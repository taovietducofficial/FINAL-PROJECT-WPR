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
using EnglishCentreManagement.ViewModel.Dialog;

namespace EnglishCentreManagement.Dialog
{
    /// <summary>
    /// Interaction logic for CreateStudentDialog.xaml
    /// </summary>
    public partial class CreateStudentDialog : Window
    {
        public CreateStudentDialog()
        {
            InitializeComponent();
            DataContext =new CreateStudentViewModel();
        }
    }
}
