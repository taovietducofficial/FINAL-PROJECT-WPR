using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface IClassRoomDao
    {
        void Add(Classroom cls);
        void AddStudent(Classroom cls, Student st);
        void Delete(Classroom cls);
        void DeleteRegisteredClassroom(string stdID, string clsID);
        void Update(Classroom cls);
        bool ValidateValue(Classroom cls);
        Classroom getById(string id);
        DataTable getClassRoomDAO();
        DataTable getStudentList(Classroom cls);
        List<Classroom> fillDataToListClassRoom(DataTable datatable);
        List<string> GetListStudyDate();
        List<Classroom> GetListRegisteredClassroom(Student std);
        List<Classroom> GetListTeacherClassroom(Teacher tea);
        List<Classroom> GetAllClassroomByIDCourse(string courseID);
    }
}
