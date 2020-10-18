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
    public partial class UpdateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String connectionString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from userdata where username = @u";
                cmd.Parameters.AddWithValue("@u", Request.QueryString["username"].ToString());
                try
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    UTextFirstName.Text = reader["firstname"].ToString();
                    UTextLastName.Text = reader["lastname"].ToString();
                    UTextAddress.Text = reader["address"].ToString();
                    UTextPassword.Text = reader["password"].ToString();
                    UTextPassword.Attributes["type"] = "password";
                }
                catch (Exception E) { }
                conn.Close();
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "update userdata set firstname ='"+UTextFirstName.Text+"' , lastname='"+UTextLastName.Text+"' , address='"+UTextAddress.Text+"' , password='"+UTextPassword.Text+"' where username = '"+Request.QueryString["username"].ToString()+"';";
            cmd.CommandText = "Update userdata set firstname = @f , lastname = @l , address = @a , password = @p where username = @u";
    
            cmd.Parameters.AddWithValue("@f",UTextFirstName.Text);
            cmd.Parameters.AddWithValue("@l",UTextLastName.Text);
            cmd.Parameters.AddWithValue("@a",UTextAddress.Text);
            cmd.Parameters.AddWithValue("@p",UTextPassword.Text);
            cmd.Parameters.AddWithValue("@u", Request.QueryString["username"].ToString());
            try
            {
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>prompt('Account Updated successfully')</script>");
                Response.Redirect("LoginPage.aspx");
            }

            catch (Exception E) {
                conn.Close();
            }

            
        }
    }
}