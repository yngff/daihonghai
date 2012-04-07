<%@ page language="C#" autoeventwireup="true" inherits="manage_Message_Up1, www_deploy" %>
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
                    <span class="STYLE1">留 言 信 息 回 复</span></td>
            </tr>
        </table>

        <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be" cellpadding="0" cellspacing="0" width="98%">
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 20px" align="right"><FONT face="宋体">联系方式：</FONT>
				</td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 14px"><asp:Label ID="other" runat="server"></asp:Label>
					</td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 20px" align="right"><FONT face="宋体">留言标题：</FONT>
				</td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 14px"><asp:Label ID="MsgTitle" runat="server"></asp:Label>
					</td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 20px" align="right"><FONT face="宋体">留言内容：</FONT>
				</td>
				<td width="88%" bgcolor="#ecf5ff" style="HEIGHT: 14px"><asp:Label ID="message" runat="server"></asp:Label>
					</td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" align="right"><FONT face="宋体">是否发布：</FONT>
				</td>
				<td bgcolor="#ecf5ff">
                    <asp:RadioButtonList ID="is_check" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="True">是</asp:ListItem>
                        <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:RadioButtonList></td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" align="right"><FONT face="宋体">回复内容：</FONT>
				</td>
				<td bgcolor="#ecf5ff"><fckeditorv2:FCKeditor id="txtContent" runat="server" Width="100%" BasePath="../FCKeditor/" Height="400px"></fckeditorv2:FCKeditor></td>
			</tr>			
			<tr bgcolor="#ecf5ff">
				<td height="30" colspan="2">
					<div align="center">&nbsp;&nbsp;&nbsp;
						<asp:Button id="btnEdit" runat="server" Text="确定回复" onclick="btnEdit_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
                        <input id="Button1" type="button" value="返回" onclick="history.go(-1);"/></div>
				</td>
			</tr>
        </table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>
