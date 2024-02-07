//Shweta Notiyal- 8877045
//Susmi Puthethu Vijayan- 8866685
//Harsha Vardhini Thirumoorthy- 8847377
//Riya Godhani- 8876616
using Group7_FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group7_FinalProject
{
    public partial class Cart : System.Web.UI.Page
    {
        private CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Retrieve the cart object from session state on every postback.
            cart = CartItemList.GetCartOrCreateIt();

            // on initial page load, add cart items to list control (if it is not postBack)
            if (!IsPostBack) this.DisplayCart();

        }

        private void DisplayCart()
        {
            //remove all current items 
            lstCart.Items.Clear();

            // add each item's display value to the list.
            for (int i = 0; i < cart.Count; i++)
            {
                lstCart.Items.Add(cart[i].Display());
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            // if cart contains items 
            if (cart.Count > 0)
            {
                if (lstCart.SelectedIndex > -1)
                {
                    // remove selected item from cart                     
                    cart.RemoveAt(lstCart.SelectedIndex);
                    // and re-display cart
                    this.DisplayCart();
                }
                else
                {
                    //if no item is selected
                    lblMessage.Text = "Please select the item to remove.";
                }
            }

        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                cart.Clear();
                lstCart.Items.Clear();
            }

        }
    }
}