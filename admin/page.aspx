<%@ page language="C#" autoeventwireup="true" inherits="admin_page, www_deploy" %>

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
        &nbsp;<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="center" background="images/YX_Bg.jpg">
                    <span class="STYLE1">管理员信息管理</span></td>
            </tr>
        </table>
        <table width="98%" border="1" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0">
        
        <tr>
          <td  align="center" bgcolor="#F6F6F6">
          
          </td>          
        </tr>        
        <tr>
          <td align="center" bgcolor="#F6F6F6">              </td>         
        </tr>
       </table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>