using EnglishCentreManagement.Model;
using EnglishCentreManagement.Model.DisplayModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface IResultDAO
    {
        void Delete(string idTest);
        void UpdateTestResultByList(List<TestResult> results);
        TestResult getResultByTestAndIDStudent(string idTest);
        List<TestResult> getResultByIdTest(string idTest);
        List<TestsInWeek> getTestsInWeek(Classroom cls);
    }
}
