using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace EnglishCentreManagement.Database
{
    public class CalendarDAO
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);
        IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();
        IShiftDAO _shiftDAO = new ShiftDAO();
        ITeacherDao TeacherDAO = new TeacherDAO();
        IClassRoomDao _classRoomDao = new ClassRoomDao();

    }
}