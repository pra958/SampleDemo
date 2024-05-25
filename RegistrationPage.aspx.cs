using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

namespace WebApplication4
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            captcha1.ValidateCaptcha(TextBox7.Text.Trim());
            if (captcha1.UserValidated)
            {
                Label2.ForeColor = System.Drawing.Color.Green;
                Label2.Text = "Your Captcha Text Has Been Verified Successfully. You Have Entered Valid Captcha";
               // Panel1.Visible = false;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Table2 values(@a, @b, @c,@d)", con);
                cmd.Parameters.AddWithValue("a", TextBox1.Text);
                cmd.Parameters.AddWithValue("b", TextBox2.Text);
                cmd.Parameters.AddWithValue("c", TextBox4.Text);
                cmd.Parameters.AddWithValue("d", TextBox6.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "Your Captcha Text Verification is UnSuccessfully. You Have Entered Invalid Captcha";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

    }

}
    
