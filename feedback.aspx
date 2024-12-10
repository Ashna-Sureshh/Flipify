<%@ Page Title="Submit Feedback" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="Flipify.feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
            margin-top: 20px;
        }

        .feedback-container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .feedback-container td {
            padding: 10px;
        }

        .feedback-container input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .feedback-container textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .submit-button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Feedback Form -->
    <div class="feedback-container">
        <h2>Submit Your Feedback</h2>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Feedback Message:" AssociatedControlID="TextBox1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="300" TextMode="MultiLine" CssClass="feedback-textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit Feedback" OnClick="Button1_Click" CssClass="submit-button" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
