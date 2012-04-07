<%@ page language="C#" autoeventwireup="true" inherits="admin_Ku_Add, www_deploy" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<%@ Register Src="AdminTop.ascx" TagName="AdminTop" TagPrefix="uc1" %>
<%@ Register Src="Admin_Buttom.ascx" TagName="Admin_Buttom" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
        <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 50px;
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
     <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="center" background="images/YX_Bg.jpg">
                    <span class="STYLE1">添 加 子 公 司</span></td>
            </tr>
        </table>

        <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be" cellpadding="0" cellspacing="0" width="88%">
			<tr>
				<td height="20" colspan="2" bgcolor="#ecf5ff">
				</td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" align="right"><FONT face="宋体">公司名称：</FONT></td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 24px" align="left">
					<asp:TextBox id="k_title" runat="server" Width="288px"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="k_title"></asp:RequiredFieldValidator></td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" align="right"><FONT face="宋体">公司网站：</FONT></td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 24px" align="left">
					<asp:TextBox id="k_url" runat="server" Width="266px">http://</asp:TextBox></td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" align="right"><FONT face="宋体">营业范围：</FONT></td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 24px" align="left">
					<asp:TextBox id="k_fanwei" runat="server" Width="449px"></asp:TextBox></td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" align="right"><FONT face="宋体">公司地址：</FONT></td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 24px" align="left">
                    <asp:TextBox ID="k_address" runat="server" Width="447px"></asp:TextBox></td>
			</tr>									
			<tr>
				<td bgcolor="#ecf5ff" align="right"><FONT face="宋体">公司图片：</FONT>
				</td>
				<td bgcolor="#ecf5ff" style="height: 24px" align="left"><input id="file2" type="file" size="30" name="file2" runat="server">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="file2"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" align="right" width=20%><FONT face="宋体">公司介绍：</FONT></td>
				<td bgcolor="#ecf5ff" align="left"><fckeditorv2:FCKeditor id="k_content" runat="server" Width="100%" BasePath="../FCKeditor/" Height="300px"></fckeditorv2:FCKeditor></td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="30" colspan="2">
					<div align="center">&nbsp;&nbsp;&nbsp;
						<asp:Button id="btnEdit" runat="server" Text="添加" onclick="btnEdit_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
                        <input id="Button1" type="button" value="取消" onclick="history.go(-1);"/></div>
				</td>
			</tr>
        </table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>
