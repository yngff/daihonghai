<%@ page language="C#" autoeventwireup="true" inherits="News, www_deploy" %>

<%@ Register Src="include/login.ascx" TagName="login" TagPrefix="uc3" %>
<%@ Register Src="include/contact.ascx" TagName="contact" TagPrefix="uc4" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
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
     <td valign="top" bgcolor="#FFFFFF"><table width="865" border="0" align="center" cellpadding="0" cellspacing="0">
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
               <asp:Repeater runat="server" ID="rtClass">
                   <ItemTemplate>
                       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
                           <td width="174" class="sidebar_font_03"><a href="News.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "classname")%></a> </td>
                         </tr>
                       </table>
                       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
                         <tr>
                           <td class="nav1"></td>
                         </tr>
                       </table>
                   </ItemTemplate>
               </asp:Repeater>
               <br /></td>
           </tr>
         </table>
           <br />
           <uc4:contact ID="Contact1" runat="server" />
         </td>
         <td width="633" height="40" valign="top"><table height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td><a href="Default.aspx">首页</a> &gt; <a href="News.aspx">新闻动态</a>&nbsp;&gt;&nbsp;<asp:Label runat="server" ID="classname"></asp:Label>
             </td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top"><table width="631" height="450" border="0" cellpadding="0" cellspacing="1" bgcolor="#e7e7e7">
           <tr>
             <td valign="top" bgcolor="#FFFFFF" class="nav_pic"><div style="display:<%=is_list %>;">
                 <ul id="zi">
                 <asp:Repeater runat="server" ID="rtNews">
                       <ItemTemplate>
                           <li><a href="NewsDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "title")%><%#(DataBinder.Eval(Container.DataItem, "is_top").ToString() == "False") ? "" : "<img src='images/RH_05.gif' border='0'>"%></a></li>
                       </ItemTemplate>
                   </asp:Repeater>
                 </ul>
             </div>
               <table height="29" border="0" align="center" cellpadding="0" cellspacing="0" class="sidebar_font_03" style="display:<%=is_list %>;">
                 <tr>
                   <td><asp:label id="lblPage" Runat="server"></asp:label>&nbsp;</td>
                   <td><webdiyer:aspnetpager id="Page1" runat="server" AlwaysShow="True" OnPageChanged="Page1_PageChanged" NumericButtonTextFormatString=" {0} " PagingButtonSpacing="3px" UrlPaging="True" PageSize="15"></webdiyer:aspnetpager></td>
                 </tr>
               </table>
                 <table width="620" height="216" border="0" align="center" cellpadding="0" cellspacing="0" style="display:<%=is_show %>">
                   <tr>
                     <td width="26" height="216" valign="top"><img src="images/index1_09.jpg" width="26" height="216" /></td>
                     <td width="592" valign="top"><div>
                         <ul id="zi1">
                         <asp:Repeater runat="server" ID="rtNB">
                           <ItemTemplate>
                            <li><a href="NewsDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "title")%><%#(DataBinder.Eval(Container.DataItem, "is_top").ToString() == "False") ? "" : "<img src='images/RH_05.gif' border='0'>"%>&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem,"updatetime","{0:yyyy-MM-dd}") %></a></li>                       
                           </ItemTemplate>
                         </asp:Repeater>
                         </ul>
                     </div></td>
                   </tr>
                 </table>
                 <table width="620" border="0" align="center" cellpadding="0" cellspacing="0" style="display:<%=is_show %>">
                   <tr>
                     <td height="1" class="sidebar1"></td>
                   </tr>
                 </table>
                 <table width="620" height="216" border="0" align="center" cellpadding="0" cellspacing="0" style="display:<%=is_show %>">
                   <tr>
                     <td width="26" height="216" valign="top"><img src="images/index1_08.jpg" width="26" height="216" /></td>
                     <td width="592" valign="top"><div>
                         <ul id="zi1">
                         <asp:Repeater runat="server" ID="rtWB">
                           <ItemTemplate>
                            <li><a href="NewsDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "title")%><%#(DataBinder.Eval(Container.DataItem, "is_top").ToString() == "False") ? "" : "<img src='images/RH_05.gif' border='0'>"%>&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem,"updatetime","{0:yyyy-MM-dd}") %></a></li>                       
                           </ItemTemplate>
                         </asp:Repeater>
                         </ul>
                     </div></td>
                   </tr>
                 </table>
                 <table width="620" border="0" align="center" cellpadding="0" cellspacing="0" style="display:<%=is_show %>">
                   <tr>
                     <td height="1" class="sidebar1"></td>
                   </tr>
                 </table>
                 
               </td>
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
