using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterLogin
{
    public partial class userprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblName.Text = Session["fullname"].ToString();
            Lbldob.Text = Session["dateofbirth"].ToString();
            Lblcontact.Text = Session["contact"].ToString();
            HttpCookie cookie = Request.Cookies["UserInfo"];
            if (cookie != null)
            {
                Lblemail.Text = cookie["email"];
                Lblpassword.Text = cookie["password"];
            }
            if(Session["role"].Equals("admin"))
            {
                LblName.Text = "Hello Admin";
                Lbldob.Text = "There is no info";
                Lblcontact.Text = "There is no info";
                Lblemail.Text = "There is no info";
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateprofile.aspx");
        }
    }
}