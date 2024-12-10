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
    public partial class Userhomepage : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                datalistbind();
            }
        }
        public void datalistbind()
        {
            string sel = "select * from Category_tab";
            DataSet ds = objcls.Fun_exedataset(sel);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int categoryId = Convert.ToInt32(e.CommandArgument);
            Session["category_selected"] = categoryId;
            Response.Redirect("viewproduct.aspx");

        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx");
        }
    }
}