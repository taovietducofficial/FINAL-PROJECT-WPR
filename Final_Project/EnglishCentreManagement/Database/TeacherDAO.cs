using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace EnglishCentreManagement.Database
{
    public class TeacherDAO : ITeacherDao
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();

        public void Add(Teacher Tea)
        {
            string strSQL = string.Format("INSERT INTO GIAOVIEN VALUES ('{0}', N'{1}', '{2}', N'{3}', N'{4}', '{5}', '{6}', '{7}', '{8}','{9}')", Tea.Enter_Infor.ID, Tea.NamePerson, Tea.DateBorn, Tea.Gender, Tea.Address, Tea.PhoneNum, Tea.IdentityCard, Tea.BankNumber, Tea.RankLevel, Tea.Salary);
            DBConnection.Execute(conn, strSQL);
        }

        public void Delete(string id)
        {
            string strSQL = string.Format("DELETE FROM DANGNHAP WHERE MaNguoiDangNhap = '{0}'", id);
            DBConnection.Execute(conn, strSQL);
            strSQL = string.Format("DELETE FROM NGUOIDUNG WHERE MaNguoiDung = '{0}'", id);
            DBConnection.Execute(conn, strSQL);
            strSQL = string.Format("UPDATE LOPHOC SET MaGiaoVien = '' WHERE  MaGiaoVien = '{0}'", id);
            DBConnection.Execute(conn, strSQL);
            strSQL = string.Format("DELETE FROM GIAOVIEN  WHERE MaGiaoVien = '{0}'", id);
            DBConnection.Execute(conn, strSQL);
        }

        public void Update(Teacher Tea)
        {
            string strSQL = string.Format("UPDATE GIAOVIEN SET TenGiaoVien = N'{0}', NgaySinh = '{1}', GioiTinh = N'{2}', DiaChi = N'{3}', SoDienThoai ='{4}',ChungMinhNhanDan ='{5}', SoTaiKhoan = '{6}', RankLevel = '{7}' WHERE MaGiaoVien = '{8}'", Tea.NamePerson, Tea.DateBorn, Tea.Gender, Tea.Address, Tea.PhoneNum, Tea.IdentityCard, Tea.BankNumber, Tea.RankLevel, Tea.Enter_Infor.ID);
            DBConnection.Execute(conn, strSQL);
        }

        public void UpdateSalary(Teacher Tea)
        {
            string strSQL = string.Format("UPDATE GIAOVIEN SET TenGiaoVien = N'{0}', NgaySinh = '{1}', GioiTinh = N'{2}', DiaChi = N'{3}', SoDienThoai ='{4}',ChungMinhNhanDan ='{5}', SoTaiKhoan = '{6}', RankLevel = '{7}', Luong='{9}' WHERE MaGiaoVien = '{8}'", Tea.NamePerson, Tea.DateBorn, Tea.Gender, Tea.Address, Tea.PhoneNum, Tea.IdentityCard, Tea.BankNumber, Tea.RankLevel, Tea.Enter_Infor.ID, Tea.Salary);
            DBConnection.Execute(conn, strSQL);
        }

        public Teacher getByID(string id)
        {
            string sqlStr = string.Format("SELECT* FROM GIAOVIEN WHERE MaGiaoVien = '{0}'", id);
            try
            {
                DataTable dtUser = DBConnection.getData(conn, sqlStr);
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
                    RankLevel = Convert.ToDouble(dtUser.Rows[0]["RankLevel"]),
                    Salary = Convert.ToInt64(dtUser.Rows[0]["Luong"])
                };
            }
            catch { }

            return new Teacher();
        }

        public List<Teacher> GetValidTeacherForAClass(Classroom cls)
        {
            string sqlStr = string.Format("SELECT * FROM GIAOVIEN");
            DataTable dtTeacher = DBConnection.getData(conn, sqlStr);

            List<Teacher> teachers = new List<Teacher>();

            if (!cls.IsHaveNullValue())
                foreach (DataRow dr in dtTeacher.Rows)
                {
                    Teacher tea = getByID(new string(dr["MaGiaoVien"].ToString()));
                    List<Classroom> teaCls = new ClassRoomDao().GetListTeacherClassroom(tea);
                    if (!cls.IsHaveSameTimeAsTheList(teaCls))
                        teachers.Add(tea);
                }

            return teachers;
        }

        public List<Teacher> getListByName(string name)
        {
            string sqlStr = string.Format("SELECT MaGiaoVien FROM GIAOVIEN WHERE TenGiaoVien = N'{0}'", name);
            List<Teacher> list = new List<Teacher>();
            DataTable dt = DBConnection.getData(conn, sqlStr);

            foreach (DataRow dr in dt.Rows)
            {
                Teacher teacher = getByID(new string(dr["MaGiaoVien"].ToString()));
                if (!teacher.IsHaveNullValue())
                    list.Add(teacher);
            }

            return list;
        }

        public List<Teacher> GetListAllTeacher()
        {
            List<Teacher> list = new List<Teacher>();
            string strSQL = string.Format("SELECT * FROM GIAOVIEN ");
            DataTable dt = DBConnection.getData(conn, strSQL);

            foreach (DataRow dr in dt.Rows)
            {
                Teacher tea = getByID(new string(dr["MaGiaoVien"].ToString()));
                if(!tea.IsHaveNullValue())
                    list.Add(tea);
            }

            return list;
        }
    }
}
