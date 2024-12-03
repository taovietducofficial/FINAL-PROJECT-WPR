using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace EnglishCentreManagement.Database
{
    public class RegisterDao : IRegisterDao
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        public void Add(Student std, Classroom cls)
        {
            string sqlStr = string.Format("INSERT INTO HocVienTrongLop VALUES('{0}', '{1}')", cls.IDClassroom, std.Enter_Infor.ID);
            DBConnection.Execute(conn, sqlStr);
        }
    }
}
