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
    public partial class Category_add : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string checkCategory = "select * from Category_tab WHERE Category_name = '" + TextBox1.Text.ToString() + "'";
            DataTable dt = objcls.Fun_exedatatable(checkCategory);
            if (dt.Rows.Count == 1)
            {
                Label4.Visible = true;
                Label4.Text = "This category already exists.";
            }

            else
            {
                string path = "~/Category image/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(path));
                string strinsert = "insert into Category_tab values('" + TextBox1.Text + "','" + path + "','" + convertquotes(TextBox2.Text) + "','Available')";
                int i = objcls.Fun_exenonquery(strinsert);
                if (i == 1)
                {
                    Label4.Visible = true;
                    Label4.Text = "Inserted";
                    
                }
            }

        }
        
        public string convertquotes(string str)
        {
            return str.Replace("'", "''");
        }
    }
}