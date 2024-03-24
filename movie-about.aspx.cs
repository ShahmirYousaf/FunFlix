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
using System.Web.Services.Description;
using System.Reflection.Emit;
using System.Threading;
using System.Xml.Schema;
using System.Web.UI.HtmlControls;

namespace DB_Project
{
    public partial class movie_about : System.Web.UI.Page
    {
        string strconnect = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (Session["movie"].Equals(""))
            {
                string moviePic = Request.QueryString["moviePic"];

                SqlConnection databaseConnection = new SqlConnection(strconnect);
                databaseConnection.Open();

                using (SqlCommand command = new SqlCommand("FindMovie", databaseConnection))
                {

                    command.CommandType = CommandType.StoredProcedure;


                    SqlParameter outputParam = new SqlParameter();
                    outputParam.ParameterName = "@desc";
                    outputParam.SqlDbType = SqlDbType.NVarChar;
                    outputParam.Size = 500;
                    outputParam.Direction = ParameterDirection.Output;

                    SqlParameter duration = new SqlParameter();
                    duration.ParameterName = "@dur";
                    duration.SqlDbType = SqlDbType.NVarChar;
                    duration.Size = 10;
                    duration.Direction = ParameterDirection.Output;

                    SqlParameter rating = new SqlParameter();
                    rating.ParameterName = "@rate";
                    rating.SqlDbType = SqlDbType.Float;
                    rating.Direction = ParameterDirection.Output;

                    SqlParameter gen = new SqlParameter();
                    gen.ParameterName = "@genre";
                    gen.SqlDbType = SqlDbType.NVarChar;
                    gen.Size = 30;
                    gen.Direction = ParameterDirection.Output;

                    SqlParameter nme = new SqlParameter();
                    nme.ParameterName = "@name";
                    nme.SqlDbType = SqlDbType.NVarChar;
                    nme.Size = 50;
                    nme.Direction = ParameterDirection.Output;

                    SqlParameter MId = new SqlParameter();
                    MId.ParameterName = "@Mvid";
                    MId.SqlDbType = SqlDbType.NVarChar;
                    MId.Size = 500;
                    MId.Direction = ParameterDirection.Output;

                    SqlParameter pic = new SqlParameter();
                    pic.ParameterName = "@Mpic";
                    pic.SqlDbType = SqlDbType.NVarChar;
                    pic.Size = 500;
                    pic.Direction = ParameterDirection.Output;

                    SqlParameter year = new SqlParameter();
                    year.ParameterName = "@year";
                    year.SqlDbType = SqlDbType.Int;

                    year.Direction = ParameterDirection.Output;

                    command.Parameters.AddWithValue("@pic", moviePic);


                    command.Parameters.Add(outputParam);
                    command.Parameters.Add(duration);
                    command.Parameters.Add(rating);
                    command.Parameters.Add(gen);
                    command.Parameters.Add(nme);
                    command.Parameters.Add(MId);
                    command.Parameters.Add(pic);
                    command.Parameters.Add(year);



                    int effect = command.ExecuteNonQuery();

                    // Response.Write("<script> alert ('" + message + "'); </script>");



                    string myVal = outputParam.Value.ToString();
                    desc.Text = myVal;
                    myVal = duration.Value.ToString();
                    lblDur.Text = myVal;
                    myVal = rating.Value.ToString();
                    lblrat.Text = myVal;
                    myVal = gen.Value.ToString();
                    lblgen.Text = myVal;
                    myVal = nme.Value.ToString();
                    mName.Text = myVal;
                    myVal = MId.Value.ToString();
                    movieImage.ImageUrl = myVal;
                    myVal = pic.Value.ToString();
                    trailerVid.Attributes["src"] = myVal;
                    myVal = year.Value.ToString();
                    lblYear.Text = myVal;

                    databaseConnection.Close();
                }

            }
            else
            {
                SqlConnection databaseConnection = new SqlConnection(strconnect);
                databaseConnection.Open();

                using (SqlCommand command = new SqlCommand("FindMovie", databaseConnection))
                {
                    string moviePic = (string)Session["movie"];
                    command.CommandType = CommandType.StoredProcedure;


                    SqlParameter outputParam = new SqlParameter();
                    outputParam.ParameterName = "@desc";
                    outputParam.SqlDbType = SqlDbType.NVarChar;
                    outputParam.Size = 500;
                    outputParam.Direction = ParameterDirection.Output;

                    SqlParameter duration = new SqlParameter();
                    duration.ParameterName = "@dur";
                    duration.SqlDbType = SqlDbType.NVarChar;
                    duration.Size = 10;
                    duration.Direction = ParameterDirection.Output;

                    SqlParameter rating = new SqlParameter();
                    rating.ParameterName = "@rate";
                    rating.SqlDbType = SqlDbType.Float;
                    rating.Direction = ParameterDirection.Output;

                    SqlParameter gen = new SqlParameter();
                    gen.ParameterName = "@genre";
                    gen.SqlDbType = SqlDbType.NVarChar;
                    gen.Size = 30;
                    gen.Direction = ParameterDirection.Output;

                    SqlParameter nme = new SqlParameter();
                    nme.ParameterName = "@name";
                    nme.SqlDbType = SqlDbType.NVarChar;
                    nme.Size = 50;
                    nme.Direction = ParameterDirection.Output;

                    SqlParameter MId = new SqlParameter();
                    MId.ParameterName = "@Mvid";
                    MId.SqlDbType = SqlDbType.NVarChar;
                    MId.Size = 500;
                    MId.Direction = ParameterDirection.Output;

                    SqlParameter pic = new SqlParameter();
                    pic.ParameterName = "@Mpic";
                    pic.SqlDbType = SqlDbType.NVarChar;
                    pic.Size = 500;
                    pic.Direction = ParameterDirection.Output;

                    SqlParameter year = new SqlParameter();
                    year.ParameterName = "@year";
                    year.SqlDbType = SqlDbType.Int;

                    year.Direction = ParameterDirection.Output;

                    command.Parameters.AddWithValue("@pic", moviePic);


                    command.Parameters.Add(outputParam);
                    command.Parameters.Add(duration);
                    command.Parameters.Add(rating);
                    command.Parameters.Add(gen);
                    command.Parameters.Add(nme);
                    command.Parameters.Add(MId);
                    command.Parameters.Add(pic);
                    command.Parameters.Add(year);



                    int effect = command.ExecuteNonQuery();

                    // Response.Write("<script> alert ('" + message + "'); </script>");



                    string myVal = outputParam.Value.ToString();
                    desc.Text = myVal;
                    myVal = duration.Value.ToString();
                    lblDur.Text = myVal;
                    myVal = rating.Value.ToString();
                    lblrat.Text = myVal;
                    myVal = gen.Value.ToString();
                    lblgen.Text = myVal;
                    myVal = nme.Value.ToString();
                    mName.Text = myVal;
                    myVal = MId.Value.ToString();
                    movieImage.ImageUrl = myVal;
                    myVal = pic.Value.ToString();
                    trailerVid.Attributes["src"] = myVal;
                    myVal = year.Value.ToString();
                    lblYear.Text = myVal;

                    databaseConnection.Close();
                }
            }
        }

    }
}