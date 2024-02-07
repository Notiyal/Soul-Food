using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Group7_FinalProject.Models
{
    public class CartItem
    {
        public CartItem() { }

        // Constructor that initializes CartItem with a book and quantity.
        public CartItem(Item item, int quantity)
        {
            this.Item = item;
            this.Quantity = quantity;
        }

        public Item Item { get; set; }
        public int Quantity { get; set; }

        //add quantity to the cart item.
        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        //display the cart item's information as a string
        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2} each)",
                Item.ItemName,
                Quantity.ToString(),
                Item.Price.ToString("c")
            );
            return displayString;
        }
    }
}