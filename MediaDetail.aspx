<%@ page language="C#" autoeventwireup="true" inherits="MediaDetail, www_deploy" %>

<%@ Register Src="include/About.ascx" TagName="About" TagPrefix="uc5" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
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
         <td width="232" rowspan="2" valign="top">
         <uc5:About ID="About1" runat="server" />
           <br />
           <uc4:contact ID="Contact1" runat="server" />
         </td>
         <td width="633" height="40" valign="top"><table height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td><a href="Default.aspx">首页</a> &gt; <a href="About.aspx">个人网站</a> &gt; <a href="Media.aspx">媒体报道</a>&nbsp;
             </td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top"><table width="631" height="566" border="0" cellpadding="0" cellspacing="1" bgcolor="#e7e7e7">
           <tr>
             <td valign="top" bgcolor="#FFFFFF" class="container_bj"><br />
               <br />
               <table border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <td class="container_font_01"><asp:Label runat="server" ID="n_title"></asp:Label></td>
               </tr>
             </table>
               <table width="600" height="16" border="0" align="center" cellpadding="0" cellspacing="0">
                 <tr>
                   <td class="nav1">&nbsp;</td>
                 </tr>
               </table>
               <table border="0" align="center" cellpadding="0" cellspacing="0">
                 <tr>
                   <td class="column_font_03">
                       文章来源：<asp:Label runat="server" ID="n_author"></asp:Label>&nbsp;&nbsp;发布时间：<asp:Label runat="server" ID="n_updatetime"></asp:Label>&nbsp;&nbsp;点击次数：<asp:Label runat="server" ID="n_hits"></asp:Label> </td>
                 </tr>
               </table>
               <br />
               <br />
               <table width="592" height="195" border="0" align="center" cellpadding="0" cellspacing="0" class="sidebar_font_04">
                 <tr>
                   <td valign="top"><asp:Label runat="server" ID="n_content"></asp:Label></td>
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
