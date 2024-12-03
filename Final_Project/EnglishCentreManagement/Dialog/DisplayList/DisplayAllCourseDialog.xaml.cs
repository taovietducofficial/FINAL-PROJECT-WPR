using EnglishCentreManagement.ViewModel.Dialog.DisplayList;
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

namespace EnglishCentreManagement.Dialog.DisplayList
{
    /// <summary>
    /// Interaction logic for DisplayAllCourseDialog.xaml
    /// </summary>
    public partial class DisplayAllCourseDialog : Window
    {
        public DisplayAllCourseDialog()
        {
            InitializeComponent();
            DataContext = new DisplayAllCourseViewModel();
        }
    }
}
