using EnglishCentreManagement.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model
{
    public class FinalResult
    {
        private string idClassroom = "";
        private string idStudent = "";
        private double processPoint = 0.0;
        private double finalTestPoint = 0.0;
        private double finalPoint = 0.0;
        private bool upClass = false;

        public string IdClassroom { get => idClassroom; set => idClassroom = value; }
        public string IdStudent { get => idStudent; set => idStudent = value; }
        public double ProcessPoint { get => processPoint; set => processPoint = value; }
        public double FinalTestPoint { get => finalTestPoint; set => finalTestPoint = value; }
        public double FinalPoint { get => finalPoint; set => finalPoint=value; }
        public bool UpClass { get => upClass; set => upClass=value; }
        public Student StudentIns { get => new StudentDAO().getById(idStudent); }

        public FinalResult() { }
    }
}
