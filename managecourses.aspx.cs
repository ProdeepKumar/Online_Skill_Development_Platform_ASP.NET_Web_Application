using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RegisterLogin
{
    public partial class managecourses : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("insertcourse.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label7.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label7.Text = "";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label c_id = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox title= GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox description = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox imageurl = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox price = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("update courses set title='" + title.Text +"', description='" + description.Text + "', imageurl='"+imageurl.Text+"', price='"+price.Text+"' where c_id='"+c_id.Text+"'", con);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label7.Text = "Data Updated Successfully";
            con.Close();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label c_id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delete from courses where c_id='" + c_id.Text+"'", con);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label7.Text = "Data Deleted Successfully";
            con.Close();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}