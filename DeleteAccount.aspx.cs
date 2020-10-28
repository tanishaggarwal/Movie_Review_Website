using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Movie_Review_Website
{
    public partial class DeleteAccount : System.Web.UI.Page
    {
        String username;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
                username = Request.QueryString["username"].ToString();
              //  lError.Text = username;
            
            

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
           
            String password = tbPassword.Text.ToString();
            String connectionstring = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            SqlCommand cm = conn.CreateCommand();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "select password from userdata where username = @u";
            cm.Parameters.AddWithValue("@u", username);
            lError.Visible = true;

            try
            {
                SqlDataReader reader = cm.ExecuteReader();
                reader.Read();
                String retrievedPassword = reader["password"].ToString();
                if (retrievedPassword.Equals(password))
                {
                    reader.Close();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "delete from userdata where username = @u";
                    cmd.Parameters.AddWithValue("@u", username);
                    cmd.ExecuteNonQuery();
                    lError.Text = "Account Deleted Successfully";
                    Response.Write("<script>alert('Account Deleted Successfully')</script>");
                    Response.Redirect("LoginPage.aspx");
                   // ButtonLogin.Visible = false;
                }
                else
                {
                    lError.Text = "*Username or Password is incorrect";
                }
            }
            catch (Exception E)
            {
                lError.Text = "*Username or Password is incorrect";
            }
        }
    }
}