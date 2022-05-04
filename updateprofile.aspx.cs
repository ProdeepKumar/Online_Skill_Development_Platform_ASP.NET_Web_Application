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
    public partial class updateprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["fullname"].ToString();
            Label2.Text = Session["dateofbirth"].ToString();
            Label3.Text = Session["email"].ToString();
            Label4.Text = Session["contact"].ToString();

            TextBox1.Text = Label1.Text;
            TextBox2.Text = Label2.Text;
            TextBox3.Text = Label3.Text;
            TextBox4.Text = Label4.Text;
            
            HttpCookie cookie = Request.Cookies["UserInfo"];
            Label5.Text = cookie["password"];
            TextBox5.Text = Label5.Text;
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
                if(TextBox6.Text==null)
                {
                    SqlCommand cmd = new SqlCommand("update user_info set fullname='" + TextBox1.Text.ToString() + "', dateofbirth='" + TextBox2.Text.ToString() + "', email='" + TextBox3.Text.ToString() + "', contact='" + TextBox4.Text.ToString() + "',password='" + TextBox5.Text.ToString() + "' where fullname='"+Label1.Text+"'", con);
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Successfully updated your profile info. Go to your profile.');</script>");
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("update user_info set fullname='" + TextBox1.Text.ToString() + "', dateofbirth='" + TextBox2.Text.ToString() + "', email='" + TextBox3.Text.ToString() + "', contact='" + TextBox4.Text.ToString() + "',password='" + TextBox6.Text.ToString() + "' where fullname='" + Label1.Text + "'", con);
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Successfully updated your profile info. Go to your profile.');</script>");
                }
                con.Close();
                
                Response.Redirect("userprofile.aspx");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + "');</script>");
            }
        }
    }
}