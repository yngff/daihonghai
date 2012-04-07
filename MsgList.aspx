<%@ page language="C#" autoeventwireup="true" inherits="MsgList, www_deploy" %>

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
           <br />
           <uc4:contact ID="Contact1" runat="server" />
         </td>
         <td width="633" valign="top"><table width="200" height="35" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <td width="30" align="center"><img src="images/index1_02.gif" width="4" height="5" /></td>
             <td width="170"><a href="/">首页</a> &gt; <a href="MsgList.aspx">留言板</a> &gt; 查看留言</td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top"><%--<table width="631" height="400" border="0" cellpadding="0" cellspacing="1" bgcolor="#e7e7e7">--%>
           <table width="631" height="400" border="0" align="center" cellpadding="0" cellspacing="0" class="in1_zt_huang">
                    <tr>
                      <td valign="top" align="center">
                        <table width="80%" >
                            <tr height="30">
						        <td colspan="2" align="center"><strong><a href="Message.aspx">发表留言</a></strong></TD>
					        </tr>
					        <tr>
						        <td align="center" colSpan="2" height="40" >
						           <asp:Repeater ID="rtCase" runat="server">
                                        <ItemTemplate>                                          
						                    <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" style="line-height:22px;">
									          <tr>
                                                <td width="15%" bgcolor="#FFFFFF">留 言 人：</td>
                                                <td width="52%" bgcolor="#FFFFFF" align="left">&nbsp;<%# DataBinder.Eval(Container.DataItem, "username")%></td>
                                                <td width="16%" bgcolor="#FFFFFF">留言时间：</td>
                                                <td width="17%" bgcolor="#FFFFFF" align="left">&nbsp;<%# DataBinder.Eval(Container.DataItem,"inputdate","{0:yyyy-MM-dd}") %></td>
                                              </tr>
                                              <tr>
                                                <td width="15%" bgcolor="#FFFFFF">留言标题：</td>
                                                <td colspan="3" bgcolor="#FFFFFF" align="left">&nbsp;<%# DataBinder.Eval(Container.DataItem, "MsgTitle")%></td>
                                              </tr>
                                              <tr>
                                                <td bgcolor="#FFFFFF">留言内容：</td>
                                                <td colspan="3" bgcolor="#FFFFFF" align="left">&nbsp;<%# DataBinder.Eval(Container.DataItem, "message")%></td>
                                              </tr>
                                              <tr>
                                                <td bgcolor="#FFFFFF">回复内容：</td>
                                                <td colspan="3" bgcolor="#FFFFFF" align="left">&nbsp;<%#(DataBinder.Eval(Container.DataItem, "remessage").ToString() == "") ? "暂无回复内容" : DataBinder.Eval(Container.DataItem, "remessage").ToString()%></td>
                                              </tr>                                            
                                          </table>
                                            <table><tr height="10"><td></td></tr>  </table>
                                        </ItemTemplate>
                                  </asp:Repeater>
							    </td>
					        </tr>
                        </table><webdiyer:aspnetpager id="Page1" runat="server" PageSize="3" AlwaysShow="True" OnPageChanged="Page1_PageChanged" NumericButtonTextFormatString=" {0} " PagingButtonSpacing="3px" UrlPaging="True"></webdiyer:aspnetpager>
                      </td>
                    </tr>
                  </table>
         <%--</table>--%></td>
       </tr>
     </table></td>
    </tr>
    </table>
    <uc2:bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>
