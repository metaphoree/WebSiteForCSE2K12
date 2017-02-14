using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_WebDevelopement
{
    public partial class buy_product : System.Web.UI.Page
    {
        public static int roll_1;
        protected void Page_Load(object sender, EventArgs e)
        {
            roll_1 = Convert.ToInt32(Session["rOLL"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "UPDATE [Table] SET [PASSWORD] = @PASSWORD WHERE [ROLL] = @ROLL";
            string connection = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\desktop new\\MY\\PROJECT-13\\PROJECT\\App_Data\\Database1.mdf\";Integrated Security=True";
            string connection1 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;


            SqlConnection conn = new SqlConnection(connection1);
            try
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@PASSWORD", TextBox2.Text);
                cmd.Parameters.AddWithValue("@ROLL",roll_1.ToString());
                cmd.ExecuteNonQuery();

                Label1.Text = "Updated Successfully";



            }


            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Session["state"] = "log out";
            Response.Redirect("Default.aspx");
        }
    }
}