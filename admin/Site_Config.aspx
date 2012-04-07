<%@ page language="C#" autoeventwireup="true" inherits="admin_Site_Config, www_deploy" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
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
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="center" background="images/YX_Bg.jpg">
                    <span class="STYLE1">网 站 系 统 信 息</span></td>
            </tr>
        </table>

        <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be"
            cellpadding="0" cellspacing="0" width="98%">
			<tr bgcolor="#ecf5ff">
				<td align="right">网站名称：</td>
				<td width="82%">
					<asp:TextBox id="txtSiteName" runat="server" Width="327px"></asp:TextBox>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td align="right">站点标题：</td>
				<td width="82%">
					<asp:TextBox id="txtSiteTitle" runat="server" Width="327px"></asp:TextBox>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td align="right">搜索关键字：</td>
				<td width="82%">
					<asp:TextBox id="txtKeyWord" runat="server" Width="396px" TextMode="MultiLine" Height="67px"></asp:TextBox>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td align="right">网站描述：</td>
				<td width="82%">
					<asp:TextBox id="miaoshu" runat="server" Width="396px" Height="67px" TextMode="MultiLine"></asp:TextBox>
				</td>
			</tr>
			
			<tr bgcolor="#ecf5ff">
				<td align="right">滚动企业文化：</td>
				<td width="82%">
					<fckeditorv2:FCKeditor id="culture" runat="server" Width="80%" BasePath="../FCKeditor/" Height="200px"></fckeditorv2:FCKeditor>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td align="right">
                    网站公告标题：</td>
				<td width="82%">
					<asp:TextBox id="txtTitle" runat="server" Width="396px"></asp:TextBox>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td align="right">
                    公告内容：</td>
				<td width="82%">
					<fckeditorv2:FCKeditor id="txtContent" runat="server" Width="100%" BasePath="../FCKeditor/" Height="400px"></fckeditorv2:FCKeditor>
				</td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td align="center">&nbsp </td>
				<td width="82%">&nbsp;<asp:Button id="btnSite" runat="server" Text="修改" onclick="btnSite_Click"></asp:Button>
				</td>
			</tr>
        </table>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>