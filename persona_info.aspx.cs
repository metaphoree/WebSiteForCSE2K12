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
    public partial class Downloads : System.Web.UI.Page
    {
       public static int roll ;
       protected void Page_Load(object sender, EventArgs e)
       {
                     
               roll = Convert.ToInt32(Session["rOLL"]);

               if (!IsPostBack)
               {
                   string sql = "SELECT father,mother,permanent,present,college,blood,hall,room,hobby,skill,email,fav_teach,future_plan,Roll FROM [person] ";
                   string connection = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\desktop new\\MY\\PROJECT-13\\PROJECT\\App_Data\\Database1.mdf\";Integrated Security=True";
                   string connection1 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;


                   SqlConnection conn = new SqlConnection(connection1);
                   try
                   {

                       conn.Open();
                       SqlCommand cmd = new SqlCommand(sql, conn);
                       SqlDataReader reader = cmd.ExecuteReader();
                       while (reader.Read())
                       {

                           if (reader.GetValue(13).Equals(roll.ToString()))
                           {

                               TextBox1.Text = reader.GetValue(0).ToString();
                               TextBox2.Text = reader.GetValue(1).ToString();
                               TextBox3.Text = reader.GetValue(2).ToString();
                               TextBox4.Text = reader.GetValue(3).ToString();
                               TextBox5.Text = reader.GetValue(4).ToString();
                               TextBox6.Text = reader.GetValue(5).ToString();
                               TextBox7.Text = reader.GetValue(6).ToString();
                               TextBox8.Text = reader.GetValue(7).ToString();
                               TextBox9.Text = reader.GetValue(8).ToString();
                               TextBox10.Text = reader.GetValue(9).ToString();
                               TextBox11.Text = reader.GetValue(10).ToString();
                               TextBox12.Text = reader.GetValue(11).ToString();
                               TextBox13.Text = reader.GetValue(12).ToString();

                           }

                           else
                           {
                               //Label1.Text = roll.ToString();

                           }
                       }
                   }
                   catch (Exception ex1)
                   {
                       //Label1.Text = ex1.Message;

                   }
               }
       }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //string sql = "UPDATE [Table] SET [PASSWORD] = @PASSWORD WHERE [ROLL] = @ROLL";
            string sql = "UPDATE  [person] SET [father]=@father,[mother]=@mother,[permanent]=@permanent,[present]=@present,[college]=@college,[blood]=@blood,[hall]=@hall,[room]=@room,[hobby]=@hobby,[skill]=@skill,[email]=@email,[fav_teach]=@fav_teach,[future_plan]=@future_plan WHERE [Roll]=@Roll";
            string connection = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\desktop new\\MY\\PROJECT-13\\PROJECT\\App_Data\\Database1.mdf\";Integrated Security=True";
            string connection1 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(connection1);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                //cmd.Parameters.AddWithValue("@id", TextBox7.Text);
                cmd.Parameters.AddWithValue("@father", TextBox1.Text);
                cmd.Parameters.AddWithValue("@mother", TextBox2.Text.ToString());
                cmd.Parameters.AddWithValue("@permanent", TextBox3.Text);
                cmd.Parameters.AddWithValue("@present", TextBox4.Text);
                cmd.Parameters.AddWithValue("@college", TextBox5.Text);
                cmd.Parameters.AddWithValue("@blood", TextBox6.Text);
                cmd.Parameters.AddWithValue("@hall", TextBox7.Text.ToString());
                cmd.Parameters.AddWithValue("@room", TextBox8.Text);
                cmd.Parameters.AddWithValue("@hobby", TextBox9.Text);
                cmd.Parameters.AddWithValue("@skill", TextBox10.Text);
                cmd.Parameters.AddWithValue("@email", TextBox11.Text);
                cmd.Parameters.AddWithValue("@fav_teach", TextBox12.Text.ToString());
                cmd.Parameters.AddWithValue("@future_plan", TextBox13.Text);
              cmd.Parameters.AddWithValue("@Roll", roll.ToString());
                //cmd.Parameters.AddWithValue("@PASSWORD", TextBox5.Text);
                // cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                cmd.ExecuteNonQuery();
             //   Label1.Text = TextBox8.Text;
           
            }
            catch (Exception ex)
            {
               // Label1.Text = ex.Message;


            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["state"] = "log out";
            Response.Redirect("Default.aspx");
        }
    }
}