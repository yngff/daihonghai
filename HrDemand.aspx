<%@ page language="C#" autoeventwireup="true" inherits="HrDemand, www_deploy" %>

<%@ Register Src="include/NewsClass.ascx" TagName="NewsClass" TagPrefix="uc5" %>

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
                   <td width="163" class="sidebar_font_01">新闻动态</td>
                 </tr>
               </table>
                 <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
                   <tr>
                     <td height="1" class="sidebar1"></td>
                   </tr>
                 </table>
               <br />
                 <uc5:NewsClass id="NewsClass1" runat="server">
                 </uc5:NewsClass><br /></td>
           </tr>
         </table>
           <br />
           <uc4:contact ID="Contact1" runat="server" />
         </td>
         <td width="633" height="40" valign="top"><table width="200" height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td width="170"><a href=Default.aspx>首页</a> &gt; 人才招聘<a href="News.aspx"></a></td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top">
            <table width="566" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td colspan="2" align="center">
                      <asp:DataList ID="dlHr" runat="server" Width="90%">
                      <ItemTemplate>
                          <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
	                        <tr style="line-height:24px;">
		                        <td align="right" bgcolor="#FFFFFF">发布时间：</td>
		                        <td colspan="3" align="left" bgcolor="#FFFFFF"><%# DataBinder.Eval(Container.DataItem, "HrDate","{0:yyyy-MM-dd}")%>&nbsp;&nbsp;&nbsp;&nbsp;<a href="addHrAcc.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><b><font color="red">点击应聘此职位</font></b></a></td>
	                        </tr>
	                        <tr style="line-height:24px;">
		                        <td width="14%" align="right" bgcolor="#FFFFFF">招聘职位：</td>
		                        <td width="33%" align="left" bgcolor="#FFFFFF"><%# DataBinder.Eval(Container.DataItem, "HrName")%></td>
		                        <td width="14%" align="right" bgcolor="#FFFFFF">招聘人数：</td>
		                        <td width="39%" align="left" bgcolor="#FFFFFF"><%# DataBinder.Eval(Container.DataItem, "HrRequireNum")%></td>
	                        </tr>
	                        <tr style="line-height:24px;">
		                        <td align="right" bgcolor="#FFFFFF">工资待遇：</td>
		                        <td align="left" bgcolor="#FFFFFF"><%# DataBinder.Eval(Container.DataItem, "HrSalary")%></td>
		                        <td align="right" bgcolor="#FFFFFF">有效期限：</td>
		                        <td align="left" bgcolor="#FFFFFF"><%# DataBinder.Eval(Container.DataItem, "HrValidDate")%></td>
	                        </tr>
	                        <tr style="line-height:24px;">
		                        <td align="right" bgcolor="#FFFFFF">工作地点：</td>
		                        <td colspan="3" align="left" bgcolor="#FFFFFF"><%# DataBinder.Eval(Container.DataItem, "HrAddress")%></td>
	                        </tr>
	                        <tr style="line-height:24px;">
		                        <td align="right" bgcolor="#FFFFFF">招聘要求：</td>
		                        <td colspan="3" align="left" bgcolor="#FFFFFF"><%# DataBinder.Eval(Container.DataItem, "HrDetail")%></td>
	                        </tr>
                         </table>
                         <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	                        <tr height="20">
		                        <td></td>
	                        </tr>
	                     </table>
                      </ItemTemplate>
                      </asp:DataList></td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFFFFF" align="right" style="width: 69%">
                    <asp:label id="lblPage" Runat="server"></asp:label></td>
                    <td valign="top" bgcolor="#FFFFFF" align="left"><webdiyer:aspnetpager id="Page1" runat="server" PageSize="3" AlwaysShow="True" OnPageChanged="Page1_PageChanged" NumericButtonTextFormatString="[{0}]"></webdiyer:aspnetpager></td>
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
