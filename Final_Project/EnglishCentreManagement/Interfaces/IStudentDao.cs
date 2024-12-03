using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface IStudentDao
    {
        void Add(Student Std);
        void Delete(string id);
        void Update(Student Std);
        Student getById(string id);
        List<Student> getListByName(string name);
        List<Student> GetListStudent(Classroom cls);
        List<Student> GetListAllStudent();
    }
}
