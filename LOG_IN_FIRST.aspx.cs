using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;





namespace Project_WebDevelopement
{
    public partial class LOG_IN_FIRST : System.Web.UI.Page
    {public static string name=" ";
        public string khan=" ";
        String imname;
       public static  string id ; 
        protected void Page_Load(object sender, EventArgs e)
        {
           id= Convert.ToString(Session["profile_header"]);
            ShowImage(id);
            khan = Convert.ToString(Session["profile_header"]);
            if (!IsPostBack)
            {
                
                if ((string)Session["state"] != "logged in")
                {

                    Response.Redirect("Default.aspx");
                   

                }
               // Label1.Text = "WELCOME" + "<h1>" + (string)Session["profile_header"] + "</h1>";
                string sql2 = "SELECT NAME,ROLL FROM [Table] ";

                string connection12 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;

                int i = 0;
                SqlConnection conn2 = new SqlConnection(connection12);
                try
                {
                    conn2.Open();
                    SqlCommand cmd2 = new SqlCommand(sql2, conn2);
                    SqlDataReader reader2 = cmd2.ExecuteReader();
                    while (reader2.Read())
                    {
                        if (reader2.GetValue(1).Equals((string)Session["profile_header"]))
                        {
                        
                       name=(string)reader2.GetValue(0); 
                        }
                        DropDownList1.Items.Add(reader2.GetValue(0).ToString());
                        i++;
                    }
                }
                catch (Exception ex)
                {
                    //Label1.Text = ex.Message;
                }
                conn2.Close();






                Label1.Text = "<h2>" + "HI" + "</h2>" + name;


                string sql23 = "SELECT name,message,theke,date FROM [post] ";
                string connection123 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;

               
                SqlConnection conn23 = new SqlConnection(connection123);
                try
                {
                    conn23.Open();
                    SqlCommand cmd23 = new SqlCommand(sql23, conn23);
                    SqlDataReader reader23 = cmd23.ExecuteReader();
                    while (reader23.Read())
                    {
                        if (reader23.GetValue(0).ToString().Equals(name)) {
                            TextBox1.Text += Environment.NewLine + reader23.GetValue(2) + Environment.NewLine;
                            TextBox1.Text += Environment.NewLine + reader23.GetValue(1) + Environment.NewLine;
                            TextBox1.Text += Environment.NewLine + reader23.GetValue(3) + Environment.NewLine;
                        
                        
                        }
                        
                    }
                }
                catch (Exception ex)
                {
                    //Label1.Text = ex.Message;
                }

                conn23.Close();









































            }
            string sql234 = "SELECT name,message,theke,date FROM [post] ";
            string connection1234 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;


            SqlConnection conn234 = new SqlConnection(connection1234);
            try
            {
                conn234.Open();
                SqlCommand cmd234 = new SqlCommand(sql234, conn234);
                SqlDataReader reader234 = cmd234.ExecuteReader();
                while (reader234.Read())
                {
                    if (reader234.GetValue(0).ToString().Equals(khan))
                    {
                        TextBox1.Text += Environment.NewLine + reader234.GetValue(2) + Environment.NewLine;
                        TextBox1.Text += Environment.NewLine + reader234.GetValue(1) + Environment.NewLine;
                        TextBox1.Text += Environment.NewLine + reader234.GetValue(3) + Environment.NewLine;


                    }

                }
            }
            catch (Exception ex)
            {
               // Label1.Text = ex.Message;
            }

            conn234.Close();
        
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          //  Label l1 = new Label();
            //l1.Text = "nabil";
            //PlaceHolder1.Controls.Add(l1);
            //Console.WriteLine("\n");
            //Label l12 = new Label();
            //l12.Text = "nabil";
            //Response.Write("nj");
            //PlaceHolder1.Controls.Add(l12);
        
        
        
        
        
        
        
    }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [post] values(@name,@message,@theke,@date)";
           
            string connection1 = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(connection1);

            
            
            try
            {
               string jk=(string)Session["profile_header"];
               string k = "kl";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                //cmd.Parameters.AddWithValue("@id", TextBox7.Text);
                cmd.Parameters.AddWithValue("@name", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@message", TextBox2.Text);
                cmd.Parameters.AddWithValue("@theke",name);
                cmd.Parameters.AddWithValue("@date", DateTime.Now);
                //cmd.Parameters.AddWithValue("@PASSWORD", TextBox5.Text);


                // cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                cmd.ExecuteNonQuery();
               
            }
            catch (Exception ex)
            {

                TextBox1.Text = ex.Message;

            }

}








        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]

        public static AjaxControlToolkit.Slide[] GetSlides(string contextKey)
        {



            AjaxControlToolkit.Slide[] ss = new AjaxControlToolkit.Slide[9];
            ss[0] = new AjaxControlToolkit.Slide("Data/a.jpg", "I", "");
            ss[1] = new AjaxControlToolkit.Slide("Data/b.jpg", "II", "");
            ss[2] = new AjaxControlToolkit.Slide("Data/c.jpg", "III", "");
            ss[3] = new AjaxControlToolkit.Slide("Data/d.jpg", "IV", "");
            ss[4] = new AjaxControlToolkit.Slide("Data/e.jpg", "V", "");
            ss[5] = new AjaxControlToolkit.Slide("Data/f.jpg", "VI", "");
            ss[6] = new AjaxControlToolkit.Slide("Data/g.jpg", "VII", "");
            ss[7] = new AjaxControlToolkit.Slide("Data/j.jpg", "VIII", "");
            ss[8] = new AjaxControlToolkit.Slide("Data/i.jpg", "IX", "");
           // ss[0] = new AjaxControlToolkit.Slide("Data/11.jpg", "I", "");
            //ss[1] = new AjaxControlToolkit.Slide("Data/12.jpg", "II", "");
            //ss[2] = new AjaxControlToolkit.Slide("Data/13.jpg", "III", "");
            //ss[3] = new AjaxControlToolkit.Slide("Data/14.jpg", "IV", "");
            //ss[4] = new AjaxControlToolkit.Slide("Data/6.jpg", "V", "");
            //ss[5] = new AjaxControlToolkit.Slide("Data/7.jpg", "VI", "");
            //ss[6] = new AjaxControlToolkit.Slide("Data/8.jpg", "VII", "");
            //ss[7] = new AjaxControlToolkit.Slide("Data/9.jpg", "VIII", "");
            //ss[8] = new AjaxControlToolkit.Slide("Data/10.jpg", "IX", "");
           // ss[8] = new AjaxControlToolkit.Slide("Data/bal.jpg", "IX", "");
            //  ss[4] = new AjaxControlToolkit.Slide("Data/5.jpg", "V", "");
            return (ss);


        }




        protected void SetProfile(object sender, EventArgs e)
        {
            // String uid = Session["UserID"].ToString();
            string path = Server.MapPath("images/");
            //StringBuilder build = new StringBuilder();

            if (FileUpload1.HasFile)
            {
                // string catagory = build.ToString();

                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png" || ext == ".JPG" || ext == ".JPEG")
                {
                    // String imgurl = path + FileUpload1.FileName;
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    //string imgname = "~/images/" + FileUpload1.FileName;
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ToString()))
                    {
                        con.Open();

                       // String id = "1207001";
                        String cmdline = "INSERT INTO [Table_1] values('" + id + "','" + FileUpload1.FileName + "')";
                        SqlCommand command = new SqlCommand(cmdline, con);
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {

                            if (command.ExecuteNonQuery() != 0)
                            {
                                ShowImage(id);
                            }
                            {
                                ShowAlertMessage("User Exist !");
                                con.Close();
                            }
                        }

                    }

                }

                else
                {
                    imgformatLabel.Visible = true;
                    imgformatLabel.Text = "Invalid_Image_Format";

                }

            }
            else
            {
                imgformatLabel.Visible = true;
                imgformatLabel.Text = "Please_Select_Image";

            }
        }

        protected void UpdateProfile(object sender, EventArgs e)
        {
           // String uid = "1207013";
            string path = Server.MapPath("image_1/");
            //StringBuilder build = new StringBuilder();

            if (FileUpload1.HasFile)
            {
                // string catagory = build.ToString();

                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png" || ext == ".JPG" || ext == ".JPEG")
                {
                    // String imgurl = path + FileUpload1.FileName;
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ToString()))
                    {
                        con.Open();

                        // SqlCommand command = new SqlCommand("SELECT [Id] from [Table] where Id = " + "'" + uid + "'", con); //select korlam databse theka ai userid te keu ase kina
                        //comm.Connection = con;
                        //SqlDataReader reader = command.ExecuteReader();

                        String commandline = "UPDATE [Table_1] SET imageinfo='" + FileUpload1.FileName + "' where Id='" + id + "'";
                        SqlCommand command = new SqlCommand(commandline, con);
                        //reader = command.ExecuteReader();

                        if (command.ExecuteNonQuery() != 0)
                        {
                            ShowImage(id);
                        }

                    }
                }
                else
                {
                    imgformatLabel.Visible = true;
                    imgformatLabel.Text = "Invalid_Image_Format";

                }
            }
            else
            {
                imgformatLabel.Visible = true;
                imgformatLabel.Text = "Please_Select_Image";

            }
        }




        protected void ShowImage(String uid)
        {
            // String uid = "1207013";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ToString()))
            {
                con.Open();


                SqlCommand command = new SqlCommand("SELECT [imageinfo] from [Table_1]  where Id = " + "'" + uid + "'", con);
                SqlDataReader reader = command.ExecuteReader();





                if (reader.Read())
                {
                    imname = reader["imageinfo"].ToString();
                    Image2.ImageUrl = "image_1/" + imname;
                    Image2.Visible = true;
                    con.Close();
                    reader.Close();
                }
                else
                {


                }

            }
        }
        public void ShowAlertMessage(String message)
        {
            string alertScript = String.Format("<Script Language='javascript'> alert('{0}');</script>", message);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Key", alertScript, false);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Session["state"] = "log out";
            Response.Redirect("Default.aspx");
        }



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }


}