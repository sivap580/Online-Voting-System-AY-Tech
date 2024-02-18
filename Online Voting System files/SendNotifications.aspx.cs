using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onv
{
    public partial class SendNotifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                string myquery = "insert into Notification(Message,Date) values ('" + TextBox1.Text + " ','" + TextBox2.Text + " ')";
                string myconn = "Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS;persist security info=False;Integrated Security=SSPI;";
                SqlConnection con = new SqlConnection(myconn);
                con.Open();
                SqlCommand cmd = new SqlCommand(myquery, con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("AdminHome.aspx");
                }
                TextBox1.Text = "";
                TextBox2.Text = "MM.dd.yyyy";
            }catch (Exception ex) { }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            TextBox2.Text = DateTime.Now.ToString("MM.dd.yyyy");
        }
    }
}