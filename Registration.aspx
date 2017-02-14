<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project_WebDevelopement.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="style1/registration.css" rel="stylesheet" type="text/css" />
    <link href="livevalidation_standalone.js" rel="javascript" type="text/javascript" /> 
    <script>
       
            
</script>
</head>
<body>
    <form id="form1" runat="server">
         <header>
<h1>GROUP OF CSE12</h1>
</header>

<nav>
<ul>
<li><a href="Default.aspx">HOME</a></li>
<li><a href="admin_log_in.aspx">ADMIN</a></li>
<li><a href="Registration.aspx">REGISTER</a></li>
<li><a href="POST_PAGE.aspx">UPLOADS</a></li>
</ul>

</nav>
   <div>
        <div class="admin">
        </div>
       <div class="khan">
    <h1>REGISTRATION PAGE</h1>   
       <br />
       <br />  NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="191px" style="margin-left: 0px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Required"></asp:Label>
<br />
<br />
<br />
        ROLL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="194px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
<br />
        DEPARTMENT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="190px" style="margin-left: 0px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
        <br />
        DISTRICT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="193px" style="margin-left: 0px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
        <br />
        PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="194px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="pass" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
        <br />
        PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="193px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpass" runat="server" Text="Give Youre password "></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([NAME], [ROLL], [DEP], [District], [PASSWORD]) VALUES (@NAME, @ROLL, @DEP, @District, @PASSWORD)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [NAME], [ROLL], [DEP], [District], [PASSWORD] FROM [Table]" UpdateCommand="UPDATE [Table] SET [NAME] = @NAME, [ROLL] = @ROLL, [DEP] = @DEP, [District] = @District, [PASSWORD] = @PASSWORD WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="ROLL" Type="String" />
                <asp:Parameter Name="DEP" Type="String" />
                <asp:Parameter Name="District" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="ROLL" Type="String" />
                <asp:Parameter Name="DEP" Type="String" />
                <asp:Parameter Name="District" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTER" Height="38px" style="margin-top: 0px" Width="119px" />
    </div>
</div>
    </form>
</body>
</html>
