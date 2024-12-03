using EnglishCentreManagement.ENUM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model
{
    public class Statistics
    {
        private string idTeacher;
        private int numberOfClass;
        private int numberOfStudent;
        private double graduateRate;
        private EVALUTE evaluation;

        public Statistics()
        {
            idTeacher = "";
            numberOfClass = 0;
            numberOfStudent = 0;
        }

        public string IdTeacher { get => idTeacher; set => idTeacher = value; }
        public int NumberOfClass { get => numberOfClass; set => numberOfClass = value; }
        public int NumberOfStudent { get => numberOfStudent; set => numberOfStudent = value; }
        public double GraduateRate { get => graduateRate; set => graduateRate=value; }
        public EVALUTE Evaluation { get => evaluation; set => evaluation=value; }
    }
}
