
using System;
using System.Data;
using System.Web.UI;

namespace Flipify
{
    public partial class Payment : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Add any additional page load logic if needed
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["User_id"]);

            // Insert Account details without parameters
            string insertAccountQuery = "INSERT INTO Account_table VALUES (" + userId + ", '" + TextBox1.Text + "', '" + DropDownList1.SelectedItem.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', " + Convert.ToDecimal(TextBox5.Text) + ")";
            int accountInsertResult = objcls.Fun_exenonquery(insertAccountQuery);

            if (accountInsertResult == 1)
            {
                string selectBillQuery = "SELECT Grand_total FROM Bill_Tab WHERE Usr_id = " + userId+"";
                decimal grandTotal = Convert.ToDecimal(objcls.Fun_exescalar(selectBillQuery));

                if (grandTotal > 0)
                {
                    // Call the WCF service
                    ServiceReference1.ServiceClient client = new ServiceReference1.ServiceClient();

                    decimal balance = client.CheckBalance(userId);

                    if (balance >= grandTotal)
                    {
                        string paymentStatus = client.UpdateBalance(userId, grandTotal);

                        if (paymentStatus.Contains("Payment successful"))
                        {
                            string updateOrderQuery = "UPDATE Order_Tab SET Order_status = 'Paid' WHERE Usr_id = " + userId + " AND Order_status = 'Pending'";
                            int orderUpdateResult = objcls.Fun_exenonquery(updateOrderQuery);

                            if (orderUpdateResult > 0)
                            {
                                string selectOrderDetails = "SELECT Product_id, Quantity FROM Order_Tab WHERE Usr_id = " + userId + " AND Order_status = 'Paid'";
                                DataTable orderDetails = objcls.Fun_exedatatable(selectOrderDetails);

                                foreach (DataRow row in orderDetails.Rows)
                                {
                                    int productId = Convert.ToInt32(row["Product_id"]);
                                    int quantity = Convert.ToInt32(row["Quantity"]);
                                    string updateStockQuery = "UPDATE Product_Tab SET Product_stock = Product_stock - " + quantity + " WHERE Product_id = " + productId+"";
                                    objcls.Fun_exenonquery(updateStockQuery);
                                }

                                Label6.Text = "Payment successful!";
                                
                            }
                            else
                            {
                                Label6.Text = "Order update failed.";
                                
                            }
                        }
                        else
                        {
                            Label6.Text = "Payment failed: " + paymentStatus;
                            
                        }
                    }
                    else
                    {
                        Label6.Text = "Insufficient balance.";
                        
                    }
                }
                else
                {
                    Label6.Text = "Invalid grand total.";
                    
                }
            }
            else
            {
                Label6.Text = "Account insertion failed.";
                
            }
        }
    }
}
