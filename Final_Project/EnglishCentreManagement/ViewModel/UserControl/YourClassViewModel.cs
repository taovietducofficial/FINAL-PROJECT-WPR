using EnglishCentreManagement.Database;
using EnglishCentreManagement.Dialog;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class YourClassViewModel : BaseViewModel
    {
        private List<Classroom> _listRegisteredClassroom = new List<Classroom>();

        private ClassRoomDao clsDao = new ClassRoomDao();

        public ICommand DeleteRegisteredClassroomCommand { get; }
        public ICommand ShowYourTestInClassroomCommand { get; }

        public List<Classroom> ListRegisteredClassroom
        {
            get => _listRegisteredClassroom;
            set
            {
                _listRegisteredClassroom = value;
                OnPropertyChanged(nameof(ListRegisteredClassroom));
            }
        }

        public YourClassViewModel()
        {
            LoadRegisterdClassroom();
            DeleteRegisteredClassroomCommand = new RelayCommand<string>(ExecuteDeleteRegisteredClassroom);
            ShowYourTestInClassroomCommand = new RelayCommand<ListView>(ExcuteShowYourTestInClassroomCommand);
        }

        private void ExcuteShowYourTestInClassroomCommand(ListView lv)
        {
            Classroom? cls = lv.SelectedItem as Classroom;
            Window dialog = new YourTestInClassroom();
            if(cls != null)
                ((YourTestInClassroomViewModel)dialog.DataContext).CurrentClassroom = cls;
            dialog.ShowDialog();
        }

        private void ExecuteDeleteRegisteredClassroom(string clsid)
        {
            clsDao.DeleteRegisteredClassroom(CurrentUser.Instance.CurrentStudent.Enter_Infor.ID, clsid);
            MessageBox.Show("You have canceled a classroom!!!");
            LoadRegisterdClassroom();
        }

        private void LoadRegisterdClassroom()
        {
            ListRegisteredClassroom = clsDao.GetListRegisteredClassroom(CurrentUser.Instance.CurrentStudent);
        }
    }
}
