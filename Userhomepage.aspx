
<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Userhomepage.aspx.cs" Inherits="Flipify.Userhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* General styling for the page */
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            height: 85px;
            background-color: #333; /* Dark background for the header */
            color: white;
            padding: 10px;
            text-align: center;
        }

        /* Category section title */
        .category-title {
            font-family: Verdana, sans-serif;
            color: black;
            font-size: 22px;
        }

        /* Styling for DataList */
        .category-item {
            text-align: center;
            padding: 20px;
            margin: 10px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .category-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Styling for category image button */
        .category-image {
            width: 275px;
            height: 160px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .category-image:hover {
            transform: scale(1.05);
        }

        /* Category name label */
        .category-name {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-top: 10px;
        }

        /* Category description label */
        .category-description {
            font-size: 14px;
            color: #666;
            margin-top: 5px;
        }

        /* Centered Feedback Button Styling */
        .feedback-button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 30px;
        }

        /* Styling for the feedback button */
        .feedback-button {
            background-color:goldenrod; /* Yellow background */
            color: white; /* White text */
            width: 200px; /* Circular shape width */
            height: 200px; /* Circular shape height */
            border-radius: 50%; /* Makes the button circular */
            border: none; /* No border */
            font-size: 20px; /* Text size */
            font-weight: bold; /* Bold text */
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* Hover effect for button */
        .feedback-button:hover {
            transform: scale(1.1); /* Slightly enlarge on hover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="text-align: justify;">
        <tr>
            <td colspan="2" align="center" style="background-color: #FFFFFF" class="auto-style3">
                <h2 class="category-title"><b>Category</b></h2>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF">
                <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Justify" RepeatColumns="4" BorderColor="White" BorderWidth="0px" Width="100%">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle BorderWidth="0px" HorizontalAlign="Center" Width="25%" />
                    <ItemTemplate>
                        <table class="auto-style2">
                            <tr>
                                <td>&nbsp;</td>
                                <td style="border-style: none;" align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="160px" ImageUrl='<%# Eval("Category_image") %>' Width="275px" ImageAlign="Middle" CommandArgument='<%# Eval("Category_id") %>' OnCommand="ImageButton1_Command" CssClass="category-image" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="border-style: none;" align="center">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_name") %>' Font-Bold="True" ForeColor="Black" CssClass="category-name"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="border-style: none;" align="center">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category_description") %>' Font-Bold="False" ForeColor="Black" CssClass="category-description"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="feedback-button-container">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Feedback" CssClass="feedback-button" />
            </td>
        </tr>
    </table>
</asp:Content>
