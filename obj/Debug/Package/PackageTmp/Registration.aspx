<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project_WebDevelopement.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
   <div>
        <div class="admin">
        </div>
        NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Required"></asp:Label>
<br />
<br />
<br />
        ROLL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="186px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
<br />
        DEPARTMENT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="187px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
        <br />
        DISTRICT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="182px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
        <br />
        PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="pass" runat="server" Text="Required"></asp:Label>
        <br />
        <br />
        <br />
        PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="183px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="cpass" runat="server" Text="Give Youre password again"></asp:Label>
        <br />
        <br />
        <br />
        <br />
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
<br />
<br />
&nbsp;
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTER" />
    
</div>
    </form>
</body>
</html>
