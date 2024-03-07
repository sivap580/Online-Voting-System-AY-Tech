using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onv
{
    public partial class Update : System.Web.UI.Page
    {
         string gend;
        string stidPro;
        int valid;
        public void MessageBox(string xmessage)
        {
            Response.Write("<script>alert('" + xmessage + "')</script>");
        }
        public void fetch()
        {

            if (!IsPostBack)
            {

                if (Session["stid"] != null)
                {
                    stidPro = Session["stid"].ToString();
                    valid = Convert.ToInt32(stidPro);
                    string connection = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                    SqlConnection con = new SqlConnection(connection);
                    con.Open();
                    string updating = "Select Salutation,Name,DOB,StID,Course_Cat,Course,PhoneNo,Email,Password from StuRegister where StID=" + valid + "";
                    SqlCommand cmd = new SqlCommand(updating, con);

                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        rdr.Read();
                        TxtName.Text = rdr["Name"].ToString();
                        TxtDOB.Text = rdr["DOB"].ToString();
                        TxtStId.Text = rdr["StId"].ToString();
                        TxtCOCA.Text = rdr["Course_Cat"].ToString();
                        TxtCO.Text = rdr["Course"].ToString();
                        TxtPho.Text = rdr["PhoneNo"].ToString();
                        TxtEmail.Text = rdr["Email"].ToString();
                        TxtPAss.Text = rdr["Password"].ToString();
                        this.gend = rdr["Salutation"].ToString();
                    }

                    if (gend == "Mrs")
                    {
                        RdBtnMRs.Checked = true;
                    }
                    else
                    {
                        RdBtnMr.Checked = true;
                    }
                }

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            fetch();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (RdBtnMr.Checked == true)
            {
                gend = RdBtnMr.Text;

            }
            if (RdBtnMRs.Checked == true)
            {
                gend = RdBtnMRs.Text;

            }
            string name = TxtName.Text;
            string dob = TxtDOB.Text;
            string coca = TxtCOCA.Text;
            string co = TxtCO.Text;
            string ph = TxtPho.Text;
            string mail = TxtEmail.Text;
            string pass = TxtPAss.Text;
            stidPro = Session["stid"].ToString();
            valid = Convert.ToInt32(stidPro);
            string connection = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            string up = "UPDATE StuRegister SET Name=@name,StID=@stID,DOB=@dOB,Course_Cat=@course_Cat,Course=@course,PhoneNo=@phoneNo,Email=@email,Password=@password,Salutation=@salutation where StID=" + valid + "";
            SqlCommand cmd = new SqlCommand(up, con);

            cmd.Parameters.AddWithValue("@name", SqlDbType.VarChar).Value = name;
            cmd.Parameters.AddWithValue("@stId", SqlDbType.Int).Value = valid;
            cmd.Parameters.AddWithValue("@dOB", SqlDbType.VarChar).Value = dob;
            cmd.Parameters.AddWithValue("@course_Cat", SqlDbType.VarChar).Value = coca;
            cmd.Parameters.AddWithValue("@course", SqlDbType.VarChar).Value = co;
            cmd.Parameters.AddWithValue("@phoneNo", SqlDbType.VarChar).Value = ph;
            cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = mail;
            cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = pass;
            cmd.Parameters.AddWithValue("@salutation", SqlDbType.VarChar).Value = this.gend;
            int c = cmd.ExecuteNonQuery();
            if (c > 0)
            {
                Response.Redirect("StuHome.aspx");
            }




        }
    }
}