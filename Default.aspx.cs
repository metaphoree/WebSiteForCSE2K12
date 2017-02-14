using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace Project_WebDevelopement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //public static string[] name1 ={"bal","ban","khan","rahat","rafg","kal"};
       public static  string[] name=new string[5];
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["info"];
            if (!IsPostBack)
            {

                if ((string)Session["state"] == "logged in") {
                
                }
                if ((string)Session["state"] == null)
                {
                    Session["state"] = "log out";
                }
                if ((string)Session["state"] != "logged in")
                {
                    Session["state"] = "log out";
                }
                
                if (cookie == null)
                {
                    Label1.Text = "you are not logged in";
                }
                else
                {
                    Label1.Text = "you are  logged in";
                    Response.Redirect("LOG_IN_FIRST.aspx");
                }
                string sql2 = "SELECT ROLL FROM [Table] ";
          
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
                        name[i]=reader2.GetValue(0).ToString();
                        i++;
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
//TextBox1.Text = name[3];

                //Response.ClearHeaders();
                //Response.ClearContent();
                //Response.Redirect("~/fees.pdf");
            
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (CheckBox1.Checked)
            {

                HttpCookie cookie = new HttpCookie("info");
                cookie["Name"] = TextBox1.Text.ToString();
                cookie["password"] = TextBox2.Text;
                Response.Cookies.Add(cookie);
                cookie.Expires = DateTime.Now.AddMinutes(5);
            }

            
            
            
            Session["profile_header"] = TextBox1.Text;
            string sql = "SELECT ROLL,PASSWORD,veryfication FROM [Table] ";
           // string connection = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"D:\\desktop new\\MY\\PROJECT-13\\PROJECT\\App_Data\\Database1.mdf\";Integrated Security=True";
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
                        Label1.Text = " ";
                        if (reader.GetValue(1).Equals(TextBox2.Text))
                        {
                            if (reader.GetValue(2).Equals("v"))
                            {
                                Session["rOll"] = TextBox1.Text;
                                Session["state"] = "logged in";
                                Label2.Text = "LOGGED IN";
                                Label1.Text = " ";
                                
                                Response.Redirect("LOG_IN_FIRST.aspx");
 }
                            else {
                                Label1.Text = " NON-VERYFIED";
            }


                        }
                        else
                        {
                            Label2.Text = "PASSWORD DOESNT MATCH" + "<br />";
                        }

                    }

                    else
                    {
                        Label1.Text = "USER NAME DOESNT MATCH";

                    }




                }
            }

            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {

                HttpCookie cookie = new HttpCookie("info");
                cookie["Name"] = TextBox1.Text.ToString();
                cookie["password"] = TextBox2.Text;
                Response.Cookies.Add(cookie);
                cookie.Expires = DateTime.Now.AddMinutes(5);
            }

            if (TextBox1.Text.Equals("nabil") && TextBox2.Text.Equals("nabil"))
            {
                Response.Redirect("LOG_IN_FIRST.aspx");

            }
        }


        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string[] GetCompletionList(string prefixText, int count, string contextKey)
        {
            

 var namelist=from tmp in name where tmp.StartsWith(prefixText) select tmp;
            return namelist.ToArray();

        }


        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]

        public static AjaxControlToolkit.Slide[] GetSlides(string contextKey)
        {



            AjaxControlToolkit.Slide[] ss = new AjaxControlToolkit.Slide[21];
            ss[0]=new AjaxControlToolkit.Slide("Data/a.jpg","I","");
            ss[1] = new AjaxControlToolkit.Slide("Data/b.jpg", "II", "");
            ss[2] = new AjaxControlToolkit.Slide("Data/c.jpg", "III", "");
            ss[3] = new AjaxControlToolkit.Slide("Data/d.jpg", "IV", "");
            ss[4] = new AjaxControlToolkit.Slide("Data/e.jpg", "V", "");
            ss[5] = new AjaxControlToolkit.Slide("Data/f.jpg", "VI", "");
            ss[6] = new AjaxControlToolkit.Slide("Data/g.jpg", "VII", "");
            ss[7] = new AjaxControlToolkit.Slide("Data/j.jpg", "VIII", "");
            ss[8] = new AjaxControlToolkit.Slide("Data/i.jpg", "IX", "");
            ss[9] = new AjaxControlToolkit.Slide("Data/h.jpg", "IX", "");
              ss[10] = new AjaxControlToolkit.Slide("Data/k.jpg", "X", "");
              ss[11] = new AjaxControlToolkit.Slide("Data/l.jpg", "XI", "");
              ss[12] = new AjaxControlToolkit.Slide("Data/m.jpg", "XI", "");
           
              ss[13] = new AjaxControlToolkit.Slide("Data/n.jpg", "XII", "");
              ss[14] = new AjaxControlToolkit.Slide("Data/o.jpg", "XII", "");
              ss[15] = new AjaxControlToolkit.Slide("Data/p.jpg", "XIV", "");
              ss[16] = new AjaxControlToolkit.Slide("Data/q.jpg", "XV", "");
              ss[17] = new AjaxControlToolkit.Slide("Data/r.jpg", "XVI", "");
              ss[18] = new AjaxControlToolkit.Slide("Data/s.jpg", "XVII", "");
              ss[19] = new AjaxControlToolkit.Slide("Data/t.jpg", "XVIII", "");
              ss[20] = new AjaxControlToolkit.Slide("Data/u.jpg", "XIX", "");
            return(ss);
        
        
        }












    }
}