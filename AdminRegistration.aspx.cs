﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Flipify
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select MAX(Reg_id) from Login_tab";
            string maxregid = objcls.Fun_exescalar(sel);
            int reg_id = 0;
            if (maxregid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                reg_id = newregid + 1;
            }
            string ins = "insert into Admin_reg_tab values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            int i = objcls.Fun_exenonquery(ins);
            if (i == 1)
            {
                string inslog = "insert into Login_tab values(" + reg_id + ",'" + TextBox5.Text + "','" + TextBox7.Text + "','Admin')";
                int j = objcls.Fun_exenonquery(inslog);



                Label11.Visible = true;
                Label11.Text = "Congratulation,your account has been successfully created";
                
            }
        }
    }
}