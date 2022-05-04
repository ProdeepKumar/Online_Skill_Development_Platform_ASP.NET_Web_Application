using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterLogin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["role"] == null)
                {
                    LinkButton1.Visible = true;  //login button
                    LinkButton2.Visible = true;  //signup button
                    LinkButton4.Visible = true;  //admin login button

                    LinkButton3.Visible = false;  //logout button
                    LinkButton5.Visible = false;  //hello user button
                    LinkButton7.Visible = false;   //setting button

                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton4.Visible = false;  //admin login button
                    LinkButton3.Visible = true;   //logout button
                    LinkButton5.Visible = true;   //hello user button
                    LinkButton5.Text = "Hello, " + Session["fullname"].ToString();
                    LinkButton1.Visible = false;  //login button
                    LinkButton2.Visible = false;  //signup button
                    LinkButton7.Visible = false;   //setting button

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton4.Visible = false;  //admin login button
                    LinkButton3.Visible = true;   //logout button
                    LinkButton5.Visible = true;   //hello user button
                    LinkButton5.Text = "Hello, Admin";
                    LinkButton1.Visible = false;  //login button
                    LinkButton2.Visible = false;  //signup button
                    LinkButton7.Visible = true;   //setting button
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + "');</script>");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        } 
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("courses.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["fullname"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true;  //login button
            LinkButton2.Visible = true;  //signup button
            LinkButton4.Visible = true;  //admin login button

            LinkButton3.Visible = false;  //logout button
            LinkButton5.Visible = false;  //hello user button

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("managecourses.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}