<%@ page language="C#" autoeventwireup="true" inherits="admin_Hr_Up, www_deploy" %>
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
                    <span class="STYLE1">添 加 招 聘 信 息</span></td>
            </tr>
        </table>

        <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be" cellpadding="0" cellspacing="0" width="88%">
			<tr bgcolor="#ecf5ff">
				<td>
					<div align="center">
                        招聘职位：</div>
				</td>
				<td>
					<asp:TextBox id="HrName" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="HrName"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="22">
					<div align="center">
                        招聘人数：</div>
				</td>
				<td bgcolor="#ecf5ff">
					<asp:TextBox id="HrRequireNum" runat="server" Width="36px"></asp:TextBox>人
					<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="HrRequireNum"></asp:RequiredFieldValidator></td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="22">
					<div align="center">
                        工作地点：</div>
				</td>
				<td bgcolor="#ecf5ff">
					<asp:TextBox id="HrAddress" runat="server" Width="341px"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="HrAddress"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="22">
					<div align="center">
                        工资待遇：</div>
				</td>
				<td height="-1" bgcolor="#ecf5ff">
					<asp:TextBox id="HrSalary" runat="server" Width="102px"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="HrSalary"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="22">
					<div align="center">
                        有效期限：</div>
				</td>
				<td height="0" bgcolor="#ecf5ff">
					<asp:TextBox id="HrValidDate" runat="server" Width="53px"></asp:TextBox>天
					<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="HrValidDate"></asp:RequiredFieldValidator></td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="22">
					<div align="center">
                        招聘要求：</div>
				</td>
				<td height="10">
					<fckeditorv2:FCKeditor id="HrDetail" runat="server" Width="100%" BasePath="../FCKeditor/" Height="400px"></fckeditorv2:FCKeditor>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="25" colspan="2">
					<div align="center">
						<asp:Button id="btnAdd" runat="server" Text="修改" OnClick="btnAdd_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
						<INPUT type="button" value="返回" onclick="history.go(-1);">
					</div>
				</td>
			</tr>
		</table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>
