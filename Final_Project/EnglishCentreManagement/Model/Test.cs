using System;
using System.Collections.Generic;

namespace EnglishCentreManagement.Model
{
    public class Test
    {
        private string idTest;
        private string idClassRoom;
        private string timeTesting;
        private DateTime dateTesting;
        private string description;

        public string IDTest { get => idTest; set => idTest = value; }
        public string IDClassRoom { get => idClassRoom; set => idClassRoom = value; }
        public string TimeTesting { get => timeTesting; set => timeTesting = value; }
        public DateTime DateTesting { get => dateTesting; set => dateTesting = value; }
        public string Description { get => description; set => description=value; }

        public Test()
        {
            idTest = "";
            idClassRoom = "";
            timeTesting = "";
            dateTesting = DateTime.Now;
            description = "";
        }

        public Test(string IDTest, string IDClassRoom, string TimeTesting, DateTime DateTesting, string Description)
        {
            this.idTest = IDTest;
            this.idClassRoom = IDClassRoom;
            this.timeTesting = TimeTesting;
            this.dateTesting = DateTesting;
            this.description = Description;
        }

        public bool isHaveNullValue()
        {
            if (String.IsNullOrEmpty(IDTest.Trim()) || String.IsNullOrEmpty(IDClassRoom.Trim()) || String.IsNullOrEmpty(TimeTesting.Trim()))
                return true;
            return false;
        }

        public static List<string> GetListTimeTesting()
        {
            return new List<string>
            {
                "15 minutes",
                "1 hour",
                "2 hours",
                "Final",
            };
        }
    }
}
