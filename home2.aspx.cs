using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            string myValue = (string)Session["Name"];
            lblName.Text = myValue;
            myValue = (string)Session["Email"];
            lblEmail.Text = myValue;
            myValue = (string)Session["Phone"];
            lblNo.Text = myValue;
            myValue = (string)Session["Package"];
            lblPack.Text = myValue;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["Name"] = "";
            Session["Email"] = "";
            Session["Package"] = "";
            Session["Phone"] = "";
            Session["check"] = "";
            Server.Transfer("home.aspx");
            
        }
    }
}