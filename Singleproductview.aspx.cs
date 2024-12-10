using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Flipify
{
    public partial class Singleproductview : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();

        // Format the price to include currency symbol and decimal points
        public string FormatPrice(decimal price)
        {
            return string.Format("₹ {0:N2}", price);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["product_selected"] != null)
                {
                    int productId = Convert.ToInt32(Session["product_selected"]);
                    BindProductDetails(productId);
                    BindStock(productId); // Bind available stock based on selected product
                }
            }
        }

        // Bind product details like name, description, price, and image to the UI

        private void BindProductDetails(int productId)
        {
            string query = "select * from Product_tab where Product_id = " + productId+"";
            SqlDataReader reader = objcls.Fun_exereader(query);
            while (reader.Read())
            {
                Label1.Text = reader["Product_name"].ToString();
                Label2.Text = reader["Product_description"].ToString();

                // Format the product price
                decimal productPrice = Convert.ToDecimal(reader["Product_price"]);
                Label3.Text = FormatPrice(productPrice);

                // Display the product image
                Image1.ImageUrl = reader["Product_image"].ToString();
            }
            reader.Close();
        }

        // Bind stock information to the DropDownList for product quantity selection
        private void BindStock(int productId)
        {
            string query = "select Product_stock from Product_tab where Product_id = " + productId+"";
            SqlDataReader reader = objcls.Fun_exereader(query);
            int stock = 0;

            if (reader.Read())
            {
                stock = Convert.ToInt32(reader["Product_stock"]);
            }
            reader.Close();

            // Clear any previously added items in the DropDownList
            DropDownList1.Items.Clear();

            // If stock is available, populate the DropDownList with quantity options
            if (stock > 0)
            {
                for (int i = 1; i <= stock; i++)
                {
                    DropDownList1.Items.Add(new ListItem(i.ToString()));
                }
            }
            else
            {
                // If out of stock, disable the DropDownList and Add to Cart button
                DropDownList1.Items.Add(new ListItem("Out of Stock", "0"));
                DropDownList1.Enabled = false;
                Button1.Enabled = false;
            }
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select MAX(Cart_id) from Cart_tab";
            string maxCartId = objcls.Fun_exescalar(sel);
            int cartId = 0;

            if (maxCartId == "")
            {
                cartId = 1;
            }
            else
            {
                int newCartId = Convert.ToInt32(maxCartId);
                cartId = newCartId + 1;
            }
            int productId = Convert.ToInt32(Session["product_selected"]);
            int quantity = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            string queryPrice = "select Product_price from Product_tab where Product_id = " + productId+"";
            SqlDataReader priceReader = objcls.Fun_exereader(queryPrice);
            decimal price = 0;

            if (priceReader.Read())
            {
                price = Convert.ToDecimal(priceReader["Product_price"]);
            }
            priceReader.Close();
            decimal totalPrice = quantity * price;
            int userId = Convert.ToInt32(Session["User_id"]);
            string query = "insert into Cart_tab values (" + cartId + ", " + productId + ", " + userId + ", " + quantity + ", " + totalPrice + ")";
            int result = objcls.Fun_exenonquery(query);
            if (result == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Product successfully added to the cart.";
            }
        }
    }
}
