<%@ page language="C#" autoeventwireup="true" inherits="admin_Pic_Add, www_deploy" %>
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
                    <span class="STYLE1">图 片 添 加</span></td>
            </tr>
        </table>

        <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be" cellpadding="0" cellspacing="0" width="78%">
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 14px" align="right"><FONT face="宋体">图片标题：</FONT>
				</td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 14px">
					<asp:TextBox id="Title" runat="server" Width="288px"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="title"></asp:RequiredFieldValidator></td>
			</tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">链接地址：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px">
                    <asp:TextBox ID="link_url" runat="server" Width="288px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="link_url"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="link_url"
                        ErrorMessage="格式有误" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator></td>
		    </tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">所属类别：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px"><asp:DropDownList id="ddlClass" runat="server"></asp:DropDownList></td>
		    </tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right"><FONT face="宋体">上传图片：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left"><input id="file2" type="file" size="50" name="file2" runat="server">
                    &nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="file2"
                        ErrorMessage="*"></asp:RequiredFieldValidator>首页图片规格：353*174 滚动图片规格：130*106
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
		    </tr>
			<tr bgcolor="#ecf5ff">
				<td height="30" colspan="2">
					<div align="center">&nbsp;&nbsp;&nbsp;
						<asp:Button id="btnEdit" runat="server" Text="添加" onclick="btnEdit_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
                        <input id="Button1" type="button" value="返回" onclick="history.go(-1);"/></div>
				</td>
			</tr>
        </table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>
