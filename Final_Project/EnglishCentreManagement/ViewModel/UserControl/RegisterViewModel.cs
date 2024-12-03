using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class RegisterViewModel : BaseViewModel
    {
        private string _errMsg;
        public List<Classroom> ListClassrooms { get; set; }
        private Student _currentStudent = CurrentUser.Instance.CurrentStudent;
        private Classroom _currentClassroom;

        public IClassRoomDao classroomDao = new ClassRoomDao();
        private IRegisterDao registerDao = new RegisterDao();
        private ICourseDAO courseDao = new CourseDAO();


        public ICommand RegisterClassroom { get; set; }

        public RegisterViewModel()
        {
            _errMsg = "";
            _currentClassroom = new Classroom();

            DataTable dtClassroom = classroomDao.getClassRoomDAO();
            ListClassrooms = new List<Classroom>(classroomDao.fillDataToListClassRoom(dtClassroom));
            RegisterClassroom = new RelayCommand<object>(CanExecuteRegisterClassroom, ExecuteRegisterClassroom);
        }

        public Student CurrentStudent { get => _currentStudent; }
        public Classroom CurrentClassroom
        {
            get => _currentClassroom;
            set
            {
                _currentClassroom = value;
                OnPropertyChanged(nameof(CurrentClassroom));
            }
        }
        public string ErrMsg
        {
            get => _errMsg == null ? "" : _errMsg;
            set
            {
                _errMsg = value;
                OnPropertyChanged(nameof(ErrMsg));
            }
        }

        private void ExecuteRegisterClassroom(object obj)
        {
            Course crs = courseDao.findCourseByID(CurrentClassroom.IDCourse);
            if (!crs.isNullValue())
            {
                if (_currentStudent.RankLevel < crs.InputLevel)
                    ErrMsg = "* You cannot sign up for this class as your rank level does not meet the classroom's input level";
                else if(CurrentClassroom.IsHaveSameTimeAsTheList(classroomDao.GetListRegisteredClassroom(_currentStudent)))
                    ErrMsg = "* You cannot sign up for this class because you have signed a class that have the same timespan of this class";
                else
                {
                    ErrMsg = "";
                    MessageBox.Show("You have registered a classroom!!!");
                    registerDao.Add(CurrentStudent, CurrentClassroom);
                }
            }
        }

        private bool CanExecuteRegisterClassroom(object obj)
        {
            if (_currentClassroom.IsHaveNullValue())
                return false;
            return true;
        }
    }
}
