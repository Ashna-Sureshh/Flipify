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
    public partial class Product : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                BindCategoryDropDown();
            }
        }
        private void BindCategoryDropDown()
        {
            string query = "select * from Category_tab";
            DataTable categoryTable =objcls.Fun_exedatatable(query); 

            // Bind the DataTable to the dropdown list
            DropDownList1.DataSource = categoryTable;
            DropDownList1.DataTextField = "Category_name"; 
            DropDownList1.DataValueField = "Category_id";  
            DropDownList1.DataBind();

            
            DropDownList1.Items.Insert(0, new ListItem("Please select a category", "0"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label7.Visible = true;
            if (DropDownList1.SelectedValue != "0")
            {
                int categoryId = Convert.ToInt32(DropDownList1.SelectedValue);
                string path = "~/product image/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(path));
                string query = "insert into Product_tab values (" + categoryId + ", '" + TextBox1.Text + "', '" + path + "', '" + convertquotes(TextBox2.Text) + "', "+TextBox3.Text+", 'Available', " + TextBox4.Text + ")";

                int result = objcls.Fun_exenonquery(query); 
                if (result > 0)
                {
                   Label7.Text= "Product added successfully.";
                }
                else
                {
                    Label7.Text = "Error occurred while adding the product.";
                }
            }
            else
            {
                Label7.Text = "Please select a valid category.";
            }

        }
        public string convertquotes(string str)
        {
            return str.Replace("'", "''");
        }
    }
}