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
    /// Interaction logic for ManageClassroomsDialog.xaml
    /// </summary>
    public partial class ManageClassroomsDialog : Window
    {
        public ManageClassroomsDialog(Classroom CurrentClassroom)
        {
            InitializeComponent();
            DataContext = new EditTeacherClassroomsViewModel(CurrentClassroom);
        }
    }
}
