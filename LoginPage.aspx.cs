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
    public partial class LoginPage : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select COUNT(Reg_id) from Login_tab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
            string cid = objcls.Fun_exescalar(sel);
            int cid1 = Convert.ToInt32(cid);
            Label11.Visible = true;
            if (cid1 == 1)
            {
               
                string str1 = "select Reg_id from Login_tab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string regid = objcls.Fun_exescalar(str1);
                Session["User_id"] = regid;
                string str2 = "select Log_type from Login_tab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string logtype = objcls.Fun_exescalar(str2);
                if (logtype == "Admin")
                {

                    Label11.Text = "ADMIN";
                    Response.Redirect("Adminhomepage.aspx");
                }
                else if (logtype == "User")
                {
                    Label11.Text = "USER";
                    Response.Redirect("Userhomepage.aspx");
                }
            }
            else
            {
                Label11.Text = "Invalid Username and Password";
            }

        }
    }
}