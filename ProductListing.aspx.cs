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
    public partial class ProductListing : System.Web.UI.Page
    {
        SqlConnection procon = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog=shopping;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //PRODUCT LISTING PAGE
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            procon.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into cart values(" + Session["userid"] + "," + GridView1.SelectedRow.Cells[1].Text + ",'" + GridView1.SelectedRow.Cells[2].Text + "'," + GridView1.SelectedRow.Cells[3].Text + ",1," + GridView1.SelectedRow.Cells[3].Text + ")", procon);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Added to Cart')</script>");
            }
            catch(SqlException e1)
            {
                Response.Write("<script>alert('Already added items in your cart')</script>");
            }
            procon.Close();
        }
    }
} 