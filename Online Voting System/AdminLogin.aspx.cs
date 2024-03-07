using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace onv
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string randompass;
        protected void Page_Load(object sender, EventArgs e)
        {
            b1.Enabled = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            string log = "select * from votingadmtable where username = '" + t1.Text + "' and password = '" + t2.Text + "' ";
            SqlDataAdapter ada = new SqlDataAdapter(log, con);
            DataTable dt = new DataTable();
            ada.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                MessageBox("Invalid login");
            }

            con.Close();
        }
        public void MessageBox(string xmessage)
        {
            Response.Write("<script>alert('" + xmessage + "')</script>");
        }

        public string GeneratePass(int length)
        {
            const string validChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%";

            Random random = new Random();
            StringBuilder passwordBuilder = new StringBuilder();

            for (int i = 0; i < length; i++)
            {
                int index = random.Next(validChars.Length);
                passwordBuilder.Append(validChars[index]);
            }

            return passwordBuilder.ToString();
        }

        public void Requestpass()
        {
            string RecepientEmailID = t3.Text;
            randompass = GeneratePass(6);
            string Myemail = "projectuse1729@gmail.com";
            string EmPass = "ifykbumvlhbscgnu";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Port = 587;
            smtpClient.Credentials = new NetworkCredential(Myemail, EmPass);
            smtpClient.EnableSsl = true;
            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("projectuse1729@gmail.com");
            mailMessage.To.Add(new MailAddress(RecepientEmailID));
            mailMessage.Subject = "this is about your admin password to login";
            mailMessage.Body = "Your Requested NEW PASSWORD is:'  " + randompass + " ': ";
            smtpClient.Send(mailMessage);

            string conn = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            string upd = "update votingadmtable set password='" + randompass + "' where username ='" + t1.Text + "'";

            SqlCommand cmd = new SqlCommand(upd, con);
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {

                b1.Enabled = true;
                MessageBox("THE NEW PASSSWORD IS UPDATED TO YOUR EMAIL ID");


            }

            else

            {
                MessageBox("Enter a valid email id");

            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Requestpass();
        }

        
    }
}