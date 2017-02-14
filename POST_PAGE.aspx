<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="POST_PAGE.aspx.cs" Inherits="Project_WebDevelopement.POST_PAGE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style1/POST_D.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
         <header>
<h1>GROUP OF CSE12</h1>
</header>
    <div>
    <nav> 
<ul>
    <li>&nbsp;&nbsp;&nbsp; </li>
<li><a href="Default.aspx">HOME</a></li>
<li><a href="chat.html">CHAT</a></li>
<li><a href="LOG_IN_FIRST.aspx">PROFILE</a></li>
<li><a href="POST_PAGE.aspx">UPLOADS</a></li>
</ul>
<br />
</nav>
    </div>
        <br />
        <br />
        <br />
        <div class="lef">
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" style="margin-top: 0px" Text="UPLOAD" Width="81px" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" style="font-family:Arial,sans-serif,'Times New Roman'" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="592px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <FooterStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:TemplateField>
                <asp:BoundField DataField="Size" HeaderText="Size( byte)" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Type" HeaderText="Type" />
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
        <br />
       

         </div>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             <asp:Button ID="Button2" runat="server" Height="25px" OnClick="Button2_Click" Text="LOG OUT" Width="97px" />
         </p>
       

    </form>
</body>
</html>
