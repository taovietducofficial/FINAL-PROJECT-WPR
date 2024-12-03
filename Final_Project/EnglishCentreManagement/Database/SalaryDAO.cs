using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.Model.DisplayModel;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Database
{
    public class SalaryDAO : ISalaryDAO
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        private ITeacherDao teacherDao = new TeacherDAO();
        private IStatisticsDao statisticsDao = new StatisticsDAO();

        public List<TeacherSalary> getListAllSalary()
        {
            List<TeacherSalary> listSalary = new List<TeacherSalary>();

            List<Teacher> listteacher = new List<Teacher>();
            listteacher=teacherDao.GetListAllTeacher();
            statisticsDao.ClearDatabaseStatistics();
            int count = 0;
            foreach (Teacher t in listteacher)
            {
                listSalary.Add(new TeacherSalary()
                {
                    Teacher = t,
                    Statistics = statisticsDao.CreateStatistics(t.Enter_Infor.ID)
                });
                statisticsDao.Add(listSalary[count]);
                count++;
            }
            return listSalary;
        }

        public List<TeacherSalary> getListByName(string name)
        {
            List<TeacherSalary> listSalary = new List<TeacherSalary>();
            List<Teacher> listteacher = new List<Teacher>();
            listteacher=teacherDao.getListByName(name);
            int count = 0;
            foreach (Teacher t in listteacher)
            {
                listSalary.Add(new TeacherSalary()
                {
                    Teacher = t,
                    Statistics = statisticsDao.CreateStatistics(t.Enter_Infor.ID)
                });
                count++;
            }
            return listSalary;
        }

        public TeacherSalary getTeacherSalaryByTeacher(string Name)
        {
            Teacher tea = teacherDao.getByID(Name);
            TeacherSalary teacherSalary = new TeacherSalary()
            {
                Teacher = tea,
                Statistics = statisticsDao.CreateStatistics(tea.Enter_Infor.ID),
            };
            teacherSalary.Teacher.Salary= 5000000 * teacherSalary.Statistics.NumberOfClass + 1000000 * ((long)teacherSalary.Statistics.GraduateRate);
            return teacherSalary;
        }
    }
}