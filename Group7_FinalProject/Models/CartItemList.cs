using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Group7_FinalProject.Models
{
    public class CartItemList
    {
        private List<CartItem> cartItems;

        // Constructor to initialize a new CartItemList.
        public CartItemList()
        {
            cartItems = new List<CartItem>();
        }

        // Property to get the count of cart items.
        public int Count
        {
            get { return cartItems.Count; }
        }

        // Indexer to access cart items by index.
        public CartItem this[int index]
        {
            get { return cartItems[index]; }
            set { cartItems[index] = value; }
        }

        // Indexer to access cart items by book ID.
        public CartItem this[string id]
        {
            get
            {
                foreach (CartItem item in cartItems)
                    if (item.Item.ItemID == id) return item;

                return null;
            }
        }

        //get the cart or create a new one in the session
        public static CartItemList GetCartOrCreateIt()
        {
            CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new CartItemList();
            return (CartItemList)HttpContext.Current.Session["Cart"];
        }

        //add a new item to the cart.
        public void AddItem(Item product, int quantity)
        {
            CartItem c = new CartItem(product, quantity);
            cartItems.Add(c);
        }

        //remove an item from the cart by index.
        public void RemoveAt(int index)
        {
            cartItems.RemoveAt(index);
        }

        //clear all items from the cart.
        public void Clear()
        {
            cartItems.Clear();
        }
    }
}