<%@ page language="C#" autoeventwireup="true" inherits="Culture, www_deploy" %>

<%@ Register Src="include/Cult.ascx" TagName="Cult" TagPrefix="uc5" %>

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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
         <td width="232" rowspan="2" valign="top"><uc5:Cult ID="Cult1" runat="server" />
           <br />
           <uc4:contact ID="Contact1" runat="server" />
         </td>
         <td width="633" height="40" valign="top"><table width="200" height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td width="170"><a href=Default.aspx>首页</a> &gt; 龙兴活动</td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top"><table width="631" height="566" border="0" cellpadding="0" cellspacing="1" bgcolor="#e7e7e7">
           <tr>
             <td valign="top" bgcolor="#FFFFFF" class="nav_pic"><table width="200" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td height="4"></td>
               </tr>
             </table>
             <div id="marqueediv6" style="width:623px;height:144px;overflow:hidden;">
             <table width="623" height="144" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <asp:Repeater runat="server" ID="rtPic">
                    <ItemTemplate>
                    <td width="146" align="center" bgcolor="#f4f4f4"><table border="0" cellspacing="0" cellpadding="5">
                       <tr>
                         <td bgcolor="#FFFFFF"><a href="<%# DataBinder.Eval(Container.DataItem, "link_url")%>" target="_blank"><img width="130" height="106" border="0" src="SYImg/<%# DataBinder.Eval(Container.DataItem, "pic_url").ToString()%>" /></a></td>
                       </tr>
                     </table></td>
                    </ItemTemplate>
                 </asp:Repeater>
               </tr>
             </table>
             </div>
            <script src="js/MSClass.js" type="text/javascript"></script>
            <script language="javascript">new Marquee("marqueediv6",2,1,623,144,20,0,0)</script>
             <table width="620" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <td class="sidebar1" style="height: 1px"></td>
               </tr>
             </table>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
             <table width="620" height="216" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <td width="26" height="216" valign="top"><img src="images/index1_05.jpg" width="26" height="216" /></td>
                 <td width="592" valign="top"><div>
                     <ul id="zi1">
                     <asp:Repeater runat="server" ID="rtNB">
                       <ItemTemplate>
                        <li><a href="CultureD.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "title")%>&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem,"updatetime","{0:yyyy-MM-dd}") %></a></li>                       
                       </ItemTemplate>
                     </asp:Repeater>
                     </ul>
                 </div>
                     <table width="250" height="44" border="0" align="right" cellpadding="0" cellspacing="0" class="sidebar_font_03">
                       <tr>
                         <td width="70"><asp:Label runat="server" ID="lblPage1"></asp:Label></td>
                         <td align="left"><webdiyer:aspnetpager id="Page1" runat="server" PageSize="8" AlwaysShow="True" OnPageChanged="Page1_PageChanged" NumericButtonTextFormatString=" {0} " PagingButtonSpacing="3px"></webdiyer:aspnetpager></td>
                       </tr>
                   </table></td>
               </tr>
             </table>
             <table width="620" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <td height="1" class="sidebar1"></td>
               </tr>
             </table>
             </ContentTemplate>
             </asp:UpdatePanel>
             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
             <ContentTemplate>
			 <table width="620" height="216" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <td width="26" height="216" valign="top"><img src="images/index1_06.jpg" width="26" height="216" /></td>
                 <td width="592" valign="top"><div>
                     <ul id="zi1">
                       <asp:Repeater runat="server" ID="rtWB">
                       <ItemTemplate>
                        <li><a href="CultureD.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "title")%>&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem,"updatetime","{0:yyyy-MM-dd}") %></a></li>                       
                       </ItemTemplate>
                     </asp:Repeater>
                     </ul>
                 </div>
                     <table width="250" height="44" border="0" align="right" cellpadding="0" cellspacing="0" class="sidebar_font_03">
                       <tr>
                         <td width="70"><asp:Label runat="server" ID="lblPage2"></asp:Label></td>
                         <td align="left"><webdiyer:aspnetpager id="Page2" runat="server" PageSize="8" AlwaysShow="True" OnPageChanged="Page2_PageChanged" NumericButtonTextFormatString=" {0} " PagingButtonSpacing="3px"></webdiyer:aspnetpager></td>
                       </tr>
                   </table></td>
               </tr>
             </table>  
             <table width="620" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <td class="sidebar1" style="height: 1px"></td>
               </tr>
             </table>
             </ContentTemplate>
             </asp:UpdatePanel>           
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
