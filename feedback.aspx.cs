using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Flipify
{
    public partial class feedback : System.Web.UI.Page
    {
        // Create an instance of ConnectionClass
        ConnectionClass objcls = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string feedbackMessage = TextBox1.Text;

            // Check if the feedback message is not empty
            if (!string.IsNullOrEmpty(feedbackMessage))
            {
                // Check if the user_id exists in the session
                if (Session["User_id"] != null)
                {
                    // Get the user ID from session and convert it to an integer
                    int userId = Convert.ToInt32(Session["User_id"]);

                    // Insert the feedback into the database
                    SubmitFeedback(userId, feedbackMessage);
                }
                else
                {
                    // If no user_id in session, redirect to the login page
                    Response.Redirect("LoginPage.aspx");
                }
            }
            else
            {
                // If the feedback message is empty, display an alert
                Response.Write("<script>alert('Please enter your feedback.');</script>");
            }
        }

        private void SubmitFeedback(int userId, string feedbackMessage)
        {
            
            feedbackMessage = feedbackMessage.Replace("'", "''");

            
            string query = "INSERT INTO Feedback_tab VALUES (" + userId + ", '" + feedbackMessage + "', 'Received', 'Active')";

            // Use the ConnectionClass to execute the query
            int result = objcls.Fun_exenonquery(query);

            if (result > 0)
            {
                // Feedback successfully inserted into the database
                Response.Write("<script>alert('Thank you for your feedback!');</script>");
            }
            else
            {
                // Feedback insertion failed
                Response.Write("<script>alert('There was an error while submitting your feedback. Please try again.');</script>");
            }
        }
    }
}
