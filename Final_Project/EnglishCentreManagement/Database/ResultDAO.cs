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
    public class ResultDAO : IResultDAO
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        public void Delete(string idTest)
        {
            string sqlStr = string.Format("DELETE FROM RESULT WHERE MaBaiKiemTra = '{0}'", idTest);
            DBConnection.Execute(conn, sqlStr);
        }
        
        public void UpdateTestResultByList(List<TestResult> results)
        {
            string sqlStr;
            foreach (TestResult rsl in results)
            {
                sqlStr = string.Format("UPDATE RESULT SET Diem = '{0}' WHERE MaBaiKiemTra = '{1}' and MaHocVien = '{2}'", rsl.Point, rsl.IdTest, rsl.IdStudent);
                DBConnection.Execute(conn, sqlStr);
            }
        }
        
        public TestResult getResultByTestAndIDStudent(string idTest)
        {
            string sqlStr = string.Format("SELECT * FROM RESULT WHERE MaBaiKiemTra = '{0}' AND MaHocVien = '{1}'", idTest, CurrentUser.Instance.CurrentStudent.Enter_Infor.ID);
            DataTable dt = DBConnection.getData(conn, sqlStr);
            TestResult rsl = new TestResult
            {
                IdTest = new string(dt.Rows[0]["MaBaiKiemTra"].ToString()),
                IdStudent = new string(dt.Rows[0]["MaHocVien"].ToString()),
                Point = Convert.ToDouble(dt.Rows[0]["Diem"])
            };
            if (rsl != null)
                return rsl;
            return new TestResult();
        }

        public List<TestResult> getResultByIdTest(string idTest)
        {
            string sqlStr = string.Format("SELECT * FROM RESULT WHERE MaBaiKiemTra = '{0}'", idTest);
            DataTable dt = DBConnection.getData(conn, sqlStr);
            List<TestResult> listTst = new List<TestResult>();
            foreach (DataRow dr in dt.Rows)
            {
                TestResult rsl = new TestResult 
                { 
                    IdTest = new string(dr["MaBaiKiemTra"].ToString()),
                    IdStudent = new string(dr["MaHocVien"].ToString()),
                    Point = Convert.ToDouble(dr["Diem"])
                };
                if (rsl != null)
                    listTst.Add(rsl);
            }
            return listTst;
        }

        public List<TestsInWeek> getTestsInWeek(Classroom cls)
        {
            int index = cls.CourseIns.NumOfWeek;
            DateTime StartWeek = cls.StartingDate;
            List<TestsInWeek> testsInWeeks = new List<TestsInWeek>();
            for(int i = 0; i < index; i++)
            {
                List<TestResult> temp = new List<TestResult>(); 
                List<Test> listTestInWeek = new List<Test>();
                foreach (Test test in new TestDAO().getListByIDClass(cls.IDClassroom))
                    if(test.DateTesting >= StartWeek && test.DateTesting <= StartWeek.AddDays(6))
                        listTestInWeek.Add(test);

                foreach(Test test in listTestInWeek)
                {
                    TestResult result = getResultByTestAndIDStudent(test.IDTest);
                    if(result != null) 
                        temp.Add(result);
                }

                TestsInWeek tiw = new TestsInWeek
                {
                    WeekNumber = $"Week {i+1}",
                    Results = temp
                };

                if(tiw != null)
                    testsInWeeks.Add(tiw);
                StartWeek = StartWeek.AddDays(7);
            }

            return testsInWeeks;
        }
    }
}
