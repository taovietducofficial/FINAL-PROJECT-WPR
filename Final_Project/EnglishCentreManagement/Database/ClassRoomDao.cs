using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Database
{
    public class ClassRoomDao : IClassRoomDao
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);

        public void Add(Classroom cls)
        {
            string str = string.Format("INSERT INTO LOPHOC VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}')", cls.IDTeacher, cls.IDClassroom, cls.RoomNum, cls.MaxNumStudent, cls.IDCourse, cls.StartingDate, cls.EndingDate, cls.StudyDate, cls.IDShift);
            DBConnection.Execute(conn, str);
        }

        public void AddStudent(Classroom cls, Student st)
        {
            string sqlStr = string.Format("INSERT INTO HocVienTrongLop VALUES('{0}', '{1}')", cls.IDClassroom, st.Enter_Infor.ID);
            DBConnection.Execute(conn, sqlStr);
        }

        public void Delete(Classroom cls)
        {
            string str = string.Format("EXEC sp_XoaLopHoc '{0}'", cls.IDClassroom);
            DBConnection.Execute(conn, str);
        }

        public void DeleteRegisteredClassroom(string stdID, string clsID)
        {
            string sqlStr = string.Format("DELETE FROM HocVienTrongLop WHERE MaHocVien = '{0}' AND MaLop = '{1}'", stdID, clsID);
            DBConnection.Execute(conn, sqlStr);
        }

        public void Update(Classroom cls)
        {
            string str = string.Format("UPDATE LOPHOC SET MaGiaoVien = '{0}', SoPhong = '{1}', SoHocSinh = '{2}', MaKhoaHoc = '{3}', NgayBatDau ='{4}', NgayKetThuc = '{5}', NgayHocTrongTuan ='{6}', MaCa = '{7}' WHERE  MaLop = '{8}'", cls.IDTeacher, cls.RoomNum, cls.MaxNumStudent, cls.IDCourse, cls.StartingDate, cls.EndingDate, cls.StudyDate,  cls.IDShift, cls.IDClassroom);
            DBConnection.Execute(conn, str);
        }

        public bool ValidateValue(Classroom cls)
        {
            bool validValue = false;

            if (cls != null)
            {
                if (cls.IDTeacher == null || cls.IDClassroom == null || cls.RoomNum == null || cls.MaxNumStudent.ToString() == null || cls.IDCourse == null || cls.StartingDate.ToString() == null || cls.EndingDate.ToString() == null|| cls.StudyDate == null || cls.IDShift == null)
                    validValue = false;
                else
                    validValue = true;
            }

            return validValue;

        }

        public Classroom getById(string id)
        {
            string sqlStr = string.Format("SELECT* FROM LOPHOC WHERE MaLop = '{0}'", id);
            DataTable dt = DBConnection.getData(conn, sqlStr);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                return new Classroom
                {
                    IDTeacher = new string(dr["MaGiaoVien"].ToString()),
                    IDClassroom = new string(dr["MaLop"].ToString()),
                    RoomNum = new string(dr["SoPhong"].ToString()),
                    MaxNumStudent = Convert.ToInt32(dr["SoHocSinh"]),
                    IDCourse = new string(dr["MaKhoaHoc"].ToString()),
                    StartingDate = new DateTime(Convert.ToDateTime(dr["NgayBatDau"]).Year, Convert.ToDateTime(dr["NgayBatDau"]).Month, Convert.ToDateTime(dr["NgayBatDau"]).Day),
                    EndingDate = new DateTime(Convert.ToDateTime(dr["NgayKetThuc"]).Year, Convert.ToDateTime(dr["NgayKetThuc"]).Month, Convert.ToDateTime(dr["NgayKetThuc"]).Day),
                    StudyDate = new string(dr["NgayHocTrongTuan"].ToString()),
                    IDShift = new string(dr["MaCa"].ToString())
                };
            }
            return new Classroom();
        }

        public DataTable getClassRoomDAO()
        {
            string sqlStr = string.Format("SELECT* FROM LOPHOC");
            return DBConnection.getData(conn, sqlStr);
        }

        public DataTable getStudentList(Classroom cls)
        {
            string sqlStr = string.Format("EXEC fn_LayDanhSachHocVienTrongLop '{0}'", cls.IDClassroom);
            return DBConnection.getData(conn, sqlStr);
        }

        public List<Classroom> fillDataToListClassRoom(DataTable datatable)
        {
            List<Classroom> ListClassrooms = new List<Classroom>();

            foreach (DataRow dr in datatable.Rows)
            {
                Classroom classroom = new Classroom
                {
                    IDTeacher = new string(dr["MaGiaoVien"].ToString()),
                    IDClassroom = new string(dr["MaLop"].ToString()),
                    RoomNum = new string(dr["SoPhong"].ToString()),
                    MaxNumStudent = Convert.ToInt32(dr["SoHocSinh"]),
                    IDCourse = new string(dr["MaKhoaHoc"].ToString()),
                    StartingDate = new DateTime(Convert.ToDateTime(dr["NgayBatDau"]).Year, Convert.ToDateTime(dr["NgayBatDau"]).Month, Convert.ToDateTime(dr["NgayBatDau"]).Day),
                    EndingDate = new DateTime(Convert.ToDateTime(dr["NgayKetThuc"]).Year, Convert.ToDateTime(dr["NgayKetThuc"]).Month, Convert.ToDateTime(dr["NgayKetThuc"]).Day),
                    StudyDate = new string(dr["NgayHocTrongTuan"].ToString()),
                    IDShift = new string(dr["MaCa"].ToString())
                };
                ListClassrooms.Add(classroom);
            }
            return ListClassrooms;
        }

        public List<string> GetListStudyDate()
        {
            return new List<string>
            {
                "T2-T4-T6", "T3-T5-T7"
            };
        }

        public List<Classroom> GetListRegisteredClassroom(Student std)
        {
            string sqlStr = string.Format("SELECT MaLop FROM HocVienTrongLop WHERE MaHocVien = '{0}'", std.Enter_Infor.ID);
            DataTable dt = DBConnection.getData(conn, sqlStr);
            List<Classroom> listCls = new List<Classroom>();
            foreach (DataRow dr in dt.Rows)
            {
                Classroom? cls = getById(new string(dr["MaLop"].ToString()));
                if (cls != null)
                    listCls.Add(cls);
            }
            return listCls;
        }

        public List<Classroom> GetListTeacherClassroom(Teacher tea)
        {
            string sqlStr = string.Format("SELECT * FROM LOPHOC WHERE MaGiaoVien = '{0}'", tea.Enter_Infor.ID);
            DataTable dt = DBConnection.getData(conn, sqlStr);
            return fillDataToListClassRoom(dt);
        }

        public List<Classroom> GetAllClassroomByIDCourse(string courseID)
        {
            string sqlStr = string.Format("SELECT * FROM LOPHOC WHERE MaKhoaHoc = '{0}'", courseID);
            DataTable dt = DBConnection.getData(conn,sqlStr);
            return fillDataToListClassRoom(dt);
        }
    }
}
