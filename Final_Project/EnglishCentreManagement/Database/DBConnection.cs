using EnglishCentreManagement.Util;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace EnglishCentreManagement.Database
{
    public class DBConnection
    {
        public static DataTable getData(SqlConnection conn, string sqlStr)
        {
            try
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(sqlStr, conn);
                DataTable dttable = new DataTable();
                adapter.Fill(dttable);
                return dttable;
            }
            catch (Exception ex)
            {
                Log.Instance.Error(nameof(DBConnection), ex.Message);
            }
            finally
            {
                conn.Close();
            }

            return new DataTable();
        }

        public static void Execute(SqlConnection conn, string sqlStr)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sqlStr, conn);
                if (cmd.ExecuteNonQuery() <= 0)
                    throw new Exception();
                
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Execute failed: \n" + ex);
                Log.Instance.Error(nameof(DBConnection), ex.Message);
                
            }
            finally
            {
                conn.Close();
            }
        }

        public static bool CheckValid(SqlConnection conn, string sqlStr)
        {
            bool valid;

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sqlStr, conn);
                if (cmd.ExecuteScalar() == null)
                    valid = false;
                else
                    valid = true;
                return valid;
            }
            catch (Exception ex)
            {
                Log.Instance.Error(nameof(DBConnection), ex.Message);
            }
            finally
            {
                conn.Close();
            }

            return false;
        }
    }
}
