//Shweta Notiyal- 8877045
//Susmi Puthethu Vijayan- 8866685
//Harsha Vardhini Thirumoorthy- 8847377
//Riya Godhani- 8876616
using Group7_FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group7_FinalProject
{
    public partial class Menu : System.Web.UI.Page
    {
        private Item selectedItem;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlItem.DataBind();
            }
            selectedItem = this.GetSelectedItem();
            //display data
            lblItemName.Text = selectedItem.ItemName;
            lblDescription.Text = selectedItem.Description;
            lblPrice.Text = selectedItem.Price.ToString("c");
            imgItem.ImageUrl = selectedItem.ImageFile;
        }

        protected Item GetSelectedItem()
        {
            // Create a DataView to retrieve selected records from the data source.
            DataView itemsTable = (DataView)
                      SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            //Add a filter to retrieve the selected row based on the dropdown selection.
            itemsTable.RowFilter =
                "ItemID = '" + ddlItem.SelectedValue + "'";
            //get the first row 
            DataRowView row = itemsTable[0];

            // Create a Book object from the retrieved data.
            Item item = new Item();
            //Get item ID from row
            item.ItemID = row["ItemID"].ToString();
            item.ItemName = row["ItemName"].ToString();
            item.Description = row["Description"].ToString();
            item.Price = (decimal)row["Price"];
            item.ImageFile = "~/Images/" + row["ImageFile"].ToString();
            return item;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                CartItemList cart = CartItemList.GetCartOrCreateIt();
                // Find the item in the cart (if it exists).
                CartItem cartItem = cart[selectedItem.ItemID];

                // If the item isn't in the cart, add it; otherwise, increase its quantity.
                if (cartItem == null)
                {
                    cart.AddItem(selectedItem, Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                // Redirect to the Cart page.
                Response.Redirect("~/Cart.aspx");
            }
        }
    }
}