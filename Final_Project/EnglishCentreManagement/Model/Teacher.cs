using EnglishCentreManagement.Database;
using System;
using System.Windows;

namespace EnglishCentreManagement.Model
{
    public class Teacher : Person
    {
        private long salary = 0;

        public long Salary { get => salary; set => salary=value; }

        public Teacher() { }
    }
}
