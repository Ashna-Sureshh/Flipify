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
    public partial class Category : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGrid();
            }

        }
        public void BindGrid()
        {
            string str = "select * from Category_tab";
            DataSet ds = objcls.Fun_exedataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }


        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtname = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtdescription = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            FileUpload fileUpload = (FileUpload)GridView1.Rows[i].FindControl("FileUpload2");
            string upd = "update Category_tab set Category_name='"+ txtname.Text + "',Category_description='" + txtdescription.Text + "'";
            if (fileUpload != null && fileUpload.HasFile)
            {
                string path1 = "~/Category image/" + fileUpload.FileName;
                fileUpload.SaveAs(MapPath(path1));

                upd += ", Category_image = '" + path1 + "'";
            }

            upd += " where Category_id = " + getid+"";
            int str = objcls.Fun_exenonquery(upd);
            GridView1.EditIndex = -1;
            BindGrid();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }
    }
}