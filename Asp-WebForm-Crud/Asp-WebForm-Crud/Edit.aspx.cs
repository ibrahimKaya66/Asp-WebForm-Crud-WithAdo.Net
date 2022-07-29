using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_WebForm_Crud
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string query = "update Customer set Firstname = @name,LastName = @surname,City = @city,Salary = @salary where Id = '"+txtId.Text+"'";
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@surname", txtSurname.Text);
            cmd.Parameters.AddWithValue("@city", txtCity.Text);
            cmd.Parameters.Add("@salary", SqlDbType.Money).Value = Decimal.Parse(txtSalary.Text);
            Crud.AddDeleteUpdate(cmd, query);
            Response.Redirect("Index.aspx");
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            Crud.GetCustomer(ID: txtId, txtName, txtSurname, txtCity, salary: txtSalary);
        }
    }
}