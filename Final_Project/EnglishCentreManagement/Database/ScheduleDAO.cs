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
    public class ScheduleDAO
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);
        IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();
        ClassRoomDao classDAO = new ClassRoomDao();
        ShiftDAO _shiftDAO = new ShiftDAO();
        TeacherDAO TeacherDAO = new TeacherDAO();

        public List<Shift> FindShiftForClassByClass(List<Classroom> ListClassroom)
        {
            List<Shift> ListShift = new List<Shift>();
            foreach (Classroom classroom in ListClassroom)
            {
                Shift Shift = _shiftDAO.findShiftByID(classroom.IDShift);
                ListShift.Add(Shift);
            }
            return ListShift;
        }

        public Teacher FindTeacherByIdClass(string ClassroomId)
        {
            string strSQL = String.Format("SELECT * FROM LOPHOC lp, GIAOVIEN gv WHERE MaLop = '{0}' AND gv.MaGiaoVien = lp.MaGiaoVien", ClassroomId);
            try
            {
                DataTable dtUser = DBConnection.getData(conn, strSQL);
                return new Teacher
                {
                    Enter_Infor = enterprise_InfoDAO.getById(new string(dtUser.Rows[0]["MaGiaoVien"].ToString())),
                    NamePerson = new string(dtUser.Rows[0]["TenGiaoVien"].ToString()),
                    DateBorn = new DateTime(Convert.ToDateTime(dtUser.Rows[0]["NgaySinh"]).Year, Convert.ToDateTime(dtUser.Rows[0]["NgaySinh"]).Month, Convert.ToDateTime(dtUser.Rows[0]["NgaySinh"]).Day),
                    Gender = new string(dtUser.Rows[0]["GioiTinh"].ToString()),
                    Address = new string(dtUser.Rows[0]["DiaChi"].ToString()),
                    PhoneNum = new string(dtUser.Rows[0]["SoDienThoai"].ToString()),
                    IdentityCard = new string(dtUser.Rows[0]["ChungMinhNhanDan"].ToString()),
                    BankNumber = new string(dtUser.Rows[0]["SoTaiKhoan"].ToString()),
                    RankLevel = Convert.ToDouble(dtUser.Rows[0]["RankLevel"])
                };
            }
            catch (Exception ex)
            {
                MessageBox.Show("Cannot find the information of the teacher or " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return new Teacher();
        }
    }
}