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
    public partial class StudApprroval : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Binddata();
        }
        public void Binddata()
        {
            if (!IsPostBack)
            {
                string s = @"Data Source= DESKTOP-41IDCDP;Initial Catalog=OVS; persist security info=False;integrated security=SSPI";
                SqlConnection conn = new SqlConnection(s);
                conn.Open();
                string t = "select Name,DOB, StID,Course_Cat,Course,PhoneNo,Email,Approval,Vote from StuRegister";
                SqlDataAdapter da = new SqlDataAdapter(t, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        private void update(int Stid, string Approve)
        {
            string s = @"Data Source= DESKTOP-41IDCDP;Initial Catalog=OVS; persist security info=False;integrated security=SSPI";
            SqlConnection conn = new SqlConnection(s);
            conn.Open();
            string up = "update StuRegister set Approval=@Approve where StId = @Stid";
            cmd = new SqlCommand(up, conn);
            cmd.Parameters.AddWithValue("@Approve", Approve);
            cmd.Parameters.AddWithValue("@Stid", Stid);
            cmd.ExecuteNonQuery();
        }
        private void LoadData1()
        {

            string s = @"Data Source= DESKTOP-41IDCDP;Initial Catalog=OVS; persist security info=False;integrated security=SSPI";
            SqlConnection conn = new SqlConnection(s);
            conn.Open();
            string t = "select Name,DOB, StID,Course_Cat,Course,PhoneNo,Email,Approval,Vote from StuRegister";
            SqlDataAdapter da = new SqlDataAdapter(t, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void LoadData()
        {

            string s = @"Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS; persist security info=False;integrated security=SSPI";
            SqlConnection conn = new SqlConnection(s);
            conn.Open();
            string t = "select Name,DOB, StID,Course_Cat,Course,PhoneNo,Email,Approval,Vote from StuRegister";
            SqlDataAdapter da = new SqlDataAdapter(t, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void update1(int Stid, string Voted)
        {
            string s = @"Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS; persist security info=False;integrated security=SSPI";
            SqlConnection conn = new SqlConnection(s);
            conn.Open();
            string up = "update StuRegister set Vote =@Approve where StId = @Stid";
            cmd = new SqlCommand(up, conn);
            cmd.Parameters.AddWithValue("@Approve", Voted);
            cmd.Parameters.AddWithValue("@Stid", Stid);
            cmd.ExecuteNonQuery();
        }

        protected void Button2_Click(object sender, EventArgs e)//approoval button
        {
            string Approve = "Approoved";
            foreach (GridViewRow row in GridView1.Rows)
            {
                int StId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                update(StId, Approve);

            }
            string script = "alert('Congratulations Data is Approoved');";
            ClientScript.RegisterStartupScript(this.GetType(), "MessageBox", script, true);
            LoadData();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int StID = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);

            string s = @"Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS; persist security info=False;integrated security=SSPI";
            SqlConnection conn = new SqlConnection(s);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Delete StuRegister where StID= '" + StID + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Deleted');", true);
            LoadData();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string Voted = "";

            foreach (GridViewRow row in GridView1.Rows)
            {
                int StId = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                update1(StId, Voted);
                LoadData1();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}