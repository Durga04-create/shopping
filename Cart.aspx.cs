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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection cartcon = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog=shopping;Integrated Security=true");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //CART PAGE
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cartcon.Open();
            SqlCommand cmd = new SqlCommand("select sum(amount) from cart where userid='" + Session["userid"] + "'", cartcon);
            int i=Convert.ToInt32(cmd.ExecuteScalar());
            TextBox4.Text = i.ToString();
            cartcon.Close();
        }
       
    }
}