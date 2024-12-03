using EnglishCentreManagement.Database;
using EnglishCentreManagement.Dialog;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.UserControlProject;
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
    public class ManageTeacherClassRoomViewModel : BaseViewModel
    {
        private ContentControl _currentChildView;
        private Classroom _currentClassroom = new Classroom();
        private List<Classroom> yourClassRoom = new List<Classroom>();

        private IClassRoomDao clsDao = new ClassRoomDao();

        public ICommand ShowManageClassRoomDialog { get; }

        public ContentControl CurrentChildView
        {
            get => _currentChildView;
            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }

        public Classroom CurrentClassroom
        {
            get => _currentClassroom;
            set
            {
                _currentClassroom = value;
                OnPropertyChanged(nameof(CurrentClassroom));
            }
        }


        public List<Classroom> YourClassRoom
        {
            get => yourClassRoom;
            set
            {
                yourClassRoom = value;
                OnPropertyChanged(nameof(YourClassRoom));
            }
        }

        public ManageTeacherClassRoomViewModel()
        {
            _currentChildView = new ContentControl();
            yourClassRoom = clsDao.GetListTeacherClassroom(CurrentUser.Instance.CurrentTeacher);
            ShowManageClassRoomDialog = new RelayCommand<object>(ExcuteShowManageClassRoomDialog);
        }

        private void ExcuteShowManageClassRoomDialog(object obj)
        {
            Window dialog = new ManageClassroomsDialog(CurrentClassroom);
            dialog.ShowDialog();
        }
    }
}
