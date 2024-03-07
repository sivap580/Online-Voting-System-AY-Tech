using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace onv
{
    public partial class CandiApprooval : System.Web.UI.Page
    {
        string name, Course, Coco;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Enabled = false;
            Loaddata();
        }
        public void Loaddata1()
        {

            SqlConnection conn = new SqlConnection("Data Source=SIVA_ACER;Initial Catalog=OVS; persist security info=False;integrated security=SSPI");
            conn.Open();
            string t = "select Name,ID,PartyName,Image from Candidate";
            SqlDataAdapter da = new SqlDataAdapter(t, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        public void Loaddata()
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection("Data Source=SIVA_ACER;Initial Catalog=OVS; persist security info=False;integrated security=SSPI");
                conn.Open();
                string t = "select Name,ID,PartyName,Image from Candidate";
                SqlDataAdapter da = new SqlDataAdapter(t, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void TxtID_TextChanged1(object sender, EventArgs e)
        {

        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Image"]);
                (e.Row.FindControl("Image1") as System.Web.UI.WebControls.Image).ImageUrl = imageUrl;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;");
            conn.Open();
            string extension = Path.GetExtension(FileUpload.PostedFile.FileName);

            if ((FileUpload.HasFile) && ((extension == ".jpeg") || (extension == ".png") || (extension == ".jpg")))
            {
                int imglength = FileUpload.PostedFile.ContentLength;
                int maxfile = 1048576;
                byte[] raw = new byte[imglength];
                if (imglength <= maxfile)
                {

                    HttpPostedFile image = FileUpload.PostedFile;
                    image.InputStream.Read(raw, 0, imglength);

                    string p = "INSERT INTO Candidate (Name, ID, Partyname, Image) VALUES(@Name,@ID,@Partyname,@Image)";
                    SqlCommand cmd = new SqlCommand(p, conn);

                    cmd.Parameters.AddWithValue("@Name", SqlDbType.VarChar).Value = TxtName.Text;
                    cmd.Parameters.AddWithValue("@ID", SqlDbType.Int).Value = TxtID.Text;
                    cmd.Parameters.AddWithValue("@Partyname", SqlDbType.VarChar).Value = TxtPartyname.Text;
                    cmd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = raw;

                    int q = cmd.ExecuteNonQuery();

                    if (q > 0)
                    {
                        string r = "<script>alert('Candidate details approved')</script>";
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", r);

                        TxtName.Text = "";
                        TxtID.Text = "";
                        TxtPartyname.Text = "";
                        Loaddata1();
                    }
                }
                else
                {
                    lblMessage.Text = "Your photo size is beyond the limit, Please verify!";
                }
            }
            else
            {
                string r = "<script>alert('Error')</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", r);

                TxtName.Text = "";
                TxtID.Text = "";
                TxtPartyname.Text = "";
            }
            conn.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;");
            conn.Open();
            string deleteQuery = "DELETE FROM Candidate";
            SqlCommand cmd = new SqlCommand(deleteQuery, conn);
            int rowsAffected = cmd.ExecuteNonQuery();
            conn.Close();
            Console.WriteLine($"{rowsAffected} row(s) deleted from the Candidate table.");
            Loaddata1();
        }

        

        public void Fetch(int ID)
        {
            try
            {

                SqlConnection conn = new SqlConnection(@"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;");
                conn.Open();
                string verify = "select Name,Course_cat,Course from StuRegister where StId=" + ID + "";
                SqlCommand cmd = new SqlCommand(verify, conn);
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    rdr.Read();
                    if (rdr.HasRows)
                    {
                        name = rdr["Name"].ToString();
                        Course = rdr["Course_cat"].ToString();
                        Coco = rdr["Course"].ToString();
                        string r = "<script>alert('Name is " + name + " from " + Course + " and in " + Coco + " sem/year')</script>";
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", r);
                        Button2.Enabled = true;

                    }
                    else
                    {
                        string r = "<script>alert('invalid candidate')</script>";
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", r);
                    }
                }
            }catch (Exception ex) { }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(TxtID.Text);
            Fetch(ID);
            
        }
    }
}