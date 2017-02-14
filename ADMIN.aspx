<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMIN.aspx.cs" Inherits="SignalRChat.ADMIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style1/home.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <header>
<h1>GROUP OF CSE12</h1>
</header>

<nav>
<ul>
<li><a href="Default.aspx">HOME</a></li>
<li><a href="admin_log_in.aspx">ADMIN</a></li>
<li><a href="Registration.aspx">REGISTER</a></li>
<li><a href="POST_PAGE.aspx">UPLOADS</a></li>
    <li><a href="LOG_IN_FIRST.aspx">PROFILE</a></li>
</ul>

</nav>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="father" HeaderText="father" SortExpression="father" />
                <asp:BoundField DataField="mother" HeaderText="mother" SortExpression="mother" />
                <asp:BoundField DataField="permanent" HeaderText="permanent" SortExpression="permanent" />
                <asp:BoundField DataField="present" HeaderText="present" SortExpression="present" />
                <asp:BoundField DataField="college" HeaderText="college" SortExpression="college" />
                <asp:BoundField DataField="blood" HeaderText="blood" SortExpression="blood" />
                <asp:BoundField DataField="hall" HeaderText="hall" SortExpression="hall" />
                <asp:BoundField DataField="room" HeaderText="room" SortExpression="room" />
                <asp:BoundField DataField="hobby" HeaderText="hobby" SortExpression="hobby" />
                <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="fav_teach" HeaderText="fav_teach" SortExpression="fav_teach" />
                <asp:BoundField DataField="future_plan" HeaderText="future_plan" SortExpression="future_plan" />
                <asp:BoundField DataField="Roll" HeaderText="Roll" SortExpression="Roll" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [person] WHERE [Id] = @Id" InsertCommand="INSERT INTO [person] ([father], [mother], [permanent], [present], [college], [blood], [hall], [room], [hobby], [skill], [email], [fav_teach], [future_plan], [Roll]) VALUES (@father, @mother, @permanent, @present, @college, @blood, @hall, @room, @hobby, @skill, @email, @fav_teach, @future_plan, @Roll)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [father], [mother], [permanent], [present], [college], [blood], [hall], [room], [hobby], [skill], [email], [fav_teach], [future_plan], [Roll] FROM [person]" UpdateCommand="UPDATE [person] SET [father] = @father, [mother] = @mother, [permanent] = @permanent, [present] = @present, [college] = @college, [blood] = @blood, [hall] = @hall, [room] = @room, [hobby] = @hobby, [skill] = @skill, [email] = @email, [fav_teach] = @fav_teach, [future_plan] = @future_plan, [Roll] = @Roll WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="father" Type="String" />
                <asp:Parameter Name="mother" Type="String" />
                <asp:Parameter Name="permanent" Type="String" />
                <asp:Parameter Name="present" Type="String" />
                <asp:Parameter Name="college" Type="String" />
                <asp:Parameter Name="blood" Type="String" />
                <asp:Parameter Name="hall" Type="String" />
                <asp:Parameter Name="room" Type="String" />
                <asp:Parameter Name="hobby" Type="String" />
                <asp:Parameter Name="skill" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="fav_teach" Type="String" />
                <asp:Parameter Name="future_plan" Type="String" />
                <asp:Parameter Name="Roll" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="father" Type="String" />
                <asp:Parameter Name="mother" Type="String" />
                <asp:Parameter Name="permanent" Type="String" />
                <asp:Parameter Name="present" Type="String" />
                <asp:Parameter Name="college" Type="String" />
                <asp:Parameter Name="blood" Type="String" />
                <asp:Parameter Name="hall" Type="String" />
                <asp:Parameter Name="room" Type="String" />
                <asp:Parameter Name="hobby" Type="String" />
                <asp:Parameter Name="skill" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="fav_teach" Type="String" />
                <asp:Parameter Name="future_plan" Type="String" />
                <asp:Parameter Name="Roll" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                <asp:BoundField DataField="theke" HeaderText="theke" SortExpression="theke" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [post] WHERE [Id] = @Id" InsertCommand="INSERT INTO [post] ([name], [message], [theke], [date]) VALUES (@name, @message, @theke, @date)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [name], [message], [theke], [date] FROM [post]" UpdateCommand="UPDATE [post] SET [name] = @name, [message] = @message, [theke] = @theke, [date] = @date WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="theke" Type="String" />
                <asp:Parameter Name="date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="theke" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="ROLL" HeaderText="ROLL" SortExpression="ROLL" />
                <asp:BoundField DataField="DEP" HeaderText="DEP" SortExpression="DEP" />
                <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                <asp:BoundField DataField="veryfication" HeaderText="veryfication" SortExpression="veryfication" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([NAME], [ROLL], [DEP], [District], [PASSWORD], [veryfication]) VALUES (@NAME, @ROLL, @DEP, @District, @PASSWORD, @veryfication)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [NAME], [ROLL], [DEP], [District], [PASSWORD], [veryfication] FROM [Table]" UpdateCommand="UPDATE [Table] SET [NAME] = @NAME, [ROLL] = @ROLL, [DEP] = @DEP, [District] = @District, [PASSWORD] = @PASSWORD, [veryfication] = @veryfication WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="ROLL" Type="String" />
                <asp:Parameter Name="DEP" Type="String" />
                <asp:Parameter Name="District" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="veryfication" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="ROLL" Type="String" />
                <asp:Parameter Name="DEP" Type="String" />
                <asp:Parameter Name="District" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="veryfication" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="imageinfo" HeaderText="imageinfo" SortExpression="imageinfo" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Table_1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table_1] ([Id], [imageinfo]) VALUES (@Id, @imageinfo)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [imageinfo] FROM [Table_1]" UpdateCommand="UPDATE [Table_1] SET [imageinfo] = @imageinfo WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="imageinfo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="imageinfo" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
