<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<style>
  body{
      background-color:greenyellow;
      align-self:center;
  }
    .auto-style1 {
        width: 300px;
        margin-left: 300px;
        height: 166px;
    }
    .auto-style2 {
        height: 32px;
        width: 256px;
        margin-left: 0px;
        margin-top: 0px;
    }
    .auto-style3 {
        margin-left: 0px;
    }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            Welcome&nbsp;&nbsp;&nbsp;
           <h1> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
    <p class="auto-style2">
        Hi , You Have Successfully Logged-in.</p>

     <asp:GridView ID="EmpGridView" runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="black" GridLines="2" CssClass="table" 
         Width="405px" OnSelectedIndexChanged="EmpGridView_SelectedIndexChanged" OnRowDeleting="EmpGridView_RowDeleting" DataKeyNames="username"
         OnRowEditing="EmpGridView_RowEditing" OnRowCancelingEdit="EmpGridView_RowCancelingEdit" OnRowUpdating="EmpGridView_RowUpdating">    
       
       <Columns>  
        

           <asp:TemplateField HeaderText="username">
               <ItemTemplate>
               <asp:Label runat="server" Text='<%# Eval("username") %>'></asp:Label>
             </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="username" runat="server" Text='<%# Bind("username")%>'></asp:TextBox>
            </EditItemTemplate>
       </asp:TemplateField>

       
   
         <asp:TemplateField HeaderText="phone">
               <ItemTemplate>
               <asp:Label runat="server" Text='<%# Eval("phone") %>'></asp:Label>
             </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="phone" runat="server" Text='<%# Bind("phone")%>'></asp:TextBox>
            </EditItemTemplate>
       </asp:TemplateField>


         <asp:TemplateField HeaderText="email">
               <ItemTemplate>
               <asp:Label runat="server" Text='<%# Eval("email") %>'></asp:Label>
             </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="email" runat="server" Text='<%# Bind("email")%>'></asp:TextBox>
            </EditItemTemplate>
       </asp:TemplateField>


           <asp:CommandField ShowDeleteButton="true" 
               ControlStyle-CssClass="btn btn-danger" HeaderText="Remove Record"/>
        <asp:CommandField ShowEditButton="true" 
               ControlStyle-CssClass="btn btn-primary" HeaderText="Edit Record"/>
               
      </Columns>
         
        
 </asp:GridView>
        </div>
      </form>
    </body>
</html>
