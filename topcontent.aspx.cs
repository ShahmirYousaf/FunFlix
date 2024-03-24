using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Project
{
    public partial class topcontent2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MDLbind();
            SDLbind();
            GDLbind();
        }
        protected void MDLbind()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("TopMovies", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }
        }
        protected void SDLbind()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("TopSongs", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DataList2.DataSource = dr;
                    DataList2.DataBind();
                }
            }
        }

        protected void GDLbind()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("TopGames", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DataList3.DataSource = dr;
                    DataList3.DataBind();
                }
            }
        }
    }
}