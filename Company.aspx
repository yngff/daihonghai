<%@ page language="C#" autoeventwireup="true" inherits="Company, www_deploy" %>

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
     <td height="328" valign="top" bgcolor="#FFFFFF"><table width="865" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td width="232" rowspan="2" valign="top"><table width="222" border="0" cellpadding="0" cellspacing="1" bordercolor="#e7e7e7" bgcolor="#e7e7e7">
           <tr>
             <td width="239" valign="top" bgcolor="#f8f8f8"><br />
               <table width="191" border="0" align="center" cellpadding="0" cellspacing="0">
                 <tr>
                   <td width="28" align="center" class="sidebar_font_01"><img src="images/index1_01.gif" width="3" height="16" /></td>
                   <td width="163" class="sidebar_font_01">
                       龙兴产业</td>
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
                           <td width="174" class="sidebar_font_03"><a href="ComDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "k_title")%></a> </td>
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
         <td width="633" height="40" valign="top"><table width="200" height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td width="170"><a href=Default.aspx>首页</a> &gt; <a href="Company.aspx">龙兴产业</a></td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top"><table width="631" height="566" border="0" cellpadding="0" cellspacing="1" bgcolor="#e7e7e7">
           <tr>
             <td valign="top" bgcolor="#FFFFFF" class="nav_pic"><div>
                 <ul id="zi">
                 <asp:DataList runat="server" ID="dlCom" Width="631" Height="566" RepeatColumns="2" RepeatDirection="Horizontal">
                       <ItemTemplate>
                            <table width="233" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="233" align="center"><img src="ComImg/<%# DataBinder.Eval(Container.DataItem, "k_picurl")%>" width="192" height="136" /></td>
                                </tr>
                                </table>
                                <br />
                                <table width="237" height="28" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                <td class="container_font_02" align="center"><a href="ComDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "k_title")%></a></td>
                                </tr>
                            </table>
                            <br />
                       </ItemTemplate>
                   </asp:DataList>
                 </ul>
             </div>
               <%--<table height="29" border="0" align="center" cellpadding="0" cellspacing="0" class="sidebar_font_03">
                 <tr>
                   <td><asp:label id="lblPage" Runat="server"></asp:label>&nbsp;</td>
                   <td><webdiyer:aspnetpager id="Page1" runat="server" PageSize="6" AlwaysShow="True" OnPageChanged="Page1_PageChanged" NumericButtonTextFormatString="[{0}]&nbsp;" PagingButtonSpacing="3px"></webdiyer:aspnetpager></td>
                 </tr>
               </table>--%></td>
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
