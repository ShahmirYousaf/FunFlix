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
    public partial class songs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }
        protected void Display()
        {
            string cs = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(cs))
            {
                SqlCommand command = new SqlCommand("SongsDisplay", connection);
                connection.Open();
                command.CommandType = CommandType.StoredProcedure;
                
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }
        }
    }
}