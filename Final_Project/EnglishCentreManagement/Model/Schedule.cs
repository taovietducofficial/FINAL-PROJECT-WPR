using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model
{
    public class Schedule
    {
        public Shift ShiftTime { get; set; }
        public int IndexWeek { get; set; }
        // 
        public string TxtInforStu { get; set; }
        // 
        public int NumWeek { get; set; }
        //
        public string TxtTimeStudStart { get; set; }
        public string TxtTimeStudEnd { get; set; }
        //
        public string TxtAbsent { get; set; }
        public string ShiftCode { get; set; }
        public string TxtDetailTimeStart { get; set; }
        public string TxtDetailTimeEnd { get; set; }

        // Monday
        public string IdClassMonday { get; set; }
        public string NameTeacherMonday { get; set; }
        public string RoomNumMonday { get; set; }

        // Tuesday
        public string IdClassTuesday { get; set; }
        public string NameTeacherTuesday { get; set; }
        public string RoomNumTuesday { get; set; }

        // Wednesday
        public string IdClassWednesday { get; set; }
        public string NameTeacherWednesday { get; set; }
        public string RoomNumWednesday { get; set; }

        // Thursday
        public string IdClassThursday { get; set; }
        public string NameTeacherThursday { get; set; }
        public string RoomNumThursday { get; set; }

        // Friday
        public string IdClassFriday { get; set; }
        public string NameTeacherFriday { get; set; }
        public string RoomNumFriday { get; set; }

        // Saturday
        public string IdClassSaturday { get; set; }
        public string NameTeacherSaturday { get; set; }
        public string RoomNumSaturday { get; set; }

        // Sunday
        public string IdClassSunday { get; set; }
        public string NameTeacherSunday { get; set; }
        public string RoomNumSunday { get; set; }

        public Schedule() 
        {
            ShiftTime = new Shift();
            TxtInforStu = "";
            TxtTimeStudStart = "";
            TxtTimeStudEnd = "";
            TxtAbsent = "";
            ShiftCode = "";
            TxtDetailTimeStart = "";
            TxtDetailTimeEnd = "";
            IdClassMonday = "";
            NameTeacherMonday = "";
            RoomNumMonday = "";
            IdClassTuesday = "";
            NameTeacherTuesday = "";
            RoomNumTuesday = "";
            IdClassWednesday = "";
            NameTeacherWednesday = "";
            RoomNumWednesday = "";
            IdClassThursday = "";
            NameTeacherThursday = "";
            RoomNumThursday = "";
            IdClassFriday = "";
            NameTeacherFriday = "";
            RoomNumFriday = "";
            IdClassSaturday = "";
            NameTeacherSaturday = "";
            RoomNumSaturday = "";
            IdClassSunday = "";
            NameTeacherSunday = "";
            RoomNumSunday = "";
        }

        public static void GetWeekBoundaries(DateTime date, out DateTime firstDayOfWeek, out DateTime lastDayOfWeek)
        {
            DayOfWeek currentDayOfWeek = date.DayOfWeek;
            int diff = currentDayOfWeek - DayOfWeek.Monday;
            firstDayOfWeek = date.AddDays(-diff);
            lastDayOfWeek = firstDayOfWeek.AddDays(7);
        }
    }
}