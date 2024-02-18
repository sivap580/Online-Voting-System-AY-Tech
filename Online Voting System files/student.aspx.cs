using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace onv
{
    public partial class student : System.Web.UI.Page
    {
        string randompass;
        string NO;// for id
        string password;
        public void MessageBox(string xmessage)
        {
            Response.Write("<script>alert('" + xmessage + "')</script>");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            RstPass.Enabled =false;
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
        public void Emailverify(int ID, string RecepientEmailID)
        {
            try
            {
                string Cnn = @"Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                SqlConnection con = new SqlConnection(Cnn);
                string valid = "select * from StuRegister where StID=" + ID + " and Email='" + RecepientEmailID + "'";
                SqlDataAdapter ada = new SqlDataAdapter(valid, con);
                DataTable dt = new DataTable();
                ada.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    l1.Text = "Congatulations😃😃 You have entered valid email";
                    RstPass.Enabled = true;
                }

                else
                {
                    l1.Text = "Dont u know your Email-ID? Pitty on you 😏😏";
                    RstPass.Enabled = false;
                    TxtEmail.Text = "";
                }



            }
            catch (Exception) { }

        }
        public void PassUse(string NO, string password)//using saved password
        {
            
            try
            {
                int ID = Convert.ToInt32(NO);
                string Cnn = @"Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                SqlConnection con = new SqlConnection(Cnn);
                string valid = "select * from StuRegister where StID=" + ID + " and Password='" + password + "'";
                SqlDataAdapter ada = new SqlDataAdapter(valid, con);
                DataTable dt = new DataTable();
                ada.Fill(dt);
                {
                    if (dt.Rows.Count > 0)
                    {
                        Response.Redirect("StuHome.aspx");

                    }
                    else
                    {
                        MessageBox("get out");
                        Txtid.Text = "";
                        TxtPass.Text = "";
                    }

                }
            }
            catch (Exception) { }

        }
        public void RestPAss()
        {
            try
            {


                int ID = Convert.ToInt32(Txtid.Text);
                string RecepientEmailID = TxtEmail.Text;
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
                mailMessage.Subject = "this is about your secuirty";
                mailMessage.Body = "Your Requested RESET PASSWORD is:'  " + randompass + " ': " +
                    "Continue your jouney and u can update your password through update option in your home page ";
                smtpClient.Send(mailMessage);
                string Cnn = @"Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                SqlConnection con = new SqlConnection(Cnn);
                con.Open();
                string upd = "update StuRegister set Password='" + randompass + "' where StID=" + ID + "";
                SqlCommand cmd = new SqlCommand(upd, con);

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    MessageBox(" Your ResetPassword sended to email.Use it for further login ");
                    TxtEmail.Text = "";

                }
            }catch (Exception ex) { }
        }

        protected void RstPass_Click(object sender, EventArgs e)//reset password button
        {
            RestPAss();
        }

        protected void Button3_Click(object sender, EventArgs e)//ok button
        {
            if (Txtid != null)
            {
                NO = Txtid.Text;
                password = TxtPass.Text;

                Session["stid"] = Txtid.Text;
                PassUse(NO, password);
            }
            else
                MessageBox("enter your ID");
        }

        protected void BtnVerify_Click(object sender, EventArgs e)// verification button
        {

            int ID = Convert.ToInt32(Txtid.Text);
            string RecepientEmailID = TxtEmail.Text;
            Emailverify(ID, RecepientEmailID);
        }

        protected void Button4_Click(object sender, EventArgs e)// cancel button
        {
            Txtid.Text = "";
            TxtPass.Text = "";
            TxtEmail.Text = "";
        }

        protected void ChkPAss_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}