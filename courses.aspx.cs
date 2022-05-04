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
    public partial class courses : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addcourse"] = "true";
            if(e.CommandName == "AddToCart")
            {
                //Response.Redirect("userprofile.aspx?id=" + e.CommandArgument.ToString());
                if(Session["role"]==null)
                {
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    string name= Session["fullname"].ToString();
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    string CID = e.CommandArgument.ToString();
                    //string Title, Description, Imageurl, price;
                    SqlCommand ttl = new SqlCommand("select * from courses where c_id = '" + CID.ToString() + "'", con);
                    ttl.ExecuteNonQuery();
                    SqlDataReader dr = ttl.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["Title"] = dr.GetValue(1).ToString();
                            Session["Description"] = dr.GetValue(2).ToString();
                            Session["Imageurl"] = dr.GetValue(3).ToString();
                            Session["Price"] = dr.GetValue(4).ToString();

                            

                        }
                        dr.Close();
                        

                    }
                    else
                    {
                        Response.Write("<script>alert('Error !');</script>");
                    }
                    SqlCommand cmd = new SqlCommand("insert into coursestaken(name,id,title,description,imageurl,price) values (@name,@id,@title,@description,@imageurl,@price)", con);

                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@id", e.CommandArgument.ToString());
                    cmd.Parameters.AddWithValue("@title", Session["Title"]);
                    cmd.Parameters.AddWithValue("@description", Session["Description"]);
                    cmd.Parameters.AddWithValue("@imageurl", Session["Imageurl"]);
                    cmd.Parameters.AddWithValue("@price", Session["Price"]);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Course succesfully added to cart. Go to your profile.');</script>");
                }
            }
        }
    }
}