<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOG_IN_FIRST.aspx.cs" Inherits="Project_WebDevelopement.LOG_IN_FIRST" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style1/log_in_first.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
          <header>
<h1>GROUP OF CSE12</h1>
</header>
      

<nav>
<ul>
<li><a href="Default.aspx">HOME</a></li>
<li><a href="chat.html" target="_blank">CHAT</a></li>
<li><a href="Registration.aspx">REGISTER</a></li>
<li> <a href="POST_PAGE.aspx">UPLOADS</a></li>
    
</ul>

</nav>
       <div class="pro_pic">
            <div style="width: 396px">
        <asp:Image ID="Image2" Width="398px" Height="258px" runat="server" style="margin-left: 0px; margin-top: 0px;" /><br/>
        &nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
        <asp:Label runat="server" ID="imgformatLabel" ></asp:Label>
                <br />
        <asp:Button runat="server" ID="SetPro" Text="setProfile" OnClick="SetProfile" Height="37px" Width="94px"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="UpdateImg" runat="server" Text="UpdateProfile" OnClick="UpdateProfile" Height="33px" Width="118px"  />
    </div>
<div class="p_link">
    <br />
    <br />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pass_change.aspx">Password Change</asp:HyperLink>
                    <br />
    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/persona_info.aspx">Personal Information</asp:HyperLink>
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="LOG OUT" Width="113px" />
    <br />
        </div>
  </div>

<div style="float:left;width:416px;">        
        <asp:TextBox ID="TextBox1" runat="server" Height="525px" ReadOnly="True" TextMode="MultiLine" Width="409px" Font-Names="Maiandra GD" Font-Size="Larger" BorderStyle="Solid" ForeColor="Black"></asp:TextBox>
        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="245px">
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="62px" Width="444px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Send" style="margin-left: 0px" Height="30px" Width="80px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        </div>
   
    
    <aside>

<div class="n_links">
        <h1>Necessary Links</h1>
         <asp:HyperLink ID="HyperLink11" NavigateUrl="http://cse.kuet.ac.bd/" Target="_blank" runat="server" class="link">Official Website</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink12" NavigateUrl="http://www.shafaetsplanet.com/planetcoding/" Target="_blank" runat="server" class="link" >Shafayet er Blog</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink13" NavigateUrl="http://www.w3schools.com/" Target="_blank" runat="server" class="link" >Programming Tutorial</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink14" NavigateUrl="http://uva.onlinejudge.org/" Target="_blank" runat="server" class="link" >UVA WEBSITE</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink15" NavigateUrl="http://www.codeproject.com/" Target="_blank" runat="server" class="link" >Code Project</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink16" NavigateUrl="http://stackoverflow.com/" Target="_blank" runat="server" class="link" >Stack Overflow</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink17" NavigateUrl="http://community.topcoder.com/tc?module=Static&d1=tutorials&d2=alg_index" Target="_blank" runat="server" class="link" >Algorithm Tutorial</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink18" NavigateUrl="http://codeforces.com/" Target="_blank" runat="server" class="link" >Code Forces</asp:HyperLink><br />


        <asp:HyperLink ID="HyperLink35" NavigateUrl="~/Data/UVA problem list.pdf" Target="_blank" runat="server" class="link"> UVA problem list</asp:HyperLink>
</div><div style="width:436px; height:613px;">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            
 </asp:ToolkitScriptManager>
        <br />
    &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="403px" Width="347px" />
        <br />
        <br />

    <asp:SlideShowExtender ID="SlideShowExtender1" runat="server" AutoPlay="True" SlideShowServiceMethod="GetSlides" TargetControlID="Image1" UseContextKey="True"></asp:SlideShowExtender>
         </div>

        </aside>
    </form>
    <footer>

<p>all copy rights goes to nabil sarwar rahat&nbsp;&nbsp; </p>
       <br />
    <p>&nbsp;</p>
</footer>
</body>
</html>
