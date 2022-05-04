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
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["dateofbirth"] = "";
            Session["contact"] = "";

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
                SqlCommand cmd = new SqlCommand("select * from user_info where email='"+TextBox1.Text.Trim()+"' and password='"+TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr=cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Response.Write("<script>alert('Welcome " + dr.GetValue(2).ToString() + "');</script>");
                        //session codes
                        Session["email"] = dr.GetValue(2).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["dateofbirth"] = dr.GetValue(1).ToString();
                        Session["contact"] = dr.GetValue(3).ToString();
                        Session["role"] = "user";

                        //cookie codes
                        HttpCookie cookie = new HttpCookie("UserInfo");
                        cookie["email"] = TextBox1.Text;
                        cookie["password"] = TextBox2.Text;
                        cookie.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie);
                        Response.Redirect("userprofile.aspx");
                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid User !');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + "');</script>");
            }
        }
    }
}