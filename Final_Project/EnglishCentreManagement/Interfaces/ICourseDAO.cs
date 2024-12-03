using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface ICourseDAO
    {
        Course findCourseByID(string id);
        List<Course> findAllCourse();
    }
}
