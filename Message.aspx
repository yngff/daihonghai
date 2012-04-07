<%@ page language="C#" autoeventwireup="true" inherits="Message, www_deploy" %>
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
             <td width="170"><a href="/">首页</a> &gt; <a href="MsgList.aspx">留言板</a> &gt; 发表留言</td>
           </tr>
         </table></td>
       </tr>
       <tr>
         <td valign="top"><table width="631" height="400" border="0" cellpadding="0" cellspacing="1" bgcolor="#e7e7e7">
           <tr>
             <td valign="middle" align="center" bgcolor="#FFFFFF">
             <table ><tr><td><a href="MsgList.aspx">查看留言</a></td></tr></table>
                <table border="0" cellpadding="0" cellspacing="1" bgcolor="#E4E4E4" style="margin-top:15px; width: 471px;">  
                    <tr>
                      <td width="76" align="right" valign="middle" bgcolor="#FFFFFF" class="fh"><font color="red">*</font><span class="zw">留&nbsp;言&nbsp;人：</span></td>
                      <td align="left" valign="middle" bgcolor="#FFFFFF">
                          <asp:TextBox ID="UName" runat="server" CssClass="input1" Width="98px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="UName"></asp:RequiredFieldValidator>
                      </td>
                    </tr>
                    <tr>
                      <td width="76" align="right" valign="middle" bgcolor="#FFFFFF" class="fh"><font color="red">*</font><span class="zw">电子邮件：</span></td>
                      <td align="left" valign="middle" bgcolor="#FFFFFF">
                          <asp:TextBox ID="email" runat="server" CssClass="input1" Width="173px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="email"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="格式有误"
                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                      <td width="76" align="right" valign="middle" bgcolor="#FFFFFF" class="fh"><font color="red">*</font><span class="zw">联系方式：</span></td>
                      <td colspan="3" align="left" valign="middle" bgcolor="#FFFFFF"><asp:TextBox ID="other" runat="server" CssClass="input1" Width="310px"></asp:TextBox></td>
                    </tr>
                    <tr>
                      <td width="76" align="right" valign="middle" bgcolor="#FFFFFF" class="fh"><font color="red">*</font><span class="zw">留言标题：</span></td>
                      <td colspan="3" align="left" valign="middle" bgcolor="#FFFFFF"><asp:TextBox ID="MsgTitle" runat="server" CssClass="input1" Width="310px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="MsgTitle"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                      <td width="76" height="90" align="center" valign="middle" bgcolor="#FFFFFF" class="fh"><font color="red">*</font><span class="zw">留言内容：</span></td>
                      <td colspan="3" align="left" valign="middle" bgcolor="#FFFFFF">
                          <asp:TextBox ID="txtMessage" runat="server" CssClass="input1" TextMode="MultiLine" Height="85px" Width="353px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="＊" ControlToValidate="txtMessage"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr align="center">
                      <td height="32" colspan="4" valign="middle" bgcolor="#FFFFFF">
                      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">发送留言</asp:LinkButton><a href="javascript:checksubmit();"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:form1.reset();">重填</a></td>
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
