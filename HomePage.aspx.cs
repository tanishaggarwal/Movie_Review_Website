using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Review_Website
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Account(object sender, EventArgs e)
        {
            Response.Redirect("UpdateAccount.aspx?username=" + Request.QueryString["username"].ToString());
        }

        protected void Search(object sender, EventArgs e)
        {

        }

        protected void Delete(object sender, EventArgs e)
        {
            Response.Redirect("DeleteAccount.aspx?username=" + Request.QueryString["username"].ToString());
        }
    }
}