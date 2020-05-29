<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 658px;
        }
        .auto-style2 {
            width: 658px;
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:27%; margin-left: 320px;">
        <tr>
            ><td class="auto-style2" style="text-align: center; font-size: 30px; font-family: 楷体; background-color: #99CCFF;">教学管理系统</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="密   码:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 7px" Width="138px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="0">教学秘书</asp:ListItem>
                    <asp:ListItem Value="1">教师</asp:ListItem>
                    <asp:ListItem Selected="True" Value="2">学生</asp:ListItem>
                    <asp:ListItem Value="3">管理员</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp
                <asp:Button ID="Button2" runat="server" Text="重置" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
