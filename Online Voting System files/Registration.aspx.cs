using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace onv
{
    public partial class Registration : System.Web.UI.Page
    {

        string G;
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }
        public void clear()
        {
            txtName.Text = "";
            txtDob.Text = "";
            txtStudentId.Text = "";
            TxtCourse.Text = "";
            DropDownListCourse.Text = "";
            txtPhoneNo.Text = "";
            txtEid.Text = "";

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Rb1.Checked==true)
            {
                G = Rb1.Text;
            }
            if(Rb2.Checked==true)
            {
                G = Rb2.Text;
            }


            int id = Convert.ToInt32(txtStudentId.Text);
            if ((txtStudentId.Text != null) || txtEid.Text != null)
            {
                string constring = @"Data Source= DESKTOP-41IDCDP;Initial Catalog=OVS ;persist security info=False;integrated security=SSPI;";
                using (SqlConnection con = new SqlConnection(constring))
                {


                    string s1 = "insert into StuRegister (Salutation,Name,DOB,StID,Course_Cat,Course,PhoneNo,Email,Password) values(@sal,@name,@dob,@stid,@courseca,@course,@phno,@eid,@pass)";

                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(s1, con))
                    {
                        cmd.Parameters.AddWithValue("@sal", G);
                        cmd.Parameters.AddWithValue("@name", txtName.Text);
                        cmd.Parameters.AddWithValue("@dob", txtDob.Text);
                        cmd.Parameters.AddWithValue("@stid", id);
                        cmd.Parameters.AddWithValue("@courseca", DropDownListCourse.Text);
                        cmd.Parameters.AddWithValue("@course", TxtCourse.Text);
                        cmd.Parameters.AddWithValue("@pass", TxtPass.Text);
                        cmd.Parameters.AddWithValue("@Phno", txtPhoneNo.Text);
                        cmd.Parameters.AddWithValue("@eid", txtEid.Text);
                        cmd.ExecuteNonQuery();

                    }
                }
            }
            else
            {
                string r = "<script>alert('Candidate details approved')</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(),"Added", r);
            }
             

            clear();
            Thread.Sleep(1000);
            Response.Redirect("student.aspx");
        }

        protected void Rb1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void Rbtn2_CheckedChanged(object sender, EventArgs e)
        {
    
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}