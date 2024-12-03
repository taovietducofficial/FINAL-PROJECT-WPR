using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model
{
    public class Calendar
    {
        private string txtInforTea;
        private string number;
        private string courseID;
        private string idClass;
        private string txtStart;
        private string txtEnd;
        private string shiftCode;
        private string txtDetailTimeStart;
        private string txtDetailTimeEnd;
        private string roomNumMonday;
        private string roomNumTuesday;
        private string roomNumWednesday;
        private string roomNumThursday;
        private string roomNumFriday;
        private string roomNumSaturday;
        private string roomNumSunday;

        public string TxtInforTea { get => txtInforTea; set => number = txtInforTea; }
        public string Number { get => number; set => number = value; }
        public string IdClass { get => idClass; set => idClass = value; }
        public string CourseID { get => courseID; set => courseID = value; }
        public string TxtStart { get => txtStart; set => txtStart = value; }
        public string TxtEnd { get => txtEnd; set => txtEnd = value; }
        public string ShiftCode { get => shiftCode; set => shiftCode = value; }
        public string TxtDetailTimeStart { get => txtDetailTimeStart; set => txtDetailTimeStart = value; }
        public string TxtDetailTimeEnd { get => txtDetailTimeEnd; set => txtDetailTimeEnd = value; }
        public string RoomNumMonday { get => roomNumMonday; set => roomNumMonday = value; }
        public string RoomNumTuesday { get => roomNumTuesday; set => roomNumTuesday = value; }
        public string RoomNumWednesday { get => roomNumWednesday; set => roomNumWednesday = value; }
        public string RoomNumThursday { get => roomNumThursday; set => roomNumThursday = value; }
        public string RoomNumFriday { get => roomNumFriday; set => roomNumFriday = value; }
        public string RoomNumSaturday { get => roomNumSaturday; set => roomNumSaturday = value; }
        public string RoomNumSunday { get => roomNumSunday; set => roomNumSunday = value; }

        public Calendar() 
        {
            txtInforTea = "";
            number = "";
            courseID = "";
            idClass = "";
            txtStart = "";
            txtEnd = "";
            shiftCode = "";
            txtDetailTimeStart = "";
            txtDetailTimeEnd = "";
            roomNumMonday = "";
            roomNumTuesday = "";
            roomNumWednesday = "";
            roomNumThursday = "";
            roomNumFriday = "";
            roomNumSaturday = "";
            roomNumSunday = "";
        }
    }
}