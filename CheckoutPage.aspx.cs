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
    public partial class CheckoutPage : System.Web.UI.Page
    {
        SqlConnection checkcon = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog=shopping;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            //CHECKOUT PAGE
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            checkcon.Open();
            SqlCommand cmd = new SqlCommand("insert into bill values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "'," + TextBox6.Text + ",'" + TextBox12.Text + "')", checkcon);
            cmd.ExecuteNonQuery();
            checkcon.Close();
            Response.Write("<script>alert('Shipping Address Saved')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            checkcon.Open();
            checkcon.Close();
            Response.Write("<script>alert('Transcation Successfull')</script>");
        }
    }
}