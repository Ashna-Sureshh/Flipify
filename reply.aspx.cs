using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flipify
{
    public partial class reply : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the FeedbackID from the query string
                string feedbackID = Request.QueryString["FeedbackID"];

                if (!string.IsNullOrEmpty(feedbackID))
                {
                    // Get the Usr_id from the Feedback_tab
                    int userID = GetUserIDFromFeedback(feedbackID);

                    // Get the user's email based on Usr_id
                    string userEmail = GetUserEmailByID(userID);

                    // Set the email in the To Address textbox
                    TextBox1.Text = userEmail;
                }
            }
        }
        private int GetUserIDFromFeedback(string feedbackID)
        {
            string query = "SELECT Usr_id FROM Feedback_tab WHERE Feedback_id = '" + feedbackID + "'";
            string result = objcls.Fun_exescalar(query);
            int userID = 0;
            if (int.TryParse(result, out userID))
            {
                return userID;
            }
            return 0;
        }

        private string GetUserEmailByID(int userID)
        {
            string query = "SELECT Email FROM User_reg_tab WHERE Usr_id = " + userID+"";
            return objcls.Fun_exescalar(query);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string recipient = TextBox1.Text;
            string emailSubject = TextBox2.Text;
            string emailMessage = TextBox3.Text;

            try
            {
                SendEmail("suresh KK", "sureshkunjuk56@gmail.com", "rcrg zzot oadf iafp", "User", recipient, emailSubject, emailMessage);

                string feedbackID = Request.QueryString["FeedbackID"];
                SaveReplyToDatabase(feedbackID, emailMessage);

                Response.Write("<script>alert('Reply sent successfully!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        private void SaveReplyToDatabase(string feedbackID, string replyMessage)
        {
            string sanitizedReply = replyMessage.Replace("'", "''");
            string query = "UPDATE Feedback_tab SET Reply_message = '" + sanitizedReply + "', Feedback_status = 'Inactive' WHERE Feedback_id = '" + feedbackID + "'";
            objcls.Fun_exenonquery(query);
        }

        // Send email using Gmail SMTP
        public static void SendEmail(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; // To address    
            string from = yourGmailUserName; // From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); // Gmail SMTP    
            System.Net.NetworkCredential basicCredential1 = new System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}