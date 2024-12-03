using EnglishCentreManagement.ViewModel.UserControl;
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
    /// Interaction logic for MakingStatisticsForTeacherUC.xaml
    /// </summary>
    public partial class MakingStatisticsForTeacherUC : UserControl
    {
        public MakingStatisticsForTeacherUC()
        {
            InitializeComponent();
            DataContext = new MakingStatisticsForTeacherViewModel();
        }
    }
}
