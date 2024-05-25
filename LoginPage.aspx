<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>
<script runat="server">

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:aquamarine;
            border-block:groove;
            border-block-end-width:thick;
           
        }
        .auto-style1 {
            width: 83px;
            text-align: center;
        }
        .auto-style2 {
            width: 443px;
            height: 146px;
        }
        .auto-style3 {
            width: 392px;
            border-radius: 50px;
        }
        .auto-style4 {
            width: 462px;
            text-align: center;
        }
        .auto-style5 {
            width: 83px;
            height: 35px;
        }
        .auto-style6 {
            width: 392px;
            height: 35px;
            text-align: center;
        }
        .auto-style7 {
            width: 462px;
            height: 35px;
            text-align: center;
        }
        .auto-style8 {
            width: 83px;
            height: 26px;
            text-align: center;
        }
        .auto-style9 {
            width: 392px;
            height: 26px;
            color: #000099;
            text-align: center;
        }
        .auto-style10 {
            width: 462px;
            height: 26px;
        }
        .auto-style12 {
            width: 392px;
            text-align: center;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table style="border:1px solid black;margin-top:200px;margin-bottom:200px; margin-left:auto;margin-right:auto;" class="auto-style2" border="0">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"><strong>Employee Login Page</strong></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style1">UserName</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="218px" Height="25px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="218px" TextMode="Password" ValidateRequestMode="Enabled" Height="25px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="100px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" OnClick="LinkButton2_Click" PostBackUrl="~/RegistrationPage.aspx">New User</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>

        </div>
    </form>
</body>
</html>
