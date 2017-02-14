<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pass_change.aspx.cs" Inherits="Project_WebDevelopement.buy_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <link href="style1/p_change.css" rel="stylesheet" type="text/css" />
    
    
</head>
<body>
    <form id="form1" runat="server">
     <header>
<h1>GROUP OF CSE12</h1>
</header>

<nav>
<ul>
<li><a href="Default.aspx">HOME</a></li>
<li><a href="Registration.aspx">REGISTER</a></li>
 <li><a href="POST_PAGE.aspx">UPLOADS</a></li>
<li><a href="LOG_IN_FIRST.aspx">PROFILE</a></li>
    <li><a href="chat.html" target="_blank">CHAT</a></li>
 
  
</ul>
</nav>
        <div class="pchange">

            <div class="inside">
            <asp:Label ID="Label1" runat="server" Text="OLD PASWORD:"></asp:Label>

            &nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>

            <br />
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="NEW PASSWORD:"></asp:Label> 

            <asp:TextBox ID="TextBox2" runat="server" Height="16px" style="margin-left: 0px" Width="170px"></asp:TextBox>

            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="LOG OUT" Width="78px" />
        </div>


            </div>


    </form>
</body>
</html>
