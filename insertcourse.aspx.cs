using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterLogin
{
    public partial class insertcourse : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into courses(c_id,title,description,imageurl,price) values (@c_id,@title,@description,@imageurl,@price)", con);
                cmd.Parameters.AddWithValue("@c_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@title", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@imageurl", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@price", TextBox5.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Insertion Succesful. Go to courses page');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + "');</script>");
            }
        }
    }
}