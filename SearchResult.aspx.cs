using System;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.IO;

namespace Movie_Review_Website
{
    public partial class SearchResult : System.Web.UI.Page
    {
        String APIKey = "a0a685c";
        protected void Page_Load(object sender, EventArgs e)
        {
            String url = "http://www.omdbapi.com/?apikey=" + APIKey + "&t=" + Request.QueryString["search"].ToString() + "&plot=full";
            WebRequest request = WebRequest.Create(url);
            Response.Write(url+"<br>");
            request.Method = "GET";
            request.ContentType = "application/json; charset=utf-8";
            WebResponse response = request.GetResponse();
            String data;
            //var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            using (Stream stream = response.GetResponseStream())
            {
                StreamReader reader = new StreamReader(stream, System.Text.Encoding.UTF8);
                data = reader.ReadToEnd();
                //var jsonObject = serializer.DeserializeObject(reader.ReadToEnd());
            }
        }
    }
}