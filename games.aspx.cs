using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Xml.Linq;


namespace DB_Project
{
    public partial class Games : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GameDisplay();
        }

        protected void GameDisplay()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("GameDisplay", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GameDataList.DataSource = dr;
                    GameDataList.DataBind();
                }
            }
        }
    }
}