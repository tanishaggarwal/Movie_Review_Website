using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Review_Website
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            String username = tbUsername.Text.ToString();
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
                    lError.Text = "Succesfully logged in";
                    ButtonLogin.Visible = false;
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