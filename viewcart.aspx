<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="Flipify.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="Cart_id,Product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="Cart_id" HeaderText="Cart Id" />
                        <asp:BoundField DataField="Product_id" HeaderText="Product Id" />
                        <asp:BoundField DataField="Usr_id" HeaderText="User Id" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Totalprice" HeaderText="Total Price" />
                        <asp:CommandField HeaderText="Action" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Cart_id") %>' OnCommand="Button1_Command" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server"  Text="Place Order" BackColor="#FFCC00" BorderStyle="None" Font-Bold="False" Font-Size="X-Large" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>