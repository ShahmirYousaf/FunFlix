using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Project
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["check"] == null)
            {
                game2.Visible = true;
            }
            else if (Session["Package"].Equals("Premium"))
            {
                game2.Visible = true;
            }
            else if(Session["Package"].Equals("Basic"))
            {
                game2.Visible = false;
            }
        }
    }
}