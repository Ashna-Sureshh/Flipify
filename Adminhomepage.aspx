<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Adminhomepage.aspx.cs" Inherits="Flipify.Adminhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFCC00;
            height: 742px;
        }

        .auto-style2 {
            left: 7px;
            top: -219px;
        }

        .button-container {
            margin-top: 20px;
        }

        .admin-button {
            display: inline-block;
            margin: 10px;
            background-color: black;
            color: white;
            font-size: medium;
            font-weight: bold;
            height: 200px;
            width: 200px;
            text-align: center;
            line-height: 200px; /* Center text vertically */
            text-decoration: none; /* Remove underline for links */
            border: none; /* Remove default button border */
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .admin-button:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FFFFFF;">
        <td align="center">
            <h2 class="auto-style2">
                <b>
                    <font face="Verdana" color="black" size="20px"> ADMIN WELCOME</font>
                </b>
            </h2>
            <div class="button-container">
                <asp:Button ID="Button1" runat="server" Text="ADD CATEGORY" CssClass="admin-button" PostBackUrl="~/Category add.aspx" />
                <asp:Button ID="Button2" runat="server" Text="ADD PRODUCT" CssClass="admin-button" PostBackUrl="~/Product.aspx" />
                <asp:Button ID="Button3" runat="server" Text="VIEW FEEDBACK" CssClass="admin-button" PostBackUrl="~/Viewfeedback.aspx" />
            </div>
        </td>
    </table>
</asp:Content>
