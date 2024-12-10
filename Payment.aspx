
<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Flipify.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .input-field {
            width: 80%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            margin: 5px 0;
        }
        .button-style {
            padding: 10px 20px;
            background-color: orange;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 80%;
        }
        .button-style:hover {
            background-color: forestgreen;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="width: 50%; margin: auto; border-collapse: collapse; background-color: #FFFFFF; border: 2px solid black; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); border-radius: 8px;">
        <!-- Account Holder Name Field -->
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:Label ID="Label1" runat="server" Text="Account Holder Name"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field" Placeholder="Enter account holder name"></asp:TextBox>
            </td>
        </tr>

        <!-- Bank Name Dropdown -->
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:Label ID="Label2" runat="server" Text="Bank Name"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input-field">
                    <asp:ListItem Text="Select Bank" Value="0" />
                    <asp:ListItem Text="State Bank" Value="1" />
                    <asp:ListItem Text="HDFC Bank" Value="2" />
                    <asp:ListItem Text="ICICI Bank" Value="3" />
                    <asp:ListItem Text="Axis Bank" Value="4" />
                </asp:DropDownList>
            </td>
        </tr>

        <!-- Account Number Field -->
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:Label ID="Label3" runat="server" Text="Account Number"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field" Placeholder="Enter account number"></asp:TextBox>
            </td>
        </tr>

        <!-- Branch Name Field -->
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:Label ID="Label4" runat="server" Text="Branch"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field" Placeholder="Enter branch name"></asp:TextBox>
            </td>
        </tr>

        <!-- IFSC Code Field -->
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:Label ID="Label5" runat="server" Text="IFSC Code"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="input-field" Placeholder="Enter IFSC code"></asp:TextBox>
            </td>
        </tr>

        <!-- Initial Balance Field -->
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:Label ID="Label7" runat="server" Text="Initial Balance"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding: 10px;"></td>
            <td style="padding: 10px;">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="input-field" Placeholder="Enter initial balance"></asp:TextBox>
            </td>
        </tr>

        <!-- Pay Now Button -->
        <tr>
            <td style="padding: 20px;"></td>
            <td style="padding: 20px;">
                <asp:Button ID="Button1" runat="server" Text="Pay Now" CssClass="button-style" OnClick="Button1_Click1" />
            </td>
        </tr>

        <!-- Payment Status Label -->
        <tr>
            <td style="padding: 20px;"></td>
            <td style="padding: 20px;">
                <asp:Label ID="Label6" runat="server" Text="Payment Status"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
