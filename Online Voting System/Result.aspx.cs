using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace onv
{
    public partial class Result : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter ada;
        DataTable dt;
        DataSet ds;
        void clear()
        {
            TxtID.Text = "";

            TxtName.Text = "";

            TxtDept.Text = "";

            TxtVts.Text = "";


        }
        private void SetDataFromDatabase()

        {


            string connectionString = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";

            string query = "SELECT Name, Vote FROM Candidate";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();


                    Chart1.Series["s2"].Points.Clear();


                    while (reader.Read())
                    {
                        string category = reader["Name"].ToString();
                        int value = Convert.ToInt32(reader["Vote"]);

                        Chart1.Series["s2"].Points.AddXY(category, value);
                    }
                    Chart1.ChartAreas["ChartArea1"].BackColor = System.Drawing.Color.Transparent;

                    reader.Close();
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["R"] != null)
            {
                string VotingButton = Session["R"].ToString();
                if (VotingButton == "NOPUBLISH")
                {
                    Response.Redirect("notification.aspx");
                }
            }
            string constring = @"Data Source=SIVA_ACER;Initial Catalog=OVS;persist security info=False;integrated security=SSPI;";
            con = new SqlConnection();
            con.ConnectionString = constring;
            //con.Open();
            //Response.Write("Connected");
            // con.Close();
            con.Open();

            ada = new SqlDataAdapter("SELECT TOP 3 * FROM Candidate ORDER BY Vote DESC", con);

            dt = new DataTable();



            ada.Fill(dt);
            try
            {



                if (dt.Rows.Count > 0)

                {

                    TxtName.Text = dt.Rows[0][0].ToString();
                    TxtID.Text = dt.Rows[0][1].ToString();
                    TxtDept.Text = dt.Rows[0][2].ToString();
                    TxtVts.Text = dt.Rows[0][4].ToString();
                    byte[] imageData = (byte[])dt.Rows[0][3];
                    string base64String = Convert.ToBase64String(imageData);
                    string imageUrl = "data:image/jpeg;base64," + base64String;
                    Image2.ImageUrl = imageUrl;
                    TxtName1.Text = dt.Rows[1][0].ToString();
                    TxtID1.Text = dt.Rows[1][1].ToString();
                    TxtDept1.Text = dt.Rows[1][2].ToString();
                    TxtVts1.Text = dt.Rows[1][4].ToString();
                    byte[] imageData1 = (byte[])dt.Rows[1][3];
                    string base64String1 = Convert.ToBase64String(imageData1);
                    string imageUrl1 = "data:image/jpeg;base64," + base64String1;
                    Image1.ImageUrl = imageUrl1;

                    TxtName2.Text = dt.Rows[2][0].ToString();
                    TxtID2.Text = dt.Rows[2][1].ToString();
                    TxtDept2.Text = dt.Rows[2][2].ToString();
                    TxtVts2.Text = dt.Rows[2][4].ToString();
                    byte[] imageData2 = (byte[])dt.Rows[2][3];
                    string base64String2 = Convert.ToBase64String(imageData2);
                    string imageUrl2 = "data:image/jpeg;base64," + base64String2;
                    Image3.ImageUrl = imageUrl2;

                }
            
                 else
                {

                  clear();

                }
                    if (!IsPostBack)
                {
                SetDataFromDatabase();
                }

                con.Close();
            }
            catch (Exception) { }

        }

       
    }
}