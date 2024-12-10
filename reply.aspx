
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reply.aspx.cs" Inherits="Flipify.reply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reply to Feedback</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            width: 400px;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 22px;
            color: #333;
        }

        table {
            width: 100%;
            border-spacing: 10px;
        }

        label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"], textarea, .asp-textbox {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            outline: none;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus, textarea:focus {
            border-color: #4caf50;
        }

        textarea {
            height: 100px;
        }

        .asp-button {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .asp-button:hover {
            background-color: #45a049;
        }
        .auto-style1 {
            width: 1055px;
            height: 595px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <h1>Send Reply to User</h1>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Recipient Email"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="asp-textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Email Subject"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="asp-textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Reply Message"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="asp-textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Reply" CssClass="asp-button" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
