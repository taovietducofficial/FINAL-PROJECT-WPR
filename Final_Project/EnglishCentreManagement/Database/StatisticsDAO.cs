using EnglishCentreManagement.ENUM;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.Model.DisplayModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Database
{
    public class StatisticsDAO : IStatisticsDao
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        ITeacherDao teacherDAO = new TeacherDAO();
        IClassRoomDao classRoomDao = new ClassRoomDao();
        ITestDAO testDAO = new TestDAO();
        IResultDAO resultDAO = new ResultDAO();
        IStudentDao studentDao = new StudentDAO();
        IFinalResultDAO finalResultDAO = new FinalResultDAO();

        public Statistics CreateStatistics(string idTeacher)
        {
            Statistics stat = new Statistics();
            string strSql = string.Format("SELECT * FROM LOPHOC WHERE MaGiaoVien = '{0}'", idTeacher);
            DataTable dtLH = DBConnection.getData(conn, strSql);
            stat.NumberOfClass = dtLH.Rows.Count;

            foreach (DataRow dr in dtLH.Rows)
            {
                strSql = string.Format("SELECT count(MaHocVien) SLHV FROM HocVienTrongLop WHERE MaLop = '{0}'", new string(dr["MaLop"].ToString()));
                DataTable dtSub = DBConnection.getData(conn, strSql);
                stat.NumberOfStudent+=Convert.ToInt32(dtSub.Rows[0]["SLHV"]);
            }

            stat.GraduateRate = finalResultDAO.GraduateRate(teacherDAO.getByID(idTeacher))*100;

            if (stat.GraduateRate > 0.9)
                stat.Evaluation = EVALUTE.Excellent;
            else if (stat.GraduateRate > 0.5)
                stat.Evaluation = EVALUTE.Good;
            else
                stat.Evaluation = EVALUTE.Medium;

            return stat;
        }
        
        public void Add(TeacherSalary teac)
        {
            string sqlStr = string.Format("INSERT INTO SATISTICS VALUES('{0}','{1}','{2}','{3}')", teac.Teacher.Enter_Infor.ID, teac.Statistics.NumberOfClass, teac.Statistics.NumberOfStudent, teac.Statistics.GraduateRate);
            DBConnection.Execute(conn, sqlStr);
        }

        public void ClearDatabaseStatistics()
        {
            // delete and update
            string strSQL = string.Format("DELETE FROM SATISTICS");
            DBConnection.Execute(conn, strSQL);
        }
    }
}
