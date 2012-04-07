﻿<%@ page language="C#" autoeventwireup="true" inherits="admin_News_Add, www_deploy" %>
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
                    <span class="STYLE1">添 加 新 闻</span></td>
            </tr>
        </table>

        <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be" cellpadding="0" cellspacing="0" width="88%">
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 14px" align="right"><FONT face="宋体">新闻标题：</FONT>
				</td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 14px">
					<asp:TextBox id="Title" runat="server" Width="288px"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="Title"></asp:RequiredFieldValidator></td>
			</tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">所属类别：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px"><asp:DropDownList id="ddlClass" runat="server"></asp:DropDownList></td>
		    </tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">作者(文章来源)：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px"><asp:TextBox ID="author" runat="server"></asp:TextBox></td>
		    </tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">是否发布：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px">
                    <asp:RadioButtonList ID="is_show" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="False">是</asp:ListItem>
                        <asp:ListItem Value="True">否</asp:ListItem>
                    </asp:RadioButtonList></td>
		    </tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">视频新闻：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px">
                    <asp:RadioButtonList ID="is_top" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="True">是</asp:ListItem>
                        <asp:ListItem Selected="True" Value="False">否</asp:ListItem>
                    </asp:RadioButtonList></td>
		    </tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">点击数初始值：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px"><asp:TextBox ID="hits" runat="server" Width="29px">20</asp:TextBox>
                    次</td>
		    </tr>
            <tr>
			    <td bgcolor="#ecf5ff" align="right" style="height: 18px"><FONT face="宋体">新闻内容：</FONT>
			    </td>
			    <td bgcolor="#ecf5ff" align="Left" style="height: 18px"><fckeditorv2:FCKeditor id="Content" runat="server" Width="100%" BasePath="../FCKeditor/" Height="400px"></fckeditorv2:FCKeditor></td>
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
