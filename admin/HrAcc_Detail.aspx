<%@ page language="C#" autoeventwireup="true" inherits="admin_HrAcc_Detail, www_deploy" %>
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
                    <span class="STYLE1">求 职 人 员 详 细 信 息</span></td>
            </tr>
      </table>

        <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be" cellpadding="0" cellspacing="0" width="78%" style=" line-height:40px;">
			<tr>
				<td align="right" bgcolor="#ecf5ff" style=" HEIGHT: 14px; width: 74px;"><FONT face="宋体">应聘职位：</FONT>				</td>
				<td colspan="3" bgcolor="#ecf5ff" style="HEIGHT: 14px">&nbsp;                    
                    <asp:Label ID="Quarters" runat="server"></asp:Label></td>
			    <td align="right" bgcolor="#ecf5ff" style="HEIGHT: 14px; width: 65px;">应聘时间：</td>
			    <td bgcolor="#ecf5ff" style="HEIGHT: 14px">&nbsp;<asp:Label ID="AddDate" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 14px; width: 74px;" align="right"><FONT face="宋体">姓名：</FONT>				</td>
                <td bgcolor="#ecf5ff" colspan="5" style="height: 14px">
                    &nbsp;                    
                    <asp:Label ID="Name" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<td align="right" bgcolor="#ecf5ff" style=" HEIGHT: 14px; width: 74px;"><FONT face="宋体">学历：</FONT>				</td>
				<td colspan="5" bgcolor="#ecf5ff" style="HEIGHT: 14px">&nbsp;                    
                    <asp:Label ID="Studydegree" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 14px; width: 74px;" align="right"><FONT face="宋体"><span style="HEIGHT: 14px"></span></FONT>				专业：				</td>
                <td bgcolor="#ecf5ff" colspan="5" style="height: 14px">
                    &nbsp;<asp:Label ID="Specialty" runat="server"></asp:Label>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#ecf5ff" style=" HEIGHT: 14px; width: 74px;" align="right">
                    联系方式<FONT face="宋体">：</FONT>				</td>
                <td bgcolor="#ecf5ff" colspan="5" style="height: 14px">
                    &nbsp;                    
                    <asp:Label ID="Phone" runat="server"></asp:Label></td>
			</tr>
			<tr>
				<td align="right" bgcolor="#ecf5ff" style=" HEIGHT: 14px; width: 74px;"><FONT face="宋体">其它说明：</FONT>				</td>
				<td colspan="5" bgcolor="#ecf5ff" style="HEIGHT: 14px">&nbsp;                    
                    <asp:Label ID="other" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#ecf5ff">
				<td height="30" colspan="6">
					<div align="center">
                        <input id="Button1" type="button" value="返回" onclick="history.go(-1);"/></div>				</td>
			</tr>
        </table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>
