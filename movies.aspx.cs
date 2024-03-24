using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace DB_Project
{
    public partial class movies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["movie"] = "";

            MDLbind1();
            MDLbind2();
            MDLbind3();
            MDLbind4();
            MDLbind5();

           
        }
        protected void MDLbind1()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("ActionMovies", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    MovieDataList1.DataSource = dr;
                    MovieDataList1.DataBind();
                }
            }
        }

        protected void MDLbind2()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("ComedyMovies", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    MovieDataList2.DataSource = dr;
                    MovieDataList2.DataBind();
                }
            }
        }

        protected void MDLbind3()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("DramaMovies", con);
                con.Open();
                
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    MovieDataList3.DataSource = dr;
                    MovieDataList3.DataBind();
                }
            }
        }

        protected void MDLbind4()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("HorrorMovies", con);
                con.Open();
               
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    MovieDataList4.DataSource = dr;
                    MovieDataList4.DataBind();
                }
            }
        }

        protected void MDLbind5()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("RomanticMovies", con);
                con.Open();
              
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    MovieDataList5.DataSource = dr;
                    MovieDataList5.DataBind();
                }
            }
        }

        protected void actBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("movie-about.aspx");
        }

        protected void mvBtn_Click(object sender, EventArgs e)
        {
            Session["movie"] = "avengers.jpg";
            Response.Redirect("movie-about.aspx");
        }
    }
}