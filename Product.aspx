<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Flipify.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        background-color: #FFCC00;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 43px;
        }
        .auto-style3 {
            width: 430px;
        }
        .auto-style4 {
            height: 43px;
            width: 430px;
        }
        .auto-style7 {
            width: 176px;
        }
        .auto-style8 {
            height: 43px;
            width: 176px;
        }
        .auto-style10 {
            width: 330px;
        }
        .auto-style11 {
            height: 43px;
            width: 330px;
        }
        .auto-style12 {
            width: 430px;
            height: 27px;
        }
        .auto-style13 {
            width: 330px;
            height: 27px;
        }
        .auto-style14 {
            width: 176px;
            height: 27px;
        }
        .auto-style15 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FFFFFF">
        <td colspan="4" align="center">
            <h2><b><font face="Verdana" color="black" size="20px">ADD PRODUCT</font> </b></h2>
        </td>
        <tr>
        <td colspan="4" align="center">
            &nbsp;</td>
        </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Category Name"></asp:Label>
                    </td>
        <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="375px">
                    </asp:DropDownList>
                </td>
        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="The  field is required." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        &nbsp;</td>
        <td class="auto-style7">
                    &nbsp;</td>
        <td>
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Product Name"></asp:Label>
                    </td>
        <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="The name field is required." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        &nbsp;</td>
        <td class="auto-style7">
                    &nbsp;</td>
        <td>
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Product Image"></asp:Label>
                    </td>
        <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="50px" Width="377px" />
            </td>
        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="The  field is required." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        &nbsp;</td>
        <td class="auto-style7">
                &nbsp;</td>
        <td>
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Product Description"></asp:Label>
                    </td>
        <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="375px" TextMode="MultiLine"></asp:TextBox>
                </td>
        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Category description is required. Please enter a valid description." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        &nbsp;</td>
        <td class="auto-style7">
                    &nbsp;</td>
        <td>
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style11">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Product Price"></asp:Label>
                    </td>
        <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
        <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="The  field is required." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style11">
                        &nbsp;</td>
        <td class="auto-style8">
                    &nbsp;</td>
        <td class="auto-style2">
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Product Stock"></asp:Label>
                    </td>
        <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
        <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="The  field is required." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">
                        &nbsp;</td>
        <td class="auto-style7">
                    &nbsp;</td>
        <td>
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13"></td>
        <td class="auto-style14"></td>
        <td class="auto-style15"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Larger" Text="ADD" Height="50px" OnClick="Button1_Click" Width="375px" />
                    </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style7">
                        &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style7">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="label7" Visible="False" Height="50px" Width="375px"></asp:Label>
                    </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style7">
                        &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style7">
                        &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>
