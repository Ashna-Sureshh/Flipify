<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Flipify.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        background-color: #FFCC00;
    }
    .auto-style2 {
            width: 591px;
        }
        .auto-style3 {
            width: 195px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" >&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" >
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="black" Text="Login Page " align="center" ></asp:Label>
                </td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black" Text="Username"></asp:Label>
                    </td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">
                    <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="534px"></asp:TextBox>
                </td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black" Text="Password"></asp:Label>
                    </td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="534px"></asp:TextBox>
                </td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Larger" Text="LOGIN" ForeColor="Black" Height="43px" OnClick="Button1_Click" Width="173px" />
                    </td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Label" Visible="False" Width="300px"></asp:Label>
                    </td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;" class="auto-style3">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
            <td style="background-color: #FFFFFF; font-family: 'Times New Roman'; font-size: large;">&nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
