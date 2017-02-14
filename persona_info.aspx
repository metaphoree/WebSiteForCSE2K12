<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="persona_info.aspx.cs" Inherits="Project_WebDevelopement.Downloads" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 83%;
        }
        .auto-style2 {
            height: 23px;
            width: 697px;
        }
        .auto-style3 {
            width: 240px;
        }
        .auto-style4 {
            height: 23px;
            width: 240px;
        }
        .auto-style5 {
            width: 240px;
            height: 45px;
        }
        .auto-style6 {
            height: 45px;
            width: 697px;
        }
        .auto-style7 {
            width: 697px;
        }
    </style>
    <link href="style1/person_info.css" rel="stylesheet" type="text/css" />
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
    <li><a href="persona_info.aspx">PROFILE</a></li>
    
</ul>

</nav>
        <div>
        
        <br />
        <br />
        <div class="table_1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><h2>Fathers Name</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>Mothers Name</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="315px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>Permanent Address</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>Present Address</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" Width="317px" Height="25px" Font-Names="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>College</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>Blood Group</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox6" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><h2>Hall</h2></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox7" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>Room No</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox8" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>Hobby</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox9" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2>Skilled In</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox10" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><h2>Email Adress</h2></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox11" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><h2 style="width: 206px">Favourite Teacher</h2></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox12" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><h2>Future Plan</h2></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox13" runat="server" Width="317px" Height="25px" Font-Size="25px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
            </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE" Height="34px" Width="116px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="28px" OnClick="Button2_Click" style="margin-left: 0px" Text="LOG OUT" Width="102px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            </div>
    </form>
</body>
</html>
