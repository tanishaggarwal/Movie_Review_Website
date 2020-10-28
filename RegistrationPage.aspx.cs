using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Movie_Review_Website
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextPassword.Text.Equals(TextConfirmPassword.Text))
            {
                Label1.Text = "";
                String connectionstring = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                conn.Open();
                SqlCommand cm = conn.CreateCommand();
                cm.CommandType = CommandType.Text;
                cm.CommandText = "select count(*) from userdata where username=@u" ;
                cm.Parameters.AddWithValue("@u", TextUserName.Text);
                try
                {
                    cm.ExecuteNonQuery();
                    SqlCommand cm1 = conn.CreateCommand();
                    cm1.CommandType = CommandType.Text;
                    cm1.CommandText = "insert into userdata values('" + TextUserName.Text + "', '" + TextFirstName.Text + "', '" + TextLastName.Text + "', '" + TextAddress.Text + "', '" + TextPassword.Text + "')";
                    cm1.ExecuteNonQuery();
                    Response.Redirect("LoginPage.aspx");
                }
                catch( SqlException E)
                {
                    if (E.Number == 2627)
                    {
                        Label1.Text = "This username is not available";
                    }
                }
                conn.Close();
            }
            else
            {
                Label1.Text = "Please enter correct password in confirm password";
            }
        }
    }
}