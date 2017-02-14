using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
namespace Project_WebDevelopement
{
    public partial class Registration : System.Web.UI.Page
    {public static int  roll;
        protected void Page_Load(object sender, EventArgs e)
        {
            roll = Convert.ToInt32(Session["rOLL"]);
            
            TextBox2.TextChanged += new System.EventHandler(this.TextBox2_TextChanged);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [Table] values(@NAME,@ROLL,@DEP,@District,@PASSWORD,@veryfication)";
            string connection = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\desktop new\\MY\\PROJECT-13\\PROJECT\\App_Data\\Database1.mdf\";Integrated Security=True";
            string connection1 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(connection1);

            if (TextBox1.Text.Equals(""))
            {
                Label3.Text = "name required";
            }
            else
            {

                string sql2 = "SELECT NAME FROM [Table]";
                string connection12 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
                SqlConnection conn2 = new SqlConnection(connection12);
                conn2.Open();
                SqlCommand cmd = new SqlCommand(sql2, conn2);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    if (reader.GetValue(0).Equals(TextBox1.Text))
                    {
                        Label3.Text = "name already exist";
                        conn2.Close();
                        break;
                    }
                    else {
                        Label3.Text = "good";
                    }
                } 
               

            }

            if (TextBox2.Text.Equals(""))
            {
                Label1.Text = "roll required";

            }
            else
            {
                int roll = Convert.ToInt32(TextBox2.Text);
                if (roll < 1207001 || roll > 1207060)
                {

                    Label1.Text = "must be  within cse12 batch";
                    TextBox2.Text = "";
                }

                else {

                    string sql2 = "SELECT ROLL FROM [Table]";
                    string connection12 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
                    SqlConnection conn2 = new SqlConnection(connection12);
                    conn2.Open();
                    SqlCommand cmd = new SqlCommand(sql2, conn2);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {

                        if (reader.GetValue(0).Equals(TextBox2.Text))
                        {
                            Label1.Text = "roll already exist";
                            conn2.Close();
                            break;
                        }
                        else
                        {
                            Label1.Text = "correct";
                           // Label3.Text = "good";
                        }
                    }
                    conn2.Close();
   
            }
            }

            if (TextBox3.Text.Equals("")) {
                Label2.Text = "dep is required";
            }
            else{
                if (TextBox3.Text != "cse" && TextBox3.Text != "CSE")
                {

                    Label2.Text = "must be  within cse12 batch";
                    TextBox3.Text = "";
                }
                else {
                    Label2.Text = "correct";
                
                }
            }

            if (TextBox4.Text.Equals(""))
            {
                Label4.Text = "dis required";
            }
            else {
                Label4.Text = "good";
            }
            if (TextBox5.Text.Equals(""))
            {
                pass.Text = "password required";
            }
            else
            {
                pass.Text = "good";
            }
            if (TextBox6.Text.Equals(""))
            {
                cpass.Text = "password required";
            }
            else
            {
                cpass.Text = "good";
            }
            if (pass.Text.Equals("good") && cpass.Text.Equals("good") && TextBox5.Text.Equals(TextBox6.Text))
            {
                cpass.Text = "MATCHED";

            }
            else {

                cpass.Text = "ENTER YOURE PASSWORD AGAIN";
            
            }
            if (Label1.Text.Equals("correct") && Label2.Text.Equals("correct") &&
                Label3.Text.Equals("good") && Label4.Text.Equals("good") && cpass.Text.Equals("MATCHED"))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    //cmd.Parameters.AddWithValue("@id", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@ROLL", TextBox2.Text.ToString());
                    cmd.Parameters.AddWithValue("@DEP", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@District", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@PASSWORD", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@veryfication","n");
                    
                    // cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                    cmd.ExecuteNonQuery();
                    Label5.Text = "Registered Successfully";
                    conn.Close();
                    string sql26 = "INSERT INTO [person] values  (@father,@mother,@permanent,@present,@college,@blood,@hall,@room,@hobby,@skill,@email,@fav_teach,@future_plan,@Roll)";
                    string connection126 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
                    SqlConnection conn26 = new SqlConnection(connection126);
                    conn26.Open();
                    SqlCommand cmd6 = new SqlCommand(sql26, conn26);
                    cmd6.Parameters.AddWithValue("@father", " ");
                    cmd6.Parameters.AddWithValue("@mother", " ");
                    cmd6.Parameters.AddWithValue("@permanent", " ");
                    cmd6.Parameters.AddWithValue("@present", " ");
                    cmd6.Parameters.AddWithValue("@college", " ");
                    cmd6.Parameters.AddWithValue("@blood", " ");
                    cmd6.Parameters.AddWithValue("@hall", " ");
                    cmd6.Parameters.AddWithValue("@room", " ");
                    cmd6.Parameters.AddWithValue("@hobby", " ");
                    cmd6.Parameters.AddWithValue("@skill", " ");
                    cmd6.Parameters.AddWithValue("@email", " ");
                    cmd6.Parameters.AddWithValue("@fav_teach", " ");
                    cmd6.Parameters.AddWithValue("@future_plan", " ");
                    cmd6.Parameters.AddWithValue("@Roll", TextBox2.Text.ToString());

                    cmd6.ExecuteNonQuery();
                    Label5.Text = "Registered Successfully";

                    conn26.Close();





                }
                catch (Exception ex)
                {


                    Label5.Text = ex.Message;
                }


            }
        
        }
        /// <summary>
        
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>



        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
           
          //
          
        }

        

    }
}