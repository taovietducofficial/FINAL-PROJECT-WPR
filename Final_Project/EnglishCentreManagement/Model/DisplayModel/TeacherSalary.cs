using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model.DisplayModel
{
    public class TeacherSalary
    {
        private Teacher teacher = new Teacher();
        private Statistics statistics = new Statistics();
        public Teacher Teacher { get => teacher; set => teacher = value; }
        public Statistics Statistics { get => statistics; set => statistics = value; }

        public TeacherSalary()
        {
        }
        public TeacherSalary(Teacher teacher, Statistics statistics)
        {
            Teacher = teacher;
            Statistics = statistics;
        }
        public bool IsHaveNullValue()
        {
            if (teacher == null) return true; return false;
        }
    }
}
