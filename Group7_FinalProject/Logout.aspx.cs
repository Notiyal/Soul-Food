//Shweta Notiyal- 8877045
//Susmi Puthethu Vijayan- 8866685
//Harsha Vardhini Thirumoorthy- 8847377
//Riya Godhani- 8876616
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group7_FinalProject
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear the session and redirect to the home page
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
}