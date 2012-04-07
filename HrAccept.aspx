<%@ page language="C#" autoeventwireup="true" inherits="HrAccept, www_deploy" %>

<%@ Register Src="include/NewsClass.ascx" TagName="NewsClass" TagPrefix="uc5" %>

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
         <td height="328" valign="top" bgcolor="#FFFFFF"><table width="865" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
             <td width="232" rowspan="2" valign="top"><table width="222" border="0" cellpadding="0" cellspacing="1" bordercolor="#e7e7e7" bgcolor="#e7e7e7">
               <tr>
                 <td width="239" valign="top" bgcolor="#f8f8f8"><br />
                   <table width="191" border="0" align="center" cellpadding="0" cellspacing="0">
                     <tr>
                       <td width="28" align="center" class="sidebar_font_01"><img src="images/index1_01.gif" width="3" height="16" /></td>
                       <td width="163" class="sidebar_font_01">新闻动态</td>
                     </tr>
                   </table>
                     <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
                       <tr>
                         <td height="1" class="sidebar1"></td>
                       </tr>
                     </table>
                   <br />
                   <uc5:NewsClass ID="NewsClass1" runat="server" />
                   <br /></td>
               </tr>
             </table>
               <table width="200" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td height="9"></td>
               </tr>
             </table>
               <table width="200" border="0" cellspacing="0" cellpadding="0">
                 <tr>
                   <td height="9"></td>
                 </tr>
               </table>
               <uc4:contact ID="Contact1" runat="server" />
             </td>
             <td width="633" valign="top"><table width="200" height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td width="170"><a href="/">首页</a> &gt; 人才招聘</td>
           </tr>
         </table></td>
           </tr>
           <tr>
             <td valign="top" height="500">
                <table width="566" align="center" border="0" cellpadding="0" cellspacing="0" style="line-height:24px;">
	                <tr>
		                <td height="30">
			                <div align="center">
                                &nbsp;<asp:Button ID="Button2" runat="server" Text="提交简历" OnClick="Button2_Click" />
                                <input id="Button1" type="button" value="返回" onclick="history.go(-1);" /></div>				</td>
	                </tr>
                </table>
             </td>
           </tr>
         </table></td>
        </tr>
        </table>
        <uc2:bottom ID="Bottom1" runat="server" /> 
        
    </form>
</body>
</html>
