<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewfeedback.aspx.cs" Inherits="Flipify.Viewfeedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .container {
            width: 90%;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .feedback-grid {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .feedback-grid th, .feedback-grid td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        .feedback-grid th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        .reply-link {
            color: #007bff;
            text-decoration: none;
        }

        .reply-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Feedback List</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="feedback-grid">
                <Columns>
                    <%-- User Name Column --%>
                    <asp:BoundField DataField="FullName" HeaderText="Name" ItemStyle-Width="30%" />

                    <%-- Feedback Message Column --%>
                    <asp:BoundField DataField="Feedback_message" HeaderText="Feedback" ItemStyle-Width="50%" />

                    <%-- Reply Link Column --%>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <a href='<%# "reply.aspx?FeedbackID=" + Eval("Feedback_id") %>' class="reply-link">Send Reply</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
