using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface ITeacherDao
    {
        void Add(Teacher Tea);
        void Delete(string id);
        void Update(Teacher Tea);
        void UpdateSalary(Teacher Tea);
        Teacher getByID(string id);
        List<Teacher> GetValidTeacherForAClass(Classroom cls);
        List<Teacher> GetListAllTeacher();
        List<Teacher> getListByName(string name);
    }
}
