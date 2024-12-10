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
    public partial class viewcart : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        public void BindGrid()
        {

            int userId = Convert.ToInt32(Session["User_id"]);
            string str = "select * from Cart_tab where Usr_id = " + userId + "";

            DataSet ds = objcls.Fun_exedataset(str);


            if (ds.Tables[0].Rows.Count > 0) // Check if there are any records
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Button2.Visible = true;
            }
            else
            {
                Label1.Text = "Your cart is empty.";
                GridView1.Visible = false; // Hide the GridView if empty
                Button2.Visible = false;
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int cartId = Convert.ToInt32(e.CommandArgument);
            string delQuery = "delete from Cart_tab where Cart_id = " + cartId + "";

            int result = objcls.Fun_exenonquery(delQuery);

            if (result > 0)
            {
                Label1.Text = "Product removed from cart successfully.";
            }
            else
            {
                Label1.Text = "Failed to remove product from cart.";
            }

            BindGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int rowindex = e.RowIndex;

            // Use DataKeys to retrieve Cart_id and Product_id
            int cartId = Convert.ToInt32(GridView1.DataKeys[rowindex].Values["Cart_id"]);
            int productId = Convert.ToInt32(GridView1.DataKeys[rowindex].Values["Product_id"]);


            TextBox txtQuantity = (TextBox)GridView1.Rows[rowindex].Cells[3].Controls[0];
            int quantity = Convert.ToInt32(txtQuantity.Text); // Convert directly
            int userId = Convert.ToInt32(Session["User_id"]);
            string productQuery = "select Product_price from Product_tab where Product_id = " + productId + "";
            decimal productPrice = Convert.ToDecimal(objcls.Fun_exescalar(productQuery));
            decimal totalPrice = productPrice * quantity;
            string updateQuery = "update Cart_tab SET Quantity = " + quantity + ", Totalprice = " + totalPrice + " where Cart_id = " + cartId + " and Usr_id = " + userId + "";
            int result = objcls.Fun_exenonquery(updateQuery);

            if (result > 0)
            {
                Label1.Text = "Cart updated successfully.";
            }
            else
            {
                Label1.Text = "Failed to update cart.";
            }
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int UserId = Convert.ToInt32(Session["User_id"]);
            string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            string selectCart = "select MAX(Cart_id) from Cart_tab where Usr_id =" + UserId + "";
            string maxCartId = objcls.Fun_exescalar(selectCart);
            int id = Convert.ToInt32(maxCartId);
            // Iterate over each cart item
            for (int i = 1; i <= id; i++)
            {
                string sel = "select * from Cart_tab where Cart_id = " + i + " and Usr_id =" + UserId + "";
                SqlDataReader dr = objcls.Fun_exereader(sel);

                int productId = 0;
                int quantity = 0;
                decimal totalPrice = 0;

                // Fetch cart item details
                while (dr.Read())
                {
                    productId = Convert.ToInt32(dr["Product_id"]);
                    quantity = Convert.ToInt32(dr["Quantity"]);
                    totalPrice = Convert.ToDecimal(dr["Totalprice"]);

                }
                dr.Close();

                if (productId > 0)
                {
                    // Insert into Order_table
                    string insertOrderQuery = "insert into Order_tab values (" + productId + ", " + UserId + ", " + quantity + ", " + totalPrice + ", '" + currentDate + "', 'Pending')";


                    objcls.Fun_exenonquery(insertOrderQuery);

                    // Delete the item from Cart_table
                    string deleteCartQuery = "delete from Cart_tab WHERE Cart_id = " + i + " and Usr_id = " + UserId + "";
                    objcls.Fun_exenonquery(deleteCartQuery);
                }
            }
            string grandTotalprice = "select SUM(Totalprice) from Order_tab where Usr_id = " + UserId + " and Order_status = 'Pending'";
            decimal grandTotal = Convert.ToDecimal(objcls.Fun_exescalar(grandTotalprice));

            // Insert into Bill_table
            string insertBill = "insert into Bill_tab values (" + UserId + ", '" + currentDate + "', " + grandTotal + ")";
            objcls.Fun_exenonquery(insertBill);
            Response.Redirect("viewbillpage.aspx");
        }
    }

}