using EnglishCentreManagement.Database;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class ControlScheduleViewModel : BaseViewModel
    {
        private string _txtInforStu = "";
        private DateTime _timeStudStart;
        private DateTime _timeStudEnd;
        private Student _crtStudent = new Student();
        private DateTime _currentDate;
        private List<Shift> _listShifts = new List<Shift>();
        private List<Classroom> _listClassrooms = new List<Classroom>();
        private List<Schedule> _listSchedules = new List<Schedule>();

        private ObservableCollection<Schedule> _schedules = new ObservableCollection<Schedule>();

        // DAO
        private ScheduleDAO _scheduleDAO = new ScheduleDAO();
        private ShiftDAO _shiftDAO = new ShiftDAO();
        private ClassRoomDao _classroomDAO = new ClassRoomDao();


        public string TxtAbsent { get; set; }
        public ICommand DownWeekCommand { get; set; }
        public ICommand UpWeekCommand { get; set; }

        public string TxtInforStu
        {
            get => _txtInforStu;
            set
            {
                _txtInforStu = value;
                OnPropertyChanged(nameof(TxtInforStu));
            }
        } 
        public DateTime TimeStudStart
        {
            get => _timeStudStart;
            set
            {
                _timeStudStart = value;
                OnPropertyChanged(nameof(TimeStudStart));
            }
        }
        public DateTime TimeStudEnd
        {
            get => _timeStudEnd;
            set
            {
                _timeStudEnd = value;
                OnPropertyChanged(nameof(TimeStudEnd));
            }
        }
        public string IndexWeek { get; set; }

        public ObservableCollection<Schedule> Schedules
        {
            get => _schedules;
            set
            {
                _schedules=value;
                OnPropertyChanged(nameof(Schedules));
            }
        }

        public DateTime CurrentDate
        {
            get => _currentDate;
            set
            {
                _currentDate = value;
                OnPropertyChanged(nameof(CurrentDate));
            }
        }

        public ControlScheduleViewModel()
        {
            CurrentDate = DateTime.Now;
            IndexWeek = "";
            TxtAbsent = "";
            GetMomentWeek();
            LoadSchedule();
            DownWeekCommand = new RelayCommand<Action>(ExecuteDownWeekCommand);
            UpWeekCommand=new RelayCommand<Action>(ExecuteUpWeekCommand);
        }

        private void ExecuteUpWeekCommand(Action obj)
        {
            CurrentDate = CurrentDate.AddDays(7);
            Schedules = new ObservableCollection<Schedule>();
            GetMomentWeek();
            LoadDataGrid();
        }

        private void ExecuteDownWeekCommand(Action obj)
        {
            CurrentDate=CurrentDate.AddDays(-7);
            Schedules = new ObservableCollection    <Schedule>();
            GetMomentWeek();
            LoadDataGrid();
        }

        public void LoadSchedule()
        {
            //User
            LoadUserCurrentData();
            //Set Data
            _listClassrooms = _classroomDAO.GetListRegisteredClassroom(_crtStudent);
            _listShifts = _scheduleDAO.FindShiftForClassByClass(_listClassrooms);

            TxtInforStu = _crtStudent.NamePerson + " - " + _crtStudent.Enter_Infor.ID;
            Schedules.Clear();
            if (_listClassrooms.Count > 0)
            {
                LoadDataGrid();
            }
            TxtAbsent = "0";
        }

        private void LoadUserCurrentData()
        {
            _crtStudent = CurrentUser.Instance.CurrentStudent;
        }

        public void GetMomentWeek()
        {
            Schedule.GetWeekBoundaries(CurrentDate, out DateTime Start, out DateTime End);
            TimeStudStart = Start;
            TimeStudEnd = End;
        }

        public void LoadDataGrid()
        {
            foreach (Classroom classroom in _listClassrooms)
            {
                if (CurrentDate > classroom.StartingDate && CurrentDate < classroom.EndingDate || CurrentDate == classroom.StartingDate || CurrentDate == classroom.EndingDate)
                {
                    if (classroom.StudyDate == "T2-T4-T6")
                        Schedules.Add(new Schedule()
                        {
                            ShiftCode = classroom.IDShift,
                            TxtDetailTimeStart = _shiftDAO.findShiftByID(classroom.IDShift).StartingTime.ToString(),
                            TxtDetailTimeEnd = _shiftDAO.findShiftByID(classroom.IDShift).Endingtime.ToString(),

                            IdClassMonday = classroom.IDClassroom,
                            NameTeacherMonday = _scheduleDAO.FindTeacherByIdClass(classroom.IDClassroom).NamePerson,
                            RoomNumMonday = classroom.RoomNum,

                            IdClassWednesday = classroom.IDClassroom,
                            NameTeacherWednesday = _scheduleDAO.FindTeacherByIdClass(classroom.IDClassroom).NamePerson,
                            RoomNumWednesday = classroom.RoomNum,

                            IdClassFriday = classroom.IDClassroom,
                            NameTeacherFriday = _scheduleDAO.FindTeacherByIdClass(classroom.IDClassroom).NamePerson,
                            RoomNumFriday = classroom.RoomNum
                        });

                    if (classroom.StudyDate == "T3-T5-T7")
                        Schedules.Add(new Schedule()
                        {
                            ShiftCode = classroom.IDShift,
                            TxtDetailTimeStart = _shiftDAO.findShiftByID(classroom.IDShift).StartingTime.ToString(),
                            TxtDetailTimeEnd = _shiftDAO.findShiftByID(classroom.IDShift).Endingtime.ToString(),

                            IdClassTuesday = classroom.IDClassroom,
                            NameTeacherTuesday = _scheduleDAO.FindTeacherByIdClass(classroom.IDClassroom).NamePerson,
                            RoomNumTuesday = classroom.RoomNum,

                            IdClassThursday = classroom.IDClassroom,
                            NameTeacherThursday = _scheduleDAO.FindTeacherByIdClass(classroom.IDClassroom).NamePerson,
                            RoomNumThursday = classroom.RoomNum,

                            IdClassSaturday = classroom.IDClassroom,
                            NameTeacherSaturday = _scheduleDAO.FindTeacherByIdClass(classroom.IDClassroom).NamePerson,
                            RoomNumSaturday = classroom.RoomNum
                        });
                }
                else continue;
            }
        }
    }

}