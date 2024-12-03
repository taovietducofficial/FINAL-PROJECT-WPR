using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface ITestDAO
    {
        void Add(Test tst);
        void DeleteTestByID(string idTest);
        Test getTestByID(string idTest);
        List<Test> getListByIDClass(string idClassroom);
    }
}
