<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Edit product.aspx.cs" Inherits="Flipify.Edit_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFCC00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #FFFFFF">
        <tr>
        <td colspan="2" align="center">
            &nbsp;</td>
        </tr>
        <td colspan="2" align="center">
            <h2><b><font face="Verdana" color="black" size="20px">EDIT PRODUCT</font> </b></h2>
        </td>
        <tr>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" BackColor="White" CellPadding="15" CellSpacing="100" HorizontalAlign="Center" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                        <Columns>
                            <asp:CommandField HeaderText="Operation" ShowEditButton="True" />
                            <asp:BoundField DataField="Product_id" HeaderText="Product Id" />
                            <asp:BoundField DataField="Category_id" HeaderText="Category Id" />
                            <asp:BoundField DataField="Product_name" HeaderText="Product Name" />
                            <asp:TemplateField HeaderText="Product Image">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Product_image") %>' Width="200px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Product_description" HeaderText="Product Description" />
                            <asp:BoundField DataField="Product_price" HeaderText="Product Price" />
                            <asp:BoundField DataField="Product_status" HeaderText="Product Status" />
                            <asp:BoundField DataField="Product_stock" HeaderText="Product Stock" />
                        </Columns>
                        <HeaderStyle BackColor="White" />
                    </asp:GridView>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
