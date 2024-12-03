using EnglishCentreManagement.Database;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class CalendarTeachingViewModel : BaseViewModel
    {
        private Teacher _crtTeacher = new Teacher();
        private List<Classroom> _listClassrooms = new List<Classroom>();
        private List<Calendar> _calendars = new List<Calendar>();
        private List<Shift> _listShift = new List<Shift>();

        private ScheduleDAO _scheduleDAO = new ScheduleDAO();
        private ShiftDAO _shiftDAO = new ShiftDAO();
        private TeacherDAO _teacherDAO = new TeacherDAO();
        private ClassRoomDao _classroomDAO = new ClassRoomDao();

        //public ICommand ShowYourCalendarOnWeek { get; set; }

        public string txtInforTea { get; set; }
        public List<Calendar> Calendars { get => _calendars; set => _calendars = value; }
        public CalendarTeachingViewModel()
        {
            txtInforTea = "";
            LoadUserCurrentData();
            LoadCalendar();
        }
        public void LoadCalendar()
        {
            //
            _listClassrooms = _classroomDAO.GetListTeacherClassroom(_crtTeacher);
            _listShift = _scheduleDAO.FindShiftForClassByClass(_listClassrooms);

            txtInforTea = _crtTeacher.NamePerson + " - " + _crtTeacher.Enter_Infor.ID;
            LoadDataGrid();
        }
        private void LoadUserCurrentData()
        {
            _crtTeacher = CurrentUser.Instance.CurrentTeacher;
        }
        private void LoadDataGrid()
        {
            int count = 1;
            foreach (Classroom classroom in _listClassrooms)
            {
                if (classroom.StudyDate=="T2-T4-T6")
                {
                    Calendars.Add(new Calendar()
                    {
                        Number=count.ToString(),

                        CourseID=classroom.IDCourse,

                        IdClass=classroom.IDClassroom,
                        TxtStart=classroom.StartingDate.ToString(),
                        TxtEnd=classroom.EndingDate.ToString(),

                        ShiftCode=classroom.IDShift,
                        TxtDetailTimeStart=_shiftDAO.findShiftByID(classroom.IDShift).StartingTime.ToString(),
                        TxtDetailTimeEnd=_shiftDAO.findShiftByID(classroom.IDShift).Endingtime.ToString(),

                        RoomNumMonday=classroom.RoomNum,
                        RoomNumWednesday=classroom.RoomNum,
                        RoomNumFriday=classroom.RoomNum
                    });
                }
                if (classroom.StudyDate=="T3-T5-T7")
                {
                    Calendars.Add(new Calendar()
                    {
                        Number = count.ToString(),

                        CourseID = classroom.IDCourse,

                        IdClass = classroom.IDClassroom,
                        TxtStart = classroom.StartingDate.ToShortDateString(),
                        TxtEnd = classroom.EndingDate.ToShortDateString(),

                        ShiftCode = classroom.IDShift,
                        TxtDetailTimeStart = _shiftDAO.findShiftByID(classroom.IDShift).StartingTime.ToString(),
                        TxtDetailTimeEnd = _shiftDAO.findShiftByID(classroom.IDShift).Endingtime.ToString(),

                        RoomNumTuesday=classroom.RoomNum,
                        RoomNumThursday=classroom.RoomNum,
                        RoomNumSaturday=classroom.RoomNum,
                    });
                }
                count++;
            }

        }
    }
}