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
    public class CourseDAO : ICourseDAO
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        public Course findCourseByID(string id)
        {
            string strSQL = string.Format("SELECT * FROM KHOAHOC WHERE MaKhoaHoc = '{0}'", id);
            try
            {
                DataTable dtCourse = DBConnection.getData(conn, strSQL);
                if (dtCourse.Rows.Count > 0)
                {
                    DataRow dt = dtCourse.Rows[0];

                    Course course = new Course
                    {
                        IDCourse = new string(dt["MaKhoaHoc"].ToString()),
                        NameCourse = new string(dt["TenKhoaHoc"].ToString()),
                        InputLevel = Convert.ToDouble(dt["LevelDauVao"]),
                        OutputLevel = Convert.ToDouble(dt["LevelDauRa"]),
                        NumOfWeek = Convert.ToInt32(dt["SoTuanHoc"]),
                        LevelOfTeacher = Convert.ToDouble(dt["LevelCuaGiaoVien"])
                    };
                    return course;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Cannot find the information of the teacher or " + ex.Message);
            }

            return new Course();
        }

        public List<Course> findAllCourse()
        {
            string strSQl = string.Format("SELECT * FROM KHOAHOC");
            DataTable dtCourse = DBConnection.getData(conn, strSQl);
            List<Course> lsCourses = new List<Course>();

            foreach(DataRow dr in dtCourse.Rows)
            {
                Course crs = new Course
                {
                    IDCourse = new string(dr["MaKhoaHoc"].ToString()),
                    NameCourse = new string(dr["TenKhoaHoc"].ToString()),
                    InputLevel = Convert.ToDouble(dr["LevelDauVao"]),
                    OutputLevel = Convert.ToDouble(dr["LevelDauRa"]),
                    NumOfWeek = Convert.ToInt32(dr["SoTuanHoc"]),
                    LevelOfTeacher = Convert.ToDouble(dr["LevelCuaGiaoVien"])
                };
                lsCourses.Add(crs);
            }

            return lsCourses;
        }
    }
}
