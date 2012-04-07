<%@ page language="C#" autoeventwireup="true" inherits="admin_YX_SystemWeb, www_deploy" %>
<%@ Register Src="Admin_Buttom.ascx" TagName="Admin_Buttom" TagPrefix="uc2" %>
<%@ Register Src="AdminTop.ascx" TagName="AdminTop" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
       <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;	
	background-color:#6591BE;
}
.STYLE1 {
	font-size: 12px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
<link rel="stylesheet" href="CSS.css" type="text/css" />

</head>

<body>
    <form id="form1" runat="server">
    <div>
    <uc1:AdminTop ID="AdminTop1" runat="server" />
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="center" background="images/YX_Bg.jpg">
                    <span class="STYLE1">网站系统信息</span></td>
            </tr>
        </table>
        <table width="98%" border="1" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td  height="25" align="center" bgcolor="#3270C5" ><span class="F">设置名称</span></td>
          <td align="center" bgcolor="#3270C5" style="width: 444px" ><span class="F">基本参数设置</span></td>
          <td  align="center" bgcolor="#3270C5"><span class="F">设置说明</span></td>
        </tr>
        <tr>
          <td  align="center" bgcolor="#F6F6F6">网站名称：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="WebName" runat="server"></asp:TextBox><span  style="color:red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="该字段为必填字段" Display="Dynamic" SetFocusOnError="True" ControlToValidate="WebName"></asp:RequiredFieldValidator></td>
          <td align="center" bgcolor="#F6F6F6" >用于显示在页面标题的信息</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">网站关键字：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="WebKey" runat="server" MaxLength="2147483647" Width="312px"></asp:TextBox></td>
          <td align="center" bgcolor="#F6F6F6" >网站关键字</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">网站描述：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="WebEx" runat="server" MaxLength="2147483647" Width="312px"></asp:TextBox></td>
          <td align="center" bgcolor="#F6F6F6" >网站描述</td>
        </tr> 
        <tr>
          <td align="center" bgcolor="#F6F6F6">联系电话：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="webtel" runat="server" MaxLength="2147483647" Width="312px"></asp:TextBox></td>
          <td align="center" bgcolor="#F6F6F6" >联系电话</td>
        </tr> 
        <tr>
          <td align="center" bgcolor="#F6F6F6">网站email：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="webemail" runat="server" MaxLength="2147483647" Width="312px"></asp:TextBox></td>
          <td align="center" bgcolor="#F6F6F6" >网站email</td>
        </tr> 
        <tr>
          <td align="center" bgcolor="#F6F6F6">&nbsp;</td>
          <td height="25" align="center" bgcolor="#F6F6F6" style="width: 444px" > 
          <asp:Button ID="Button1" runat="server" Text="提交系统信息" Width="124px" OnClick="Button1_Click" /></td>
          <td align="center" bgcolor="#F6F6F6" >&nbsp;</td>
        </tr>
       </table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>
