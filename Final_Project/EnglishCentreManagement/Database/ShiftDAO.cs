using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using EnglishCentreManagement.Interfaces;

namespace EnglishCentreManagement.Database
{
    public class ShiftDAO : IShiftDAO
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        public Shift findShiftByID(string id)
        {
            try
            {
                string strSQL = string.Format("SELECT * FROM CA WHERE MaCa = '{0}'", id);
                DataTable dtShift = DBConnection.getData(conn, strSQL);
                DataRow dt = dtShift.Rows[0];

                Shift shift = new Shift
                {
                    IDShift = new string(dt["MaCa"].ToString()),
                    StartingTime = new TimeOnly( Convert.ToDateTime(dt["ThoiGianBatDau"]).Hour, Convert.ToDateTime(dt["ThoiGianBatDau"]).Minute, Convert.ToDateTime(dt["ThoiGianBatDau"]).Second),
                    Endingtime = new TimeOnly(Convert.ToDateTime(dt["ThoiGianKetThuc"]).Hour, Convert.ToDateTime(dt["ThoiGianKetThuc"]).Minute, Convert.ToDateTime(dt["ThoiGianKetThuc"]).Second)
                };
                return shift;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Cannot find the information of the teacher or " + ex.Message);
            }

            return new Shift();
        }

        public List<string> getAllShiftID()
        {
            string sqlStr = string.Format("Select MaCa From Ca");
            DataTable dtShift =  DBConnection.getData(conn, sqlStr);
            List<string> list = new List<string>();

            foreach(DataRow dr in dtShift.Rows)
            {
                list.Add(new string(dr["MaCa"].ToString()));    
            }

            return list;
        }
    }
}
