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
    public partial class ViewReviews : System.Web.UI.Page
    {
        String topic, username;
        protected void Page_Load(object sender, EventArgs e)
        {
            NoReviewslabel.Visible = false;
            try
            {
                imgPoster.ImageUrl = Request.QueryString["url"].ToString();
            }
            catch(Exception E)
            {
                Response.Write(E);
            }
            
            username = Request.QueryString["username"].ToString();
            topic = Request.QueryString["search"].ToString();
            String connectionstring = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            SqlCommand cm = conn.CreateCommand();
            cm.CommandType = CommandType.Text;



            cm.CommandText = "select * from userreview where topic='"+ topic+"'";
            cm.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cm);
            ad.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            if(dt.Rows.Count==0)
            {
                NoReviewslabel.Visible = true;
            }
          
            //  Response.Write("Review Added SuccessFully");


            conn.Close();
        }
    }
}