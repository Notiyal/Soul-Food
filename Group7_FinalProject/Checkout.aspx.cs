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
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // Remove the "Cart" session variable and redirect to the menu page
            Session.Remove("Cart");
            Response.Redirect("~/Menu.aspx");

        }
    }
}