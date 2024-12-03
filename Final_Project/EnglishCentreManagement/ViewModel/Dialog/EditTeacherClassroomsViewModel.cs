using EnglishCentreManagement.Database;
using EnglishCentreManagement.Dialog;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.Dialog
{
    public class EditTeacherClassroomsViewModel : BaseViewModel
    {
        private static Classroom _currentClassroom = new Classroom();
        private Test _currentTest = new Test();
        private List<Test> listTest = new List<Test>();

        private List<Student> listStudent = new List<Student>();

        private IStudentDao stdDao = new StudentDAO();
        private ITestDAO testDAO = new TestDAO();

        public ICommand ShowAddNewTestCommand { get; }
        public ICommand DeleteTestCommand { get; }
        public ICommand ShowCreatScoreBoardCommand { get; }
        public ICommand UpdateStudentLevelCommand { get; }


        public static Classroom CurrentClassroom { get => _currentClassroom; set => _currentClassroom = value; }
        public Test CurrentTest
        {
            get => _currentTest;
            set
            {
                _currentTest = value;
                OnPropertyChanged(nameof(CurrentTest));
            }
        }
        public List<Test> ListTest
        {
            get => listTest;
            set
            {
                listTest = value;
                OnPropertyChanged(nameof(listTest));
            }
        }
        public List<Student> ListStudent
        {
            get => listStudent;
            set
            {
                listStudent = value;
                OnPropertyChanged(nameof(ListStudent));
            }
        }

        public EditTeacherClassroomsViewModel(Classroom CurrentClassroom)
        {
            _currentClassroom = CurrentClassroom;
            LoadStudent();
            Loadtest();
            ShowAddNewTestCommand = new RelayCommand<object>(CanExcuteShowAddNewTestCommand, ExcuteShowAddNewTestCommand);
            DeleteTestCommand = new RelayCommand<string>(ExcuteDeleteTestCommand);
            ShowCreatScoreBoardCommand = new RelayCommand<string>(ExcuteShowCreatScoreBoardCommand);
            UpdateStudentLevelCommand = new RelayCommand<object>(IsClassroomNotEnded, ExecuteUpdateStudentLevelCommand);
        }
        
        private void LoadStudent()
        {
            ListStudent = stdDao.GetListStudent(CurrentClassroom);
        }

        private void Loadtest()
        {
            ListTest = testDAO.getListByIDClass(CurrentClassroom.IDClassroom);
        }
        
        private bool CanExcuteShowAddNewTestCommand(object obj)
        {
            if(CurrentClassroom.IsHaveNullValue() || IsClassroomNotEnded(obj))
                return false;
            return true;
        }

        private void ExcuteShowAddNewTestCommand(object obj)
        {
            Window dialog = new AddNewTestDialog();
            ((AddNewTestViewModel)dialog.DataContext).ClassID = CurrentClassroom.IDClassroom;
            dialog.ShowDialog();
            Loadtest();
        }

        private void ExcuteShowCreatScoreBoardCommand(string idtest)
        {
            Window dialog = new CreateScoreBoardDialog(idtest);
            dialog.ShowDialog();
        }

        private void ExcuteDeleteTestCommand(string idtest)
        {
            testDAO.DeleteTestByID(idtest);
            Loadtest();
        }

        private void ExecuteUpdateStudentLevelCommand(object obj)
        {
            foreach(Student st in listStudent)
            {
                FinalResult finalResult = new FinalResultDAO().GetFinalResult(st.Enter_Infor.ID, CurrentClassroom.IDClassroom);
                if(finalResult.UpClass)
                    st.RankLevel = CurrentClassroom.CourseIns.OutputLevel;
                try
                {
                    stdDao.Update(st);
                }
                catch
                {
                    MessageBox.Show("Update unsucessfully!!!");
                    return;
                }
            }

            MessageBox.Show("Update sucessfully!!!");
            LoadStudent();
        }

        private bool IsClassroomNotEnded(object obj)
        {
            if (CurrentClassroom.EndingDate <= DateTime.Now)
                return true;
            return false;
        }
    }
}
