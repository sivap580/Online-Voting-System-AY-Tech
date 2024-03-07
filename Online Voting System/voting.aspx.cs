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
    public partial class voting : System.Web.UI.Page
    {
        int rowIndex;
        string CANID;
        string vote;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                string connect = @"Data Source=SIVA_ACER;Initial Catalog=OVS ;persist security info=False;integrated security=SSPI;";
                SqlConnection con = new SqlConnection(connect);
                con.Open();
                string reso = "select ID,Name,PartyName,Image from Candidate";
                SqlDataAdapter rdr = new SqlDataAdapter(reso, con);
                DataTable dt = new DataTable();
                rdr.Fill(dt);
                GridView.DataSource = dt;
                GridView.DataBind();
            }
        }
        public void get(int ID)
        {
            string connect = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            string reso = "select vote from Candidate where ID=" + ID + "";
            SqlCommand cmd = new SqlCommand(reso, con);
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                rdr.Read();
                vote = rdr["Vote"].ToString();
            }
        }
        protected void submit()
        {
            int STIDVO = Convert.ToInt32(Session["stid"]);
            string voting = "votted";
            string s = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
            SqlConnection con = new SqlConnection(s);
            con.Open();
            string up = "update StuRegister set Vote=@voting where StID=" + STIDVO + "";
            SqlCommand cmd = new SqlCommand(up, con);
            cmd.Parameters.AddWithValue("@voting", voting);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("StuHome.aspx");
            }
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["image"]);
                (e.Row.FindControl("Image") as Image).ImageUrl = imageUrl;
                int index = e.Row.RowIndex;
                CheckBox chkSelect = (CheckBox)e.Row.FindControl("chkvote");
                chkSelect.Attributes.Add("data-rowindex", index.ToString());
            }

        }


        protected void Button4_Click(object sender, EventArgs e)
        {
           

                foreach (GridViewRow row in GridView.Rows)
                {
                    CheckBox chkSelect = (CheckBox)row.FindControl("chkvote");

                    if (chkSelect.Checked == true)
                    {
                        rowIndex = Convert.ToInt32(chkSelect.Attributes["data-rowindex"]);
                        CANID = row.Cells[2].Text;

                    }
                }

                if (rowIndex == 0)
                {

                    int ID = Convert.ToInt32(CANID);
                    get(ID);
                    int A;
                    int K;
                    int.TryParse(vote, out A);
                    K = A + 1;
                    string s = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                    SqlConnection con = new SqlConnection(s);
                    con.Open();
                    string up = "update Candidate set Vote=" + K + " where ID=" + ID + "";
                    SqlCommand cmd = new SqlCommand(up, con);
                    int i = cmd.ExecuteNonQuery();

                }
                else if (rowIndex == 1)
                {
                    int ID = Convert.ToInt32(CANID);
                    get(ID);
                    Thread.Sleep(1000);
                    int B;
                    int K;
                    int.TryParse(vote, out B);
                    K = B + 1;
                    string s = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                    SqlConnection con = new SqlConnection(s);
                    con.Open();
                    string up = "update Candidate set Vote=" + K + " where ID=" + ID + "";
                    SqlCommand cmd = new SqlCommand(up, con);
                    int i = cmd.ExecuteNonQuery();

                }
                else if (rowIndex == 2)
                {
                    int ID = Convert.ToInt32(CANID);
                    get(ID);
                    Thread.Sleep(1000);
                    int C;
                    int K;
                    int.TryParse(vote, out C);
                    K = C + 1;
                    string s = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
                    SqlConnection con = new SqlConnection(s);
                    con.Open();
                    string up = "update Candidate set Vote=" + K + " where ID=" + ID + "";
                    SqlCommand cmd = new SqlCommand(up, con);
                    cmd.ExecuteNonQuery();


                }
                Thread.Sleep(3000);
            
            submit();
            
        }

       
    }
}