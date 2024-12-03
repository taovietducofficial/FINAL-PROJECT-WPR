using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Database
{
    public class TestDAO : ITestDAO
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        public void Add(Test tst)
        {
            string sqlStr = string.Format("INSERT INTO TEST VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", tst.IDTest, tst.IDClassRoom, tst.TimeTesting, tst.DateTesting, tst.Description);
            DBConnection.Execute(conn, sqlStr);
        }

        public void DeleteTestByID(string idTest)
        {
            ResultDAO rsDao = new ResultDAO();
            rsDao.Delete(idTest);
            string sqlStr = string.Format("DELETE FROM TEST WHERE MaBaiKiemTra ='{0}'", idTest);
            DBConnection.Execute(conn, sqlStr);
        }

        public Test getTestByID(string idTest)
        {
            string sqlStr = string.Format("SELECT* FROM TEST WHERE MaBaiKiemTra = '{0}'", idTest);
            DataTable dt = DBConnection.getData(conn, sqlStr);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                return new Test
                {
                    IDTest = new string(dr["MaBaiKiemTra"].ToString()),
                    IDClassRoom = new string(dr["MaLop"].ToString()),
                    TimeTesting = new string(dr["ThoiGian"].ToString()),
                    DateTesting = new DateTime(Convert.ToDateTime(dr["NgayKiemTra"]).Year, Convert.ToDateTime(dr["NgayKiemTra"]).Month, Convert.ToDateTime(dr["NgayKiemTra"]).Day),
                    Description = new string(dr["MoTa"].ToString())
                };
            }
            return new Test();
        }

        public List<Test> getListByIDClass(string idClassroom)
        {
            string sqlStr = string.Format("SELECT MaBaiKiemTra FROM TEST WHERE MaLop = '{0}'", idClassroom);
            DataTable dt = DBConnection.getData(conn, sqlStr);
            List<Test> listTst = new List<Test>();

            foreach (DataRow dr in dt.Rows)
            {
                Test? tst = getTestByID(new string(dr["MaBaiKiemTra"].ToString()));
                if (tst != null)
                    listTst.Add(tst);
            }

            return listTst;
        }
    }
}
