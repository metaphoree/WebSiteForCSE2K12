<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project_WebDevelopement.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="style1/home.css" rel="stylesheet" type="text/css" />
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
    <li><a href="LOG_IN_FIRST.aspx">PROFILE</a></li>
</ul>

</nav>
<div class="banner">
        <div class="cl_ban_1">
            <div style="margin:9px">
            <h1>Sundarbon tour</h1>
            <h2>
                Sundarban tour held at least 1 month ago by cse depart ment some memoriable moment 
                of the tour.We seen Hiron point ,Alorkol and various other spots . 

                </h2></div>
        </div>
        <div class="cl_ban">
    <asp:Image ID="Image1" runat="server" Height="351px" Width="614px" style="margin-bottom: 0px" />
    <asp:SlideShowExtender ID="Image1_SlideShowExtender" runat="server" AutoPlay="True" Enabled="True" SlideShowServiceMethod="GetSlides" SlideShowServicePath="" TargetControlID="Image1" UseContextKey="True" Loop="True" SlideShowAnimationType="SlideDown">
        
 </asp:SlideShowExtender></div>


 <div class="cl_ban_2">
    

                        <marquee onmouseover="javascript:this.stop();" onmouseout="javascript:this.start();" scrolldelay="6" behavior="scroll" direction="up" scrollamount="4" style="margin:6px;width:273px; height:287px;">
                <h1>Exam Routine </h1>
                       <h2>Computer Architecture &nbsp 27/3/2015</h2>
                       <h2>EEE &nbsp&nbsp&nbsp 1/4/2015</h2>
                             <h2>Mathmatics &nbsp&nbsp 6/3/2015</h2>
                            <h2>Computer Algorithm &nbsp&nbsp 11/3/2015</h2>
                            <h2>Numerical Method &nbsp&nbsp 16/3/2015.</h2>  
        <h2>প্রোজেক্ট সাবমিশানঃ ১৮/০৩/২০১৫
A গ্রুপ ১০.১৫-১১.৩০ থেকে 
B গ্রুপ ১১.৩০ থেকে..</h2>
<h2>Class Party:16 march 4.30pm</h2></marquee>


</div>
    
    
<section>
<div class="class_1">


<h1>WELCOME</h1>
<p>
This is the official group of CSE 2K12.You can find all things you need 
here .You wii find all the group contents 
here.You can chat here with friends .
All time shcedule of ct,assignment,lab,class will be given here.
  </p>

</div>
<div class="class_2">
<h1>NOTICE BOARD</h1><p class="link">

    <asp:HyperLink ID="NOTICE" NavigateUrl="~/Data/fees.pdf" Target="_blank" runat="server">1.Registration Fees</asp:HyperLink><br />



    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Data/Backlog.pdf" Target="_blank" runat="server"> 2.Backlog Course</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Data/BUS SCHEDULE.pdf" Target="_blank" runat="server"> 3.Bus Schedule</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink27" NavigateUrl="http://portal.kuet.ac.bd/iict/frmDetails.aspx?qs=marquee,7" Target="_blank" runat="server"> 4.Graphics Design Course</asp:HyperLink>
     <asp:HyperLink ID="HyperLink29" NavigateUrl="~/Data/lekha for bikash magazine.pdf" Target="_blank" runat="server"> <br />5.Writings for Bikash Magazine</asp:HyperLink><br />
     <asp:HyperLink ID="HyperLink30" NavigateUrl="~/Data/log_back.pdf" Target="_blank" runat="server"> 6.Backlog Time And Corresponding Teacher</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink31" NavigateUrl="~/Data/deal calender.pdf" Target="_blank" runat="server">7.Design Of Calender Contest </asp:HyperLink><br />
   
</p>
</div>
<div class="class_3">
<h1>EVENTS</h1>
    <p class="link">
         <asp:HyperLink ID="HyperLink7" NavigateUrl="http://www.wastesafe.info/" Target="_blank" runat="server" >1.InterNational Waste safe Conference</asp:HyperLink><br />
         <asp:HyperLink ID="HyperLink19" NavigateUrl="http://www.kuet.ac.bd/culturalfiesta2014/" Target="_blank" runat="server" >2.Inter University Cultural Fiesta</asp:HyperLink><br />   
         <asp:HyperLink ID="HyperLink20" NavigateUrl="http://www.kuet.ac.bd/index.php/welcome/shownews/291" Target="_blank" runat="server" >3.Success In The Inter University Cultural Fiesta</asp:HyperLink><br /> 
         <asp:HyperLink ID="HyperLink21" NavigateUrl="https://www.facebook.com/events/390626434450441" Target="_blank" runat="server" >4.Innovative Idea Competition</asp:HyperLink><br /> 
         <asp:HyperLink ID="HyperLink28" NavigateUrl=" http://www2.kuet.ac.bd/JES/" Target="_blank" runat="server" >5.A Journal on Engineering Science</asp:HyperLink><br /> 

       
    </p>
</div>
<div class="class_4">
<h1>CLASS TEST</h1>
    <p  class="extra">
           <pre class="extra">
 Subject                Time                 Syllabus
1.Numerical          12 March,12.20    All theory
2.Numerical quiz     12 March,12.20    Lab Work
3.Algo lab test      10 March          Lab work
4.Algo quiz          10 March          Lab Work           
                </pre>
   </p>
    <p  class="link">
    <asp:HyperLink ID="HyperLink32" NavigateUrl="~/Data/com arc.pdf" Target="_blank" runat="server">1.CT Marks-Comp Architecture</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink33" NavigateUrl="~/Data/ct-eee.pdf" Target="_blank" runat="server">2.CT Marks-EEE </asp:HyperLink><br />
          <asp:HyperLink ID="HyperLink34" NavigateUrl="~/Data/ct-memory system.pdf" Target="_blank" runat="server">3.CT Marks-Memory System </asp:HyperLink><br />  
    
    </p>
</div>
<div class="class_5">
<h1>ASSIGNMENT</h1>
<h3>
1.Rocky Sir-Assignment on Multiplication<br />
 Last Date:20 March<br /><br />
2.AK Ajad sir-Assignment on Stat<br />
Last Date:19 March<br /><br />
3.Tauhid sir-Assignment on Vector Integration<br /><br />
Last Date:18 March<br /><br />

    </h3>
</div>
<div class="class_6">
<h1>NEWS</h1>
    <p >
        1.Honourable teacher Saifuddin Mahmud is elected as the President of the cse assciation.
        <br />
        2.Central Viva will be held on 11 March ,2015.
        <br />
        3.PL will start:17 March.
        <br />
        4.Exam Date:27 March ,2015.
          
      
        </p>
</div>
<div class="class_7">
<h1>WORKSHOP</h1>
    <p class="link">
        <asp:HyperLink ID="HyperLink10" NavigateUrl="https://www.facebook.com/groups/sgipc.kuet/" Target="_blank" runat="server" >1.SGIPC WORK SHOP</asp:HyperLink><br />
         <asp:HyperLink ID="HyperLink22" NavigateUrl="https://www.facebook.com/groups/hack.kuet/" Target="_blank" runat="server" >2.HACK WORK SHOP -Every Friday and Saturday</asp:HyperLink><br /> 
         <asp:HyperLink ID="HyperLink23" NavigateUrl="http://www.kuet.ac.bd/ieee/" Target="_blank" runat="server" >3.IEEE student branch</asp:HyperLink><br /> 
      <span class="extra">  4.A Webiner was taken by Honourable Bishnu sir a week 
  ago on Web Developement.</span>   </p>


</div>
<div class="class_8">
<h1>EXTRA</h1>
    <p class="link">
           <asp:HyperLink ID="HyperLink3" NavigateUrl="http://library.kuet.ac.bd/" Target="_blank" runat="server">1.Central Library</asp:HyperLink><br />

         <asp:HyperLink ID="HyperLink4" NavigateUrl="http://www2.kuet.ac.bd/CCC/" Target="_blank" runat="server" >2.Computer Center</asp:HyperLink><br />
 <asp:HyperLink ID="HyperLink5" NavigateUrl="http://www.kuet.ac.bd/webportal/" Target="_blank" runat="server" >3.Kuet AutoMation</asp:HyperLink><br />
 <asp:HyperLink ID="HyperLink6" NavigateUrl="http://www.emleaders.eu/index.asp" Target="_blank" runat="server">4.ErasMus Mundas Scholarship</asp:HyperLink><br />

   <asp:HyperLink ID="HyperLink8" NavigateUrl="~/Data/campus-map.pdf" Target="_blank" runat="server" >5.Campus Map</asp:HyperLink><br />
          <asp:HyperLink ID="HyperLink9" NavigateUrl="http://portal.kuet.ac.bd/student/" Target="_blank" runat="server" style="text-decoration:none">6.Hall Automation</asp:HyperLink><br />

    </p>
</div>

</section>

<aside>

<div class="aside_log_in">
<h1 class="login_header">&nbsp;LOG IN</h1>
    <h4>&nbsp;USER ROLL:&nbsp;
         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        
        &nbsp;
        
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Height="16px" style="margin-top: 3px" Width="152px"></asp:TextBox>
        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" MinimumPrefixLength="1" ServiceMethod="GetCompletionList" TargetControlID="TextBox1" UseContextKey="True"></asp:AutoCompleteExtender>
    
    
    </h4>
    <h4>&nbsp;PASSWORD:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="150px" TextMode="Password"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="LOG IN" Width="113px" style="margin-top: 3px" />
    </h4>
   
    <p>
        <asp:CheckBox ID="CheckBox1" runat="server" />
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="REMIND   ME"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    
 </div>

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


        <asp:HyperLink ID="HyperLink35" NavigateUrl="~/Data/UVA problem list.pdf" Target="_blank" runat="server" class="link"> UVA problem list</asp:HyperLink><br />
        <h2>ANDROID TUTORIAL</h2>

        <asp:HyperLink ID="HyperLink36" NavigateUrl="https://developer.android.com/training/index.html" Target="_blank" runat="server" class="link"> Build Youre First App</asp:HyperLink><br />

        
        <asp:HyperLink ID="HyperLink37" NavigateUrl="http://www.tutorialspoint.com/android/" Target="_blank" runat="server" class="link"> Android-Tutorial</asp:HyperLink><br />

        
        <asp:HyperLink ID="HyperLink38" NavigateUrl="http://www.vogella.com/tutorials/Android/article.html" Target="_blank" runat="server" class="link">Android Tutorial By Vogella.com</asp:HyperLink><br />


        <h2>JAVA TUTORIAL</h2>

  <asp:HyperLink ID="HyperLink39" NavigateUrl="http://www.javatpoint.com/java-tutorial" Target="_blank" runat="server" class="link">Java Tutorial-JavaPoint.com</asp:HyperLink><br />
          <asp:HyperLink ID="HyperLink40" NavigateUrl="http://javabeginnerstutorial.com/core-java/" Target="_blank" runat="server" class="link">Java For Beginners</asp:HyperLink><br />
          <asp:HyperLink ID="HyperLink41" NavigateUrl="http://www.java2s.com/Tutorial/Java/CatalogJava.htm" Target="_blank" runat="server" class="link">Java Advanced</asp:HyperLink><br />
          <asp:HyperLink ID="HyperLink42" NavigateUrl="http://www.tutorialspoint.com/java/" Target="_blank" runat="server" class="link">Learn Java Easily</asp:HyperLink><br />





        <h2>PYTHON</h2>
  <asp:HyperLink ID="HyperLink43" NavigateUrl="https://docs.python.org/2/tutorial/" Target="_blank" runat="server" class="link">Starting Python</asp:HyperLink><br />

      <asp:HyperLink ID="HyperLink44" NavigateUrl="http://www.tutorialspoint.com/python/" Target="_blank" runat="server" class="link">Python-tutorialspoint</asp:HyperLink><br />
  <asp:HyperLink ID="HyperLink45" NavigateUrl="http://www.sthurlow.com/python/" Target="_blank" runat="server" class="link">Python For Beginners</asp:HyperLink><br />
  <asp:HyperLink ID="HyperLink46" NavigateUrl="http://www.afterhoursprogramming.com/tutorial/Python/Overview/" Target="_blank" runat="server" class="link">Python Overview</asp:HyperLink><br />

        <h2>ORACLE</h2>

         <asp:HyperLink ID="HyperLink47" NavigateUrl="http://www.tutorialspoint.com/listtutorials/oracle/1" Target="_blank" runat="server" class="link">Starting Oracle</asp:HyperLink><br />
         <asp:HyperLink ID="HyperLink48" NavigateUrl="http://skillbuilders.com/Oracle/Oracle-Consulting-Training.cfm?category=oracle-database-training&tab=free-tutorials" Target="_blank" runat="server" class="link">Starting Datbase With Oracle</asp:HyperLink><br />
         <asp:HyperLink ID="HyperLink49" NavigateUrl="http://www.oracle-dba-online.com/" Target="_blank" runat="server" class="link">Database Tutorial</asp:HyperLink><br />














</div>

</aside>

<footer>

<p>all copy rights reserved to nabil sarwar rahat  </p>
      
</footer>
     

    </form>
</body>
</html>
