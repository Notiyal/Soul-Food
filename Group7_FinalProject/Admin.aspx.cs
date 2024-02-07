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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Get the parameters for insertion
                var values = SqlDataSource1.InsertParameters;

                // Set parameter values from TextBoxes
                values["ItemID"].DefaultValue = txtID.Text;
                values["ItemName"].DefaultValue = txtItemName.Text;
                values["Description"].DefaultValue = txtDescription.Text;
                values["Price"].DefaultValue = txtPrice.Text;
                values["ImageFile"].DefaultValue = txtImageFile.Text;
                values["CategoryID"].DefaultValue = txtCategory.Text;

                // Execute the insertion query
                SqlDataSource1.Insert();

                // Clear TextBox after insertion
                txtID.Text = string.Empty;
                txtItemName.Text = string.Empty;
                txtDescription.Text = string.Empty;
                txtPrice.Text = string.Empty;
                txtImageFile.Text = string.Empty;
                txtCategory.Text = string.Empty;

            }
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            // Handle exceptions and concurrency issues during GridView row deletion
            if (e.Exception != null)
            {
                lblErrorMsg.Text = DatabaseErrorMsg(e.Exception.Message);
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblErrorMsg.Text = ConcurrencyErrorMsg();
            }
        }

        // Helper method to format a database error message
        private string DatabaseErrorMsg(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }

        // Helper method to provide a concurrency error message
        private string ConcurrencyErrorMsg()
        {
            return "Please try again. Another user might have updated that Genre.";
        }
    }
}