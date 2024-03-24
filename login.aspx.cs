using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DB_Project
{
    public partial class login : System.Web.UI.Page
    {
        string strconnect = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection databaseConnection = new SqlConnection(strconnect);
            //Response.Write("<script> alert ('CONNECTION IS ESTABLISHED'); </script>");
            databaseConnection.Open();

            using (SqlCommand command = new SqlCommand("Login", databaseConnection))
            {

                command.CommandType = CommandType.StoredProcedure;


                SqlParameter outputParameter = new SqlParameter(); 
                outputParameter.ParameterName = "@flag";
                outputParameter.SqlDbType = SqlDbType.Int;
                outputParameter.Direction = ParameterDirection.Output;

                SqlParameter Name = new SqlParameter();
                Name.ParameterName = "@name";
                Name.SqlDbType = SqlDbType.NVarChar;
                Name.Size = 50;
                Name.Direction = ParameterDirection.Output;

                SqlParameter Email = new SqlParameter();
                Email.ParameterName = "@mail";
                Email.SqlDbType = SqlDbType.NVarChar;
                Email.Size = 40;
                Email.Direction = ParameterDirection.Output;

                SqlParameter No = new SqlParameter();
                No.ParameterName = "@pNo";
                No.SqlDbType = SqlDbType.NVarChar;
                No.Size = 50;
                No.Direction = ParameterDirection.Output;

                SqlParameter Package = new SqlParameter();
                Package.ParameterName = "@package";
                Package.SqlDbType = SqlDbType.NVarChar;
                Package.Size = 10;
                Package.Direction = ParameterDirection.Output;


                command.Parameters.AddWithValue("@email", userDet.Text);
                command.Parameters.AddWithValue("@pass", Password.Text);

                command.Parameters.Add(outputParameter);
                command.Parameters.Add(Name);
                command.Parameters.Add(Email);
                command.Parameters.Add(No);
                command.Parameters.Add(Package);


                command.ExecuteNonQuery();

                int outputValue = (int)command.Parameters["@flag"].Value;


                if (outputValue == 1)
                {
                    Response.Write("<script> alert ('Login Successful!'); </script>");
                    string n = (string)command.Parameters["@name"].Value;
                    string m = (string)command.Parameters["@mail"].Value;
                    string p = (string)command.Parameters["@pNo"].Value;
                    string pk = (string)command.Parameters["@package"].Value;

                    Session["Name"] = n;
                    Session["Email"] = m;
                    Session["Package"] = pk;
                    Session["Phone"] = p;
                    Session["check"] = "LoggedIn";
                    Response.Redirect("home2.aspx");
                }
                else
                {
                    Response.Write("<script> alert ('Login Failed!'); </script>");
                }
                databaseConnection.Close();
            }
        }
    }
}