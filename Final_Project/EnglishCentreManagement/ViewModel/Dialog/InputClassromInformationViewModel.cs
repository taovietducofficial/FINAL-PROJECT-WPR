using EnglishCentreManagement.Database;
using EnglishCentreManagement.Dialog.DisplayList;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.Dialog.DisplayList;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.Dialog
{
    public class InputClassromInformationViewModel : BaseViewModel
    {
        private bool _canReadonlyId = false;
        private string tidCourse = "";
        private string tidClassroom = "";
        private int tnumbStudent = 20;
        private DateTime tStartingDay = DateTime.Now;
        private DateTime tEndingDay = DateTime.Now;
        private string tStudyDate = "";
        private string tidShift = "";
        private string troomNum = "";
        private Classroom _currentClassroom = new Classroom();

        private IClassRoomDao classRoomDao = new ClassRoomDao();
        private IShiftDAO shiftDAO = new ShiftDAO();

        public List<string> ListShift { get; set; }
        public List<string> ListStudyDate { get; set; }

        public ICommand AddOrUpdateClassroomCommand { get; }
        public ICommand ShowAllCourseDialogCommand { get; }
        public ICommand ShowAvailableRoomCommand { get; }
        public ICommand ExitCommand { get; }

        public bool CanReadonlId { get => _canReadonlyId; set => _canReadonlyId=value; }

        public Classroom CurrentClassroom
        {
            get => _currentClassroom;
            set
            {
                _currentClassroom = value;
                tidCourse = _currentClassroom.IDCourse;
                tidClassroom = _currentClassroom.IDClassroom;
                tnumbStudent = _currentClassroom.MaxNumStudent;
                tStartingDay = _currentClassroom.StartingDate;
                tEndingDay = _currentClassroom.EndingDate;
                tStudyDate = _currentClassroom.StudyDate;
                tidShift = _currentClassroom.IDShift;
                troomNum = _currentClassroom.RoomNum;
                OnPropertyChanged(nameof(CurrentClassroom));
            }
        }

        public string TidCourse 
        { 
            get => tidCourse; 
            set
            {
                tidCourse = value;
                TidClassroom = AutogenerateID(tidCourse);
                CurrentClassroom.IDCourse = tidCourse;
                OnPropertyChanged(nameof(TidCourse));
            }
        }
        public string TidClassroom 
        { 
            get => tidClassroom; 
            set
            {
                tidClassroom = value;
                CurrentClassroom.IDClassroom = tidClassroom;
                OnPropertyChanged(nameof(TidClassroom));
            }
        }
        public int TnumbStudent 
        {
            get => tnumbStudent; 
            set
            {
                tnumbStudent = value;
                CurrentClassroom.MaxNumStudent = tnumbStudent;
                OnPropertyChanged(nameof(TnumbStudent));
            }
        }
        public DateTime TStartingDay 
        {
            get => tStartingDay; 
            set
            {
                tStartingDay = value;
                CurrentClassroom.StartingDate = tStartingDay;
                TroomNum = "";
                int index = (CurrentClassroom.CourseIns.NumOfWeek - 1) * 7 + 4;
                TEndingDay = TStartingDay.AddDays(index);
                OnPropertyChanged(nameof(TStartingDay));
            }
        }
        public DateTime TEndingDay 
        { 
            get => tEndingDay; 
            set
            {
                tEndingDay = value;
                CurrentClassroom.EndingDate = tEndingDay;
                OnPropertyChanged(nameof(TEndingDay));
            }
        }
        public string TStudyDate 
        { 
            get => tStudyDate; 
            set
            { 
                tStudyDate = value;
                CurrentClassroom.StudyDate = tStudyDate;
                SetStartEndDay();
                //TroomNum = "";
                //Schedule.GetWeekBoundaries(DateTime.Now, out DateTime Start, out DateTime End);
                //if (tStudyDate.Equals("T2-T4-T6"))
                //{
                //    TStartingDay = TStartingDay > Start ? Start.AddDays(7) : Start;
                //    int index = (CurrentClassroom.CourseIns.NumOfWeek - 1) * 7 + 4;
                //    TEndingDay = TStartingDay.AddDays(index);
                //}
                //else
                //{
                //    TStartingDay = TStartingDay > Start ? Start.AddDays(8) : Start;
                //    int index = (CurrentClassroom.CourseIns.NumOfWeek - 1) * 7 + 4;
                //    TEndingDay = TStartingDay.AddDays(index);
                //}
                OnPropertyChanged(nameof(TStudyDate));
            }
        }
        public string TidShift 
        {
            get => tidShift; 
            set
            {
                tidShift = value;
                CurrentClassroom.IDShift = tidShift;
                SetStartEndDay();
                OnPropertyChanged(nameof(TidShift));
            }
        }
        public string TroomNum 
        {
            get => troomNum; 
            set
            {
                troomNum = value;
                CurrentClassroom.RoomNum = troomNum;
                OnPropertyChanged(nameof(TroomNum));
            }
        }

        public InputClassromInformationViewModel()
        {
            ListStudyDate = new List<string>(classRoomDao.GetListStudyDate());
            ListShift = new List<string>(shiftDAO.getAllShiftID());
            AddOrUpdateClassroomCommand = new RelayCommand<Window>(CanExecuteAddOrUpdateClassroomCommand, ExecuteAddOrUpdateClassroomCommand);
            ShowAllCourseDialogCommand = new RelayCommand<object>(CanExecuteShowAllCourseDialogCommand, ExecuteShowAllCourseDialogCommand);
            ShowAvailableRoomCommand = new RelayCommand<object>(ExecuteShowAvailableRoomCommand);
            ExitCommand = new RelayCommand<Window>(ExcuteExitCommand);
        }

        private void ExecuteAddOrUpdateClassroomCommand(Window obj)
        {
            CurrentClassroom.IDTeacher = "";
            MessageBox.Show("You have created or updated a class, please choose a teacher for this class");
            obj.Close();
        }

        private bool CanExecuteAddOrUpdateClassroomCommand(Window obj)
        {
            bool validValue = false;

            if (CurrentClassroom.IsHaveNullValue())
                validValue = false;
            else
                validValue = true;

            return validValue;
        }

        private void ExecuteShowAllCourseDialogCommand(object obj)
        {
            Window dialog = new DisplayAllCourseDialog();
            dialog.ShowDialog();
            TidCourse = ((DisplayAllCourseViewModel)dialog.DataContext).SelectedCourse.IDCourse;
        }

        private bool CanExecuteShowAllCourseDialogCommand(object obj)
        {
            if (CanReadonlId)
                return false;
            return true;
        }

        private void ExecuteShowAvailableRoomCommand(object obj)
        {
            Window dialog = new DisplayRoomAvailableDialog();
            ((DisplayRoomAvailableViewModel)dialog.DataContext).SelectedClassroom = CurrentClassroom;
            dialog.ShowDialog();
            TroomNum = ((DisplayRoomAvailableViewModel)dialog.DataContext).SelectedRoom.Name;
        }

        private void ExcuteExitCommand(Window obj)
        {
            CurrentClassroom = new Classroom();
            obj.Close();
        }

        private string AutogenerateID(string idCourse)
        {
            string classID = "";
            int number = classRoomDao.GetAllClassroomByIDCourse(idCourse).Count();
            number++;
            classID = $"{idCourse}{number:000}";
            return classID;
        }

        private void SetStartEndDay()
        {
            TroomNum = "";
            Schedule.GetWeekBoundaries(DateTime.Now, out DateTime Start, out DateTime End);
            if (TStudyDate.Equals("T2-T4-T6"))
            {
                TStartingDay = TStartingDay > Start ? Start.AddDays(7) : Start;
                int index = (CurrentClassroom.CourseIns.NumOfWeek - 1) * 7 + 4;
                TEndingDay = TStartingDay.AddDays(index);
            }
            else
            {
                TStartingDay = TStartingDay > Start ? Start.AddDays(8) : Start;
                int index = (CurrentClassroom.CourseIns.NumOfWeek - 1) * 7 + 4;
                TEndingDay = TStartingDay.AddDays(index);
            }
        }

    }
}
