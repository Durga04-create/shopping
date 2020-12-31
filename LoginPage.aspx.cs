using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Shopping_Cart_Application
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection logcon = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog=shopping;Integrated Security=true");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            logcon.Open();
            Session["userid"] = TextBox3.Text;
            SqlCommand cmd = new SqlCommand("select * from register where userid=" + TextBox3.Text + " and passwords='" + TextBox2.Text + "'", logcon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Write("<script>alert('Login Sucessfully')</script>");
                Response.Redirect("ProductListing.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid')</script>");
            }
            logcon.Close();
        }

        
    }
}