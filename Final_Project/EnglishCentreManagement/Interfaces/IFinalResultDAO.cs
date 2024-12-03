using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface IFinalResultDAO
    {
        void Add(FinalResult finalResult);
        void Update(FinalResult finalResult);
        void Delete(FinalResult finalResult);
        List<FinalResult> GetListAllByIdClassroom(string IdClass);
        public double GraduateRate(Teacher teacher);
        FinalResult GetFinalResult(string idStudent, string idClassroom);
    }
}
