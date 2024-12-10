using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flipify
{
    public partial class Viewfeedback : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                BindGridView();
            }
        }
        private void BindGridView()
{
    // SQL query to fetch feedback details along with the user's name, filtering by active status
    string query = "SELECT Feedback_tab.Feedback_id, Feedback_tab.Feedback_message, " +
                   "CONCAT(User_reg_tab.First_Name, ' ', User_reg_tab.Last_Name) AS FullName " +
                   "FROM Feedback_tab " +
                   "INNER JOIN User_reg_tab ON Feedback_tab.Usr_id = User_reg_tab.Usr_id " +
                   "WHERE Feedback_tab.Feedback_status = 'active' ";

    // Call the Fun_exedatatable method from ConnectionClass to execute the query
    DataTable dt = objcls.Fun_exedatatable(query);

    // Bind the DataTable to the GridView
    GridView1.DataSource = dt;
    GridView1.DataBind();
}

    }
}