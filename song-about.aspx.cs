using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;


namespace DB_Project
{
    public partial class song_about : System.Web.UI.Page
    {
        string strconnect = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string SongName = Request.QueryString["SongN"];

            SqlConnection databaseConnection = new SqlConnection(strconnect);
            databaseConnection.Open();

            using (SqlCommand command = new SqlCommand("FindSong", databaseConnection))
            {

                command.CommandType = CommandType.StoredProcedure;


                SqlParameter outputParam = new SqlParameter();
                outputParam.ParameterName = "@Sname";
                outputParam.SqlDbType = SqlDbType.NVarChar;
                outputParam.Size = 50;
                outputParam.Direction = ParameterDirection.Output;

                SqlParameter year = new SqlParameter();
                year.ParameterName = "@year";
                year.SqlDbType = SqlDbType.Int;
                year.Direction = ParameterDirection.Output;

                SqlParameter duration = new SqlParameter();
                duration.ParameterName = "@Duration";
                duration.SqlDbType = SqlDbType.NVarChar;
                duration.Size = 10;
                duration.Direction = ParameterDirection.Output;

                SqlParameter id = new SqlParameter();
                id.ParameterName = "@path";
                id.SqlDbType = SqlDbType.NVarChar;
                id.Size = 500;
                id.Direction = ParameterDirection.Output;


                SqlParameter nme = new SqlParameter();
                nme.ParameterName = "@ArtName";
                nme.SqlDbType = SqlDbType.NVarChar;
                nme.Size = 50;
                nme.Direction = ParameterDirection.Output;

                SqlParameter tme = new SqlParameter();
                tme.ParameterName = "@time";
                tme.SqlDbType = SqlDbType.NVarChar;
                tme.Size = 10;
                tme.Direction = ParameterDirection.Output;

                SqlParameter sng = new SqlParameter();
                sng.ParameterName = "@picPath";
                sng.SqlDbType = SqlDbType.NVarChar;
                sng.Size = 500;
                sng.Direction = ParameterDirection.Output;

                SqlParameter pc = new SqlParameter();
                pc.ParameterName = "@ArtPic";
                pc.SqlDbType = SqlDbType.NVarChar;
                pc.Size = 500;
                pc.Direction = ParameterDirection.Output;


                command.Parameters.AddWithValue("@name", SongName);


                command.Parameters.Add(outputParam);
                command.Parameters.Add(year);
                command.Parameters.Add(duration);
                command.Parameters.Add(id);
                command.Parameters.Add(nme);                               
                command.Parameters.Add(tme);
                command.Parameters.Add(sng);
                command.Parameters.Add(pc);

                int effect = command.ExecuteNonQuery();

                
                string myVal = outputParam.Value.ToString();
                title.Text = myVal;
                myVal = duration.Value.ToString();
                Duration.Text = myVal;
                myVal = nme.Value.ToString();
                Artist.Text = myVal;

                var mySong = (HtmlAudio)Page.FindControl("MySong");
                
                myVal = id.Value.ToString();
                // Set the src attribute using the Attributes property
                mySong.Attributes["src"] = myVal;
               
                myVal = tme.Value.ToString();
                lblS.Text = myVal;
                myVal = year.Value.ToString();
                date.Text = myVal;
                myVal= sng.Value.ToString();
                songP.ImageUrl = myVal;
                myVal = pc.Value.ToString();
                artPic.ImageUrl = myVal;

                databaseConnection.Close();
            }
        }
    }
}