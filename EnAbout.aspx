<%@ page language="C#" autoeventwireup="true" inherits="EnAbout, www_deploy" %>
<%@ Register Src="include/login.ascx" TagName="login" TagPrefix="uc3" %>
<%@ Register Src="include/contact.ascx" TagName="contact" TagPrefix="uc4" %>

<%@ Register Src="include/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="include/bottom.ascx" TagName="bottom" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title><%=Application["site_title"]%></title>
    <meta name="keywords" content="<%=Application["site_keyword"]%>" />
    <meta name="description"  content="<%=Application["miaoshu"]%>" />
    <meta name="searchtitle"  content="<%=Application["site_title"]%>" />
    <link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:top ID="Top1" runat="server" />
    <table width="983" height="34" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td class="header_bj">&nbsp;</td>
       </tr>
    </table>
    <table width="983" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
     <td height="328" valign="top" bgcolor="#FFFFFF"><table width="865" height="637" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td width="232" rowspan="2" valign="top"><table width="222" border="0" cellpadding="0" cellspacing="1" bordercolor="#e7e7e7" bgcolor="#e7e7e7">
           <tr>
             <td valign="top" bgcolor="#f8f8f8"><br />
               <table width="191" border="0" align="center" cellpadding="0" cellspacing="0">
                 <tr>
                   <td width="28" align="center" class="sidebar_font_01"><img src="images/index1_01.gif" width="3" height="16" /></td>
                   <td width="163" class="sidebar_font_01">
                       About</td>
                 </tr>
               </table>
                 <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
                   <tr>
                     <td height="1" class="sidebar1"></td>
                   </tr>
                 </table>
               <br />
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="EnAbout.aspx?id=1">Group Introduction</a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
                   
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="EnAbout.aspx?id=2">Address of Chairman</a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
                   
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="EnAbout.aspx?id=3">Company Culture</a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
                   
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="EnAbout.aspx?id=5">Company Honor</a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
                   
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="EnAbout.aspx?id=6">Our Great Event</a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
                   
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="EnAbout.aspx?id=9">Contact us</a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
               <%--<asp:Repeater runat="server" ID="rtAbout">
                   <ItemTemplate>
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="EnAbout.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "EnTitle")%></a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
                   </ItemTemplate>
               </asp:Repeater>    --%>           
               <br /></td>
           </tr>
         </table>
           <br />
           <uc4:contact ID="Contact1" runat="server" />
         </td>
         <td width="633" height="40" valign="top"><table width="400" height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td width="370"><a href="Default.aspx">首页</a> &gt; <a href="EnAbout.aspx">About</a>  &gt; <asp:Label runat="server" ID="Title"></asp:Label></td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top"><table width="631" height="566" border="0" cellpadding="0" cellspacing="1" bgcolor="#e7e7e7">
           <tr>
             <td valign="top" bgcolor="#FFFFFF" class="container_bj">
               <br />
               <br />
               <table width="592" height="195" border="0" align="center" cellpadding="0" cellspacing="0" class="sidebar_font_04" style="table-layout: fixed;word-wrap:break-word;">
                 <tr>
                   <td valign="top"><div style="word-wrap:break-word;"><asp:Label runat="server" ID="content"></asp:Label></div></td>
                 </tr>
               </table></td>
           </tr>
         </table></td>
       </tr>
     </table></td>
    </tr>
    </table>
    <uc2:bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>

