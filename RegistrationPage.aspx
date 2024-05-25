<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="WebApplication4.loginpage" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:aquamarine;
        }
        h1{
          
            color:red;
            font-family:'Comic Sans MS';
        }
        form1
{
   
	 align-items: center;
	 align-content:center;
	 font-family: Comic Sans MS;
	 border-radius: 15px 50px 30px 5px;
	 
}
        .auto-style1 {
            text-align: left;
            color: #FF0066;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 114px;
        }
        .auto-style4 {
            width: 214px;
            height: 34px;
        }
        .auto-style5 {
            height: 34px;
        }
        .auto-style6 {
            width: 214px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            margin:50px;
            width: 50px;
            height: 56px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            width: 74px;
        }
    </style>
</head>
<body style="margin-left: 35%;">
    <form id="form1" runat="server" >
        <div class="auto-style1">
        &nbsp;&nbsp; 
         <h1 class="auto-style10" align="center">    Employee Registration Page </h1></div>
        <div class="tab"><table class="auto-style2">
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
        <table  class="auto-style2">
            <tr>
                <td class="auto-style4">UserName</td>
                <td class="auto-style5">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="UserName can not be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="password should not be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">ReType Password</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Correct Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mobile Number</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid number Mobile Number Can not be Blank" ForeColor="Red"></asp:RequiredFieldValidator>  
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="only 10 digits..." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email Id</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Valid EmailId Field Cannot be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator id="regEmail" ControlToValidate="TextBox6" Text="Enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Runat="server" />  
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="White" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="41px" Width="100px" />


                </td>
            </tr>
            <tr>
                <td class="auto-style8">Enter Captcha</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Refresh" />
&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Valid Captcha" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table2]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <input id="Reset1" class="auto-style11" type="reset" value="reset" /><br />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
      </div>
    </form>
</body>
</html>
