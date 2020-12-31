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
    public partial class forget : System.Web.UI.Page
    {
        SqlConnection forcon = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog=shopping;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            forcon.Open();
            SqlCommand cmd = new SqlCommand("select passwords from register where userid=" +TextBox1.Text+ "", forcon);
            string i = Convert.ToString(cmd.ExecuteScalar());
            Label4.Text = i;
            forcon.Close();
        }
    }
}