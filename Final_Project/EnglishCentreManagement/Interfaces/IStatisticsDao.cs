using EnglishCentreManagement.Model;
using EnglishCentreManagement.Model.DisplayModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface IStatisticsDao
    {
        Statistics CreateStatistics(string idTeacher);
        void Add(TeacherSalary teac);
        void ClearDatabaseStatistics();
    }
}
