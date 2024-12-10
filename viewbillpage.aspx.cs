using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Flipify
{
    public partial class viewbillpage : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind the grid only on the first page load
                BindGrid();
                DisplayOrderDetails();
            }
        }

        private void BindGrid()
        {
            int userId = Convert.ToInt32(Session["User_id"]);

            // Query without using table aliases
            string sqlQuery = "SELECT Order_tab.Product_id, Order_tab.Quantity, Order_tab.Totalprice, " +
                              "Product_tab.Product_name, Product_tab.Product_price " +
                              "FROM Order_tab " +
                              "INNER JOIN Product_tab ON Order_tab.Product_id = Product_tab.Product_id " +
                              "WHERE Order_tab.Usr_id = " + userId+"";

            DataTable dt = objcls.Fun_exedatatable(sqlQuery);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

                int totalQuantity = 0;
                decimal grandTotal = 0;

                foreach (DataRow row in dt.Rows)
                {
                    totalQuantity += Convert.ToInt32(row["Quantity"]);
                    grandTotal += Convert.ToDecimal(row["Totalprice"]);
                }

                Label2.Text = totalQuantity.ToString();
                Label4.Text = grandTotal.ToString();
            }
            else
            {
                Label2.Text = "0";
                Label4.Text = "0.00";
                GridView1.Visible = false;
            }
        }


        private void DisplayOrderDetails()
        {
            int userId = Convert.ToInt32(Session["User_id"]);

            // Query to get user details for billing address
            string userQuery = "SELECT Address FROM User_reg_tab WHERE Usr_id = " + userId+"";
            DataTable userDt = objcls.Fun_exedatatable(userQuery);
            if (userDt.Rows.Count > 0)
            {
                Label10.Text = userDt.Rows[0]["Address"].ToString();
            }

            // Query to get order details
            string orderQuery = "SELECT Order_id, Order_date FROM Order_tab WHERE Usr_id = " + userId + " ORDER BY Order_date DESC";
            DataTable orderDt = objcls.Fun_exedatatable(orderQuery);

            if (orderDt.Rows.Count > 0)
            {
                Label6.Text = orderDt.Rows[0]["Order_id"].ToString();
                Label8.Text = Convert.ToDateTime(orderDt.Rows[0]["Order_date"]).ToString("yyyy-MM-dd");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}
