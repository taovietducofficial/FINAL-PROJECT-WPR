using EnglishCentreManagement.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model
{
    public class TestResult
    {
        private string idStudent;
        private string idTest;
        private double point;

        public string IdStudent { get => idStudent; set => idStudent = value; }
        public string IdTest { get => idTest; set => idTest = value; }
        public double Point { get => point; set => point=value; }
        public Student StudentIns { get => new StudentDAO().getById(idStudent); }
        public Test TestIns { get => new TestDAO().getTestByID(idTest); }

        public TestResult()
        {
            idStudent = "";
            idTest = "";
        }
    }
}
