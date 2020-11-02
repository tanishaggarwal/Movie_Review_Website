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
    public partial class ReviewsPage : System.Web.UI.Page
    {
        String topic;
        String username;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Request.QueryString["username"].ToString();
            topic = Request.QueryString["search"].ToString();
            Message.Text = "Hi  \" " + username +" \"";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connectionstring = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            SqlCommand cm = conn.CreateCommand();
            cm.CommandType = CommandType.Text;
            
            
               
                cm.CommandText = "insert into userreview values('" + topic + "', '" + username + "', '" + TextBox1.Text + "')";
                cm.ExecuteNonQuery();
                Response.Write("Review Added SuccessFully");
           
           
            conn.Close();
        }
    }
}