using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Project
{
    public partial class MainPage : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["check"] == null)
            {
                Mov.Visible = false;
                song.Visible = false;
                game.Visible = false;
            }
            else if(Session["check"].Equals("LoggedIn"))
            {
                Mov.Visible = true;
                song.Visible = true;
                game.Visible = true;
            }
            else
            {
                Mov.Visible = false;
                song.Visible = false;
                game.Visible = false;
            }
        }

        protected void home_Click(object sender, EventArgs e)
        {
            if (Session["check"] == null)
            {
                Server.Transfer("home.aspx");
            }
            else if (Session["check"].Equals("LoggedIn"))
            {
                Server.Transfer("home2.aspx");
            }
            else
            {
                Server.Transfer("home.aspx");
            }
        }
    }
}