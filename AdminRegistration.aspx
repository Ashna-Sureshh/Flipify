<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="Flipify.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 755px;
            background-color: #FFCC00;
        }
*{box-sizing:border-box}
        
*{text-shadow:none!important;box-shadow:none!important}

* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

        .auto-style9 {
            width: 211px;
            height: 6px;
        }
        .auto-style10 {
            width: 275px;
            height: 6px;
        }
        .auto-style11 {
            height: 6px;
        }
        .auto-style13 {
            width: 211px;
            height: 59px;
        }
        .auto-style14 {
            width: 275px;
            height: 59px;
        }
        .auto-style15 {
            height: 59px;
        }
        .auto-style17 {
            width: 211px;
            height: 63px;
        }
        .auto-style18 {
            width: 275px;
            height: 63px;
        }
        .auto-style19 {
            height: 63px;
        }
        .auto-style21 {
            width: 211px;
            height: 49px;
        }
        .auto-style22 {
            width: 275px;
            height: 49px;
        }
        .auto-style23 {
            height: 49px;
        }
        .auto-style25 {
            width: 211px;
            height: 47px;
        }
        .auto-style26 {
            width: 275px;
            height: 47px;
        }
        .auto-style27 {
            height: 47px;
        }
        .auto-style29 {
            width: 211px;
            height: 23px;
        }
        .auto-style30 {
            width: 275px;
            height: 23px;
        }
        .auto-style31 {
            height: 23px;
        }
        .auto-style33 {
            width: 211px;
            height: 32px;
        }
        .auto-style34 {
            width: 275px;
            height: 32px;
        }
        .auto-style35 {
            height: 32px;
        }
        .auto-style37 {
            width: 211px;
            height: 33px;
        }
        .auto-style38 {
            width: 275px;
            height: 33px;
        }
        .auto-style39 {
            height: 33px;
        }
        .auto-style41 {
            width: 211px;
            height: 328px;
        }
        .auto-style42 {
            width: 275px;
            height: 328px;
        }
        .auto-style43 {
            height: 328px;
        }
        .auto-style45 {
            width: 211px;
            height: 140px;
        }
        .auto-style46 {
            width: 275px;
            height: 140px;
        }
        .auto-style47 {
            height: 140px;
        }
        .auto-style48 {
            width: 499px;
            height: 140px;
        }
        .auto-style49 {
            width: 499px;
            height: 63px;
        }
        .auto-style50 {
            width: 499px;
            height: 49px;
        }
        .auto-style51 {
            width: 499px;
            height: 59px;
        }
        .auto-style52 {
            width: 499px;
            height: 47px;
        }
        .auto-style53 {
            width: 499px;
            height: 23px;
        }
        .auto-style54 {
            width: 499px;
            height: 32px;
        }
        .auto-style55 {
            width: 499px;
            height: 33px;
        }
        .auto-style56 {
            width: 499px;
            height: 6px;
        }
        .auto-style57 {
            width: 499px;
            height: 328px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style45"></td>
                <td class="auto-style46" style="font-size: large; text-decoration: underline; font-weight: bold">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="ADMIN REGISTRATION" Height="41px" Width="466px"></asp:Label>
                </td>
                <td class="auto-style47"></td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style17">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Name"></asp:Label>
                    </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="The name field is required." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style50"></td>
                <td class="auto-style21">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Email"></asp:Label>
                    </td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter a valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style13">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Address"></asp:Label>
                    </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Height="50px" TextMode="MultiLine" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Address is required." ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style52"></td>
                <td class="auto-style25">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Phone Number"></asp:Label>
                    </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter a valid phone number." ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style53"></td>
                <td class="auto-style29">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Username"></asp:Label>
                    </td>
                <td class="auto-style30">
                    <asp:TextBox ID="TextBox5" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Username must be at least 8 characters long and include at least one letter, one number, and one special character." ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&amp;])[A-Za-z\d@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style33">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Password"></asp:Label>
                    </td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox6" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style55"></td>
                <td class="auto-style37">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Confirm Password"></asp:Label>
                    </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox7" runat="server" Height="50px" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style39">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="The password and confirmation password do not match."></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style56"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Register" Height="50px" OnClick="Button1_Click" Width="375px" />
                    </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Label" Visible="False" Width="375px" Height="50px"></asp:Label>
                    </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/LoginPage.aspx" Text="Click here to login" Height="50px" Width="375px" />
                    </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style57"></td>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
                <td class="auto-style43"></td>
            </tr>
        </table>
    </form>
</body>
</html>
