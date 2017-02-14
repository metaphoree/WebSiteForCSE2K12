<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aDefault.aspx.cs" Inherits="Project_WebDevelopement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/home.css" rel="stylesheet" type="text/css" />
    <link href="style/home.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <header>
<h1>GROUP OF CSE12</h1>
</header>

<nav>
<ul>
<li><a href="aDefault.aspx">HOME</a></li>
<li><a href="chat.html">ADMIN</a></li>
<li><a href="Registration.aspx">REGISTER</a></li>
<li><a href="Downloads.aspx">DOWNLOADS</a></li>
</ul>
<br />
</nav>

<div class="banner">

</div>

<section>
<div class="class_1">
<h1>WELCOME</h1>
<p>
This is the official group of CSE 2K12.You can find all things you need 
here .Add  yore self by registering.You wii find all the group contents 
here.

</p>

</div>
<div class="class_2">
<h1>NOTICE BOARD</h1>
</div>
<div class="class_3">
<h1>EVENTS COMING</h1>
</div>
<div class="class_4">
<h1>CLASS TEST</h1>
</div>
<div class="class_5">
<h1>ASSIGNMENT</h1>
</div>
<div class="class_6">
<h1>NEWS</h1>
</div>
<div class="class_7">
<h1>WORKSHOP</h1>
</div>
</section>

<aside>
<div>
<h1>LOG IN</h1>
    <h1>&nbsp;user name:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </h1>
    <h1>&nbsp;password:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </h1>
    <h1>
        <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="LOG IN" Width="82px" />
    &nbsp;&nbsp;
        </h1>
    <p>
        <asp:CheckBox ID="CheckBox1" runat="server" />
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="REMIND   ME"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>&nbsp;</p>
    <hr />
    <p>&nbsp;</p>
 
  
  
    
</div>
</aside>
<footer>

<p>all copy rights goes to nabil sarwar rahat</p>
</footer>


    </form>
</body>
</html>
