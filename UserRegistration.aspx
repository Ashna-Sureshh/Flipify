<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Flipify.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
*,
*::after,
*::before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        .auto-style7 {
            width: 211px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            width: 100%;
            height: 735px;
            background-color: #FFCC00;
        }
        .auto-style9 {
            width: 179px;
        }
        .auto-style12 {
            width: 179px;
            height: 50px;
        }
        .auto-style13 {
            height: 50px;
        }
        .auto-style18 {
            width: 179px;
            height: 140px;
        }
        .auto-style19 {
            height: 140px;
        }
        .auto-style22 {
            width: 179px;
            height: 212px;
        }
        .auto-style23 {
            height: 212px;
        }
        .auto-style26 {
            width: 179px;
            height: 29px;
        }
        .auto-style27 {
            height: 29px;
        }
        .auto-style33 {
            width: 211px;
            height: 140px;
        }
        .auto-style34 {
            width: 211px;
        }
        .auto-style35 {
            width: 211px;
            height: 50px;
        }
        .auto-style36 {
            width: 211px;
            height: 29px;
        }
        .auto-style37 {
            width: 211px;
            height: 212px;
        }
        .auto-style38 {
            width: 445px;
            height: 140px;
        }
        .auto-style39 {
            width: 445px;
        }
        .auto-style40 {
            width: 445px;
            height: 50px;
        }
        .auto-style41 {
            width: 445px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style42 {
            width: 445px;
            height: 29px;
        }
        .auto-style43 {
            width: 445px;
            height: 212px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
            <table class="auto-style8" >
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style33"></td>
                    <td class="auto-style18" style="font-weight: bold; font-size: large; text-decoration: underline">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="USER REGISTRATION" Width="433px"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First name is required." ForeColor="Black"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Last name is required." ForeColor="Black"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style40">
                        &nbsp;</td>
                    <td class="auto-style35">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="377px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Non-binary</asp:ListItem>
                            <asp:ListItem>Prefer not to say</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please select a gender." ForeColor="Black"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style7">Email</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter a valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="please enter a valid phone number." ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox5" runat="server" Height="50px" TextMode="MultiLine" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Address is required." ForeColor="Black"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        &nbsp;</td>
                    <td class="auto-style36">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Pincode"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox6" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pincode is required." ForeColor="Black"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox7" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Username must be at least 8 characters long and include at least one letter, one number, and one special character." ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&amp;])[A-Za-z\d@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox8" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox9" runat="server" Height="50px" Width="375px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="The password and confirmation password do not match."></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Register" Height="50px" OnClick="Button1_Click" Width="375px" align="center" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Label" Visible="False" Width="375px" Height="50px"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/LoginPage.aspx" Text="Click here to login" Height="50px" Width="375px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style37"></td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23"></td>
                </tr>
            </table>
    </form>
</body>
</html>
