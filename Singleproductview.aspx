<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Singleproductview.aspx.cs" Inherits="Flipify.Singleproductview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 719px;
        }
        .auto-style2 {
            width: 323px;
        }
        .auto-style3 {
            width: 448px;
        }
        .auto-style4 {
            width: 24%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="text-align:center; background-color: #FFFFFF;">
                
        <tr>
            <td class="auto-style2" >
                &nbsp;</td>
            <td class="auto-style3" >
                <asp:Image ID="Image1" runat="server" Width="493px" Height="657px" ImageAlign="Right"  />
            </td>
            <td class="auto-style1" >
                <table class="auto-style4">
                    <tr>
                        <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="Large" Height="50px" Width="75%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Medium" Height="50px" Width="1000px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>

                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Size="Larger" Height="50px" Width="375px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Width="100px" Height="50px">
                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:Button ID="Button1" runat="server" Text="ADD TO BAG" BackColor="#FFCC00" BorderStyle="None" Font-Bold="False" Font-Size="X-Large" ForeColor="Black" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Userhomepage.aspx" Text="Continue" BackColor="#FFCC00" BorderStyle="None" Font-Bold="False" Font-Size="X-Large" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style2">

                &nbsp;</td>
            <td class="auto-style3">

                &nbsp;</td>
            <td class="auto-style1">

                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>
