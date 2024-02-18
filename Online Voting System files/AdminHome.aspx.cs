using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onv
{
    public partial class AdminHome : System.Web.UI.Page
    {
        string word;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void BtnNotify_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendNotifications.aspx");
        }

        protected void BtnStApp_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudApprroval.aspx");
        }

        protected void BtnCandi_Click(object sender, EventArgs e)
        {
            Response.Redirect("CandiApprooval.aspx"); ;
        }

       

        protected void BtnResult_Click(object sender, EventArgs e)
        {
            if (RdResult.Checked== true) 
            {
                word = "PUBLISH";
                Session["R"]= word;
            }
            else
            {
                word = "NOPUBLISH";
                Session["R"]= word;
            }
        }
    }
}