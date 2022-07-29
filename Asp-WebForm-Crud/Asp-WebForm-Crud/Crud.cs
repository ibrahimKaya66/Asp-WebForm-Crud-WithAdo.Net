using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace Asp_WebForm_Crud
{
    public class Crud
    {
        private static SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);
        private static SqlCommand cmd;
        private static SqlDataReader dr;
        public static void ListSearch(GridView grid,string sql)
        {
            conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);
            conn.Open();
            cmd = new SqlCommand(sql, conn);
            dr = cmd.ExecuteReader();
            grid.DataSource = dr;
            grid.DataBind();
            dr.Close();
            conn.Close();
            conn.Dispose();
        }

        public static void GetCustomer(TextBox ID, TextBox name, TextBox surname, TextBox city, TextBox salary)
        {
            conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);
            conn.Open();
            cmd = new SqlCommand("select * from Customer where Id = '"+ID.Text+"'", conn);
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                name.Text = dr[1].ToString();
                surname.Text = dr[2].ToString();
                city.Text = dr[3].ToString();
                salary.Text = dr[4].ToString();

            }
            dr.Close();
            cmd.Dispose();//zorunlu değil
            conn.Close();
            conn.Dispose();
        }

        public static void AddDeleteUpdate(SqlCommand cmd,string sql)
        {
            conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);
            conn.Open();
            cmd.CommandText = sql;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
        }
    }
}