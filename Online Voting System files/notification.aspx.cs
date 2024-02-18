using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onv
{
    public partial class notification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlCon = "Data Source=DESKTOP-41IDCDP;Initial Catalog=OVS;Persist Security info=False;integrated security=SSPI;";

            // SQL query to select data from the database
            string selectQuery = "SELECT Message, Date FROM Notification";

            using (SqlConnection sqlConnection = new SqlConnection(sqlCon))
            {
                using (SqlCommand cmd = new SqlCommand(selectQuery, sqlConnection))
                {
                    try
                    {
                        sqlConnection.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            // Check if there are rows returned
                            if (reader.HasRows)
                            {
                                // Read each row and display the notification and date
                                while (reader.Read())
                                {
                                    string notification = reader["Message"].ToString();
                                    DateTime date = Convert.ToDateTime(reader["Date"]);

                                    // Display the notification and date in a label (you can modify this based on your UI)
                                    LabelNotifications.Text += $"* {notification.PadRight(70, ' ')} - {date.ToString("dd-MM-yyyy "),30}<br/>";
                                }
                            }
                            else
                            {
                                // If no rows are returned, display a message
                                LabelNotifications.Text = "No notifications found.";
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        // Log the exception details to help identify the issue
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                        LabelNotifications.Text = "An error occurred: " + ex.Message;
                        // Display a JavaScript alert for connection or query failure
                        string errorMessage = "An error occurred: " + ex.Message.Replace("'", "\\'");
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert(' " + errorMessage + "');", true);
                    }
                }
            }
            // After fetching data, invoke the JavaScript function to apply the blinking effect
            ClientScript.RegisterStartupScript(GetType(), "applyBlink", "applyBlinkAnimation();", true);
        }
    }
}