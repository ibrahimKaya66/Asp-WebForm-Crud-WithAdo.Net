using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace Asp_WebForm_Crud
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Crud.ListSearch(GridView1,"Select * from Customer");//Select Id as ID,FirstName as Adı,... from Customer
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Crud.ListSearch(GridView1, "Select * from Customer where FirstName like '%"+txtSearch.Text+ "%' or LastName like '%" + txtSearch.Text + "%'");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int choose_id = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[choose_id];
            string query = "delete from Customer where Id= '" +row.Cells[1].Text+"'";
            SqlCommand cmd = new SqlCommand();
            Crud.AddDeleteUpdate(cmd, query);
            Crud.ListSearch(GridView1, "Select * from Customer where FirstName like '%" + txtSearch.Text + "%' or LastName like '%" + txtSearch.Text + "%'");
        }
    }
}