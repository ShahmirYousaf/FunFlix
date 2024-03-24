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

namespace DB_Project
{
    public partial class signup : System.Web.UI.Page
    {
        string strconnect = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection databaseConnection = new SqlConnection(strconnect);
            string message = "";

            databaseConnection.Open();
            if (databaseConnection.State == System.Data.ConnectionState.Open)
            {
                //Response.Write("<script> alert ('CONNECTION IS ESTABLISHED'); </script>");
            }

            using (SqlCommand command = new SqlCommand("InsertData", databaseConnection))
            {

                command.CommandType = CommandType.StoredProcedure;


                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@msg";
                outputParameter.SqlDbType = SqlDbType.NVarChar;
                outputParameter.Size = 200;
                outputParameter.Direction = ParameterDirection.Output;

                command.Parameters.AddWithValue("@Cname", Name.Text);
                command.Parameters.AddWithValue("@email", Email.Text);
                command.Parameters.AddWithValue("@city", City.Text);
                command.Parameters.AddWithValue("@phone", Number.Text);
                command.Parameters.AddWithValue("@country", Country.Text);
                command.Parameters.AddWithValue("@dob", DOB.Text);
                command.Parameters.AddWithValue("@gender", gender.Text);
                command.Parameters.AddWithValue("@pass", SignUpPass.Text);
                command.Parameters.AddWithValue("@package", package.Text);
                command.Parameters.AddWithValue("@cardNo", creditnumber.Text);
                command.Parameters.AddWithValue("@cType", cardtype.Text);
                command.Parameters.AddWithValue("@expD", cardExpiry.Text);
                command.Parameters.AddWithValue("@cvv", cvc.Text);
                command.Parameters.AddWithValue("@nameHolder", cardOwner.Text);

                command.Parameters.Add(outputParameter);

                int effect = command.ExecuteNonQuery();
               
                message = outputParameter.Value.ToString();

               // Response.Write("<script> alert ('" + message + "'); </script>");

                databaseConnection.Close();
                if (effect > 0)
                {

                    Response.Write("<script> alert ('" + message + "'); </script>");
                   
                    Server.Transfer("home.aspx");

                }
                else
                {
                    
                    Response.Write("<script> alert ('" + message + "'); </script>");
                   
                }
            }
        }
    }
}