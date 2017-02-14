using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
namespace SignalRChat
{
    public partial class pdf_viewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "SELECT name,roll FROM [admin] ";
           
            string connection1 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;


            SqlConnection conn = new SqlConnection(connection1);
            try
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    if (reader.GetValue(0).Equals(TextBox1.Text))
                    {
                        if (reader.GetValue(1).Equals(TextBox2.Text))
                        {

                            Response.Redirect("ADMIN.aspx");


                        }
                        else { 
                        
                        Label3.Text="PASSWORD INCORRECT";
                        
                        }
   }
                      else {

                          Label3.Text = "NAME INCORRECT";
                        
                        }
                



                }
            }

            catch (Exception ex)
            {

                Label3.Text = ex.Message;
            }

        }
    }
}