<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Flipify.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFCC00;
        }
        .auto-style3 {
            width: 427px;
        }
        .auto-style4 {
            width: 398px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1" style="background-color: #FFFFFF">
        <tr>
        <td colspan="4" align="center">
            &nbsp;</td>
        </tr>
        <td colspan="4" align="center">
            <h2><b><font face="Verdana" color="Black" size="20px">EDIT CATEGORY</font> </b></h2>
        </td>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_id" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" BackColor="White" CellPadding="15" CellSpacing="100" HorizontalAlign="Center" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                        <Columns>
                            <asp:CommandField HeaderText="Operation" ShowEditButton="True" />
                            <asp:BoundField DataField="Category_id" HeaderText="Category Id" />
                            <asp:BoundField DataField="Category_name" HeaderText="Category Name" />
                            <asp:TemplateField HeaderText="Category Image">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Category_image") %>' Width="200px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Category_description" HeaderText="Category Description" />
                            <asp:BoundField DataField="Category_status" HeaderText="Category Status" />
                        </Columns>
                        <HeaderStyle BackColor="White" />
                    </asp:GridView>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
    </table>
</asp:Content>
