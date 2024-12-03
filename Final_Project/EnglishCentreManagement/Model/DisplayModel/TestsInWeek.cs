using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model.DisplayModel
{
    public class TestsInWeek
    {
        private string weekNumber = "";
        private List<TestResult> results = new List<TestResult>();

        public string WeekNumber { get => weekNumber; set => weekNumber = value; }
        public List<TestResult> Results { get => results; set => results=value; }

        public TestsInWeek() { }
    }
}
