using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model
{
    public class Shift
    {
        private string idShift;
        private TimeOnly startingTime;
        private TimeOnly endingtime;

        public string IDShift { get => idShift; set => idShift = value; }
        public TimeOnly StartingTime { get => startingTime; set => startingTime = value; }
        public TimeOnly Endingtime { get => endingtime; set => endingtime=value; }
        public string StartEnd { get => $"{startingTime}-{endingtime}"; }

        public Shift() 
        {
            idShift = "";
        }

        public Shift(string IDShift, TimeOnly StartingTime, TimeOnly Endingtime)
        {
            this.idShift = IDShift;
            this.startingTime = StartingTime;
            this.endingtime = Endingtime;
        }
    }
}
