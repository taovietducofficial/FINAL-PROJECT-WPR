using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System.Data;
using System;
using System.Data.SqlClient;
using System.Windows;

namespace EnglishCentreManagement.Database
{
    public class ManagerDAO : IManagerDao
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);
        IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();

        public void Add(Manager Mger)
        {
            string str = string.Format("INSERT INTO NGQUANLY VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", Mger.Enter_Infor.ID, Mger.NamePerson, Mger.DateBorn, Mger.Gender, Mger.Address, Mger.PhoneNum, Mger.IdentityCard, Mger.BankNumber);
            DBConnection.Execute(conn, str);
        }

        public void Delete(Manager Mger)
        {
            string str = string.Format("DELETE FROM NGQUANLY WHERE MaNguoiQuanLy = '{0}')", Mger.Enter_Infor.ID);
            DBConnection.Execute(conn, str);
        }

        public void Update(Manager Mger)
        {
            string str = string.Format("UPDATE NGQUANLY SET TenNguoiQuanLy = '{0}', NgaySinh = '{1}', GioiTinh = '{2}', DiaChi ='{3}', SoDienThoai = '{4}', ChungMinhNhanDan ='{5}', SoTaiKhoan = '{6}' WHERE  MaNguoiQuanLy = '{7}'", Mger.NamePerson, Mger.DateBorn, Mger.Gender, Mger.Address, Mger.PhoneNum, Mger.IdentityCard, Mger.BankNumber, Mger.Enter_Infor.ID);
            DBConnection.Execute(conn, str);
        }
        
        public Manager getById(string id)
        {
            string sqlStr = string.Format("SELECT* FROM NGQUANLY WHERE MaNguoiQuanLy = '{0}'", id);
            try
            {
                DataTable dtUser = DBConnection.getData(conn, sqlStr);
                if(dtUser.Rows.Count > 0)
                    return new Manager
                    {
                        Enter_Infor = enterprise_InfoDAO.getById(new string(dtUser.Rows[0]["MaNguoiQuanLy"].ToString())),
                        NamePerson = new string(dtUser.Rows[0]["TenNguoiQuanLy"].ToString()),
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

            return new Manager();
        }
    }
}
