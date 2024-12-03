using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace EnglishCentreManagement.Database
{
    public class StudentDAO : IStudentDao
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);
        Enterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();

        public void Add(Student Stu)
        {
            string str = string.Format("INSERT INTO HOCVIEN VALUES ('{0}', N'{1}', '{2}', N'{3}', N'{4}', '{5}', '{6}', '{7}', '{8}')", Stu.Enter_Infor.ID, Stu.NamePerson, Stu.DateBorn, Stu.Gender, Stu.Address, Stu.PhoneNum, Stu.IdentityCard, Stu.BankNumber, Stu.RankLevel);
            DBConnection.Execute(conn, str);
        }

        public void Delete(string id)
        {
            string str = string.Format("DELETE FROM DANGNHAP WHERE MaNguoiDangNhap = '{0}'", id);
            DBConnection.Execute(conn, str);
            str = string.Format("DELETE FROM NGUOIDUNG WHERE MaNguoiDung = '{0}'", id);
            DBConnection.Execute(conn, str);
            str = string.Format("DELETE FROM HocVienTrongLop WHERE MaHocVien = '{0}'", id);
            DBConnection.Execute(conn, str);
            str = string.Format("DELETE FROM RESULT WHERE MaHocVien = '{0}'", id);
            DBConnection.Execute(conn, str);
            str = string.Format("DELETE FROM FINALRESULT WHERE MaHocVien = '{0}'", id);
            DBConnection.Execute(conn, str);
            str = string.Format("DELETE FROM HOCVIEN WHERE MaHocVien = '{0}'", id);
            DBConnection.Execute(conn, str);
        }

        public void Update(Student Stu)
        {
            string str = string.Format("UPDATE HOCVIEN SET TenHocVien = N'{0}', NgaySinh = '{1}', GioiTinh = N'{2}', DiaChi = N'{3}', SoDienThoai ='{4}', ChungMinhNhanDan ='{5}', SoTaiKhoan = '{6}', RankLevel = '{7}' WHERE  MaHocVien = '{8}'", Stu.NamePerson, Stu.DateBorn, Stu.Gender, Stu.Address, Stu.PhoneNum, Stu.IdentityCard, Stu.BankNumber, Stu.RankLevel, Stu.Enter_Infor.ID);
            DBConnection.Execute(conn, str);
        }

        public Student getById(string id)
        {
            string sqlStr = string.Format("SELECT* FROM HOCVIEN WHERE MaHocVien = '{0}'", id);
            try
            {
                DataTable dtUser = DBConnection.getData(conn, sqlStr);
                if (dtUser.Rows.Count > 0)
                    return new Student
                    {
                        Enter_Infor = enterprise_InfoDAO.getById(new string(dtUser.Rows[0]["MaHocVien"].ToString())),
                        NamePerson = new string(dtUser.Rows[0]["TenHocVien"].ToString()),
                        DateBorn = new DateTime(Convert.ToDateTime(dtUser.Rows[0]["NgaySinh"]).Year, Convert.ToDateTime(dtUser.Rows[0]["NgaySinh"]).Month, Convert.ToDateTime(dtUser.Rows[0]["NgaySinh"]).Day),
                        Gender = new string(dtUser.Rows[0]["GioiTinh"].ToString()),
                        Address = new string(dtUser.Rows[0]["DiaChi"].ToString()),
                        PhoneNum = new string(dtUser.Rows[0]["SoDienThoai"].ToString()),
                        IdentityCard = new string(dtUser.Rows[0]["ChungMinhNhanDan"].ToString()),
                        BankNumber = new string(dtUser.Rows[0]["SoTaiKhoan"].ToString()),
                        RankLevel = Convert.ToDouble(dtUser.Rows[0]["RankLevel"])
                    };
            }

            catch
            {
                MessageBox.Show("Null data");
            }

            return new Student();
        }

        public List<Student> getListByName(string name)
        {
            string sqlStr = string.Format("SELECT MaHocVien FROM HOCVIEN WHERE TenHocVien = N'{0}'", name);
            List<Student> list = new List<Student>();
            DataTable dt = DBConnection.getData(conn, sqlStr);

            foreach (DataRow dr in dt.Rows)
            {
                Student student = getById(new string(dr["MaHocVien"].ToString()));
                if (!student.IsHaveNullValue())
                    list.Add(student);
            }

            return list;
        }

        public List<Student> GetListStudent(Classroom cls)
        {
            string strSql = string.Format("SELECT MaHocVien FROM fn_LayDanhSachHocVienTrongLop('{0}')", cls.IDClassroom);
            DataTable dt = DBConnection.getData(conn, strSql);
            List<Student> listStd = new List<Student>();

            foreach (DataRow dr in dt.Rows)
            {
                Student? std = getById(new string(dr["MaHocVien"].ToString()));
                if (cls != null)
                    listStd.Add(std);
            }

            return listStd;
        }

        public List<Student> GetListAllStudent()
        {
            List<Student> list = new List<Student>();
            string strSQL = string.Format("SELECT * FROM HOCVIEN ");
            DataTable dt = DBConnection.getData(conn, strSQL);

            foreach (DataRow dr in dt.Rows)
            {
                Student std = getById(new string(dr["MaHocVien"].ToString()));
                if(!std.IsHaveNullValue())
                    list.Add(std);
            }

            return list;
        }
    }
}
