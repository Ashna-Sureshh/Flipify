<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="Flipify.viewproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 502px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="text-align: justify; font-family: 'Times New Roman', Times, serif; vertical-align: middle; background-color: #FFFFFF;">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" BorderWidth="0px" SelectedIndex="0" Width="100%" RepeatDirection="Horizontal">
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle BorderWidth="0px" Width="50%" HorizontalAlign="Center" VerticalAlign="Top" />
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                    <td style="border-style: none; " align="center" class="auto-style1">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="500px" ImageUrl='<%# Eval("Product_image") %>' Width="400px" CommandArgument='<%# Eval("Product_id") %>' OnCommand="ImageButton1_Command" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="border-style: none; "align="center" class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_name") %>' Font-Bold="True" ForeColor="Black" align="center" Font-Size="Larger"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="border-style: none; " align="center" class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_description") %>' Font-Bold="False" ForeColor="Black" align="center" Width="375px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server"  Font-Bold="True" ForeColor="Black" Text='<%# FormatPrice(Eval("Product_price")) %>' align="center" Width="500px"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
