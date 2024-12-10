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
    public partial class viewproduct : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        public string FormatPrice(object price)
        {
            if (price != null)
            {
                decimal productPrice = Convert.ToDecimal(price);
                // Format price as ₹ 1,299.00
                return string.Format("₹ {0:N2}", productPrice);
            }
            return "Price Not Available";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }
        private void BindProducts()
        {
            if (Session["category_selected"] != null)
            {
                int categoryId = Convert.ToInt32(Session["category_selected"]);

                // Directly using categoryId in the query string
                string query = "select * from Product_tab where Category_id ="+ categoryId+"";

                DataSet ds = objcls.Fun_exedataset(query);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int productId= Convert.ToInt32(e.CommandArgument); 
            Session["product_selected"] = productId; 
            Response.Redirect("Singleproductview.aspx"); 
        }
    }
}