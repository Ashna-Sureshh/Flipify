<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewbillpage.aspx.cs" Inherits="Flipify.viewbillpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 1055px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Order ID:"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" Text="Billing Address:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Order Date:"></asp:Label>
                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Size="Medium" Text="Order ID:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Size="Small"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
                    <AlternatingRowStyle BorderColor="Black" BorderStyle="None" />
                    <Columns>
                        <asp:BoundField DataField="Product_name" HeaderText="Product Name" />
                        <asp:BoundField DataField="Quantity" HeaderText="Qty" />
                        <asp:BoundField DataField="Product_price" HeaderText="Gross Amount" />
                        <asp:BoundField DataField="Totalprice" HeaderText="Total" />
                    </Columns>
                    <EditRowStyle BorderStyle="None" />
                    <PagerStyle BorderColor="White" />
                    <RowStyle BorderColor="Black" BorderStyle="None" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Total Quantity :"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Grand Total :"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button2" runat="server"  Text="Continue" BackColor="#FFCC00" BorderStyle="None" Font-Bold="False" Font-Size="X-Large" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
