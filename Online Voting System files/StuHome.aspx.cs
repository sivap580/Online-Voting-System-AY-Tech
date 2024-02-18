using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onv
{
    public partial class StuHome : System.Web.UI.Page
    {
        SqlConnection conn;
        string v,A;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                string voted, app;

                string salute;
                if (Session["stid"] != null)
                {
                    string stidPro = Session["stid"].ToString();
                    int valid = Convert.ToInt32(stidPro);
                    String connection = @"Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                    conn = new SqlConnection(connection);
                    conn.Open();
                    String retrieval = "select Salutation,Name,DOB,StID,Course_Cat,Course,PhoneNo,Email,Vote,Approval from StuRegister where StID=" + valid + "";
                    SqlCommand cmd = new SqlCommand(retrieval, conn);
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        rdr.Read();
                        salute = rdr["Salutation"].ToString();
                        TxtName.Text = rdr["Name"].ToString();
                        TxtDOB.Text = rdr["DOB"].ToString();
                        Txtid.Text = rdr["StId"].ToString();
                        TxtCoCat.Text = rdr["Course_Cat"].ToString();
                        TxtCo.Text = rdr["Course"].ToString();
                        TxtPh.Text = rdr["PhoneNo"].ToString();
                        TxtEma.Text = rdr["Email"].ToString();
                        voted = rdr["Vote"].ToString();
                        app = rdr["Approval"].ToString();
                    }
                    v = voted;
                    A = app;
                    if (salute == "Mrs")
                    {
                        RdBtnMRs.Checked = true;
                    }
                    else if (salute == "Mr")
                    {
                        RdBtnMr.Checked = true;
                    }
                }
            }catch (Exception ex) { }
        }


        protected void UpdatButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void votingimgButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (((v == "votted") && (A== "Approoved"))||((v=="") && (A=="")))
            {
                votingimgButton2.Enabled = false;
            }
            else if ((v =="")&& (A=="Approoved"))
            {
                Response.Redirect("voting.aspx");
            }
        }
    }
}