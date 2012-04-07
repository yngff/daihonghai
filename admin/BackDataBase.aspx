<%@ page language="C#" autoeventwireup="true" inherits="manage_BackDatabase, www_deploy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="CSS.css" type="text/css" />
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
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:Panel ID="Panel2" runat="server"  Width="100%">   
             <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="25" align="center" background="images/YX_Bg.jpg">
                        <span class="STYLE1">数据库备份</span></td>
                </tr>
             </table>
             <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_southidc">
                <tr class="back_southidc">
                  <td width="25%" align="center" class="B" style="height: 27px" bgcolor="cornflowerblue">设置名称</td>
                  <td align="left" class="B" style="width:300px; height: 27px;" bgcolor="cornflowerblue">基本参数设置</td>
                  <td width="25%" align="center" class="B" style="width:350px; height: 27px;" bgcolor="cornflowerblue">设置说明</td>
                </tr>
             
                          <tr>
                              <td align="center" bgcolor="#f6f6f6">
                                  备份数据库名称：</td>
                              <td align="left" bgcolor="#f6f6f6" height="25" style="width: 300px">
                                  <asp:TextBox  ID="Title" runat="server" Width="192" ValidationGroup="beifen"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Title"
                                      Display="Dynamic" ErrorMessage="*" ValidationGroup="beifen"></asp:RequiredFieldValidator></td>
                              <td bgcolor="#f6f6f6">
                              如备份目录有该文件，将覆盖，如没有，将自动创建</td>
                          </tr>
                
                          <tr>
                              <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                                  </td>
                              <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 300px;">
                                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="备份数据库"  CssClass="submitMiniGreen" ValidationGroup="beifen"/></td>
                              <td bgcolor="#f6f6f6" style="height: 25px">
                              </td>
                          </tr>
          
          
                     <tr>
                              <td align="center" colspan="4" bgcolor="#f6f6f6" style=" height: 50px;">
                                  <div align="left"><b class="blue">提示：</b><br />
                                      在上面填写本程序的数据库备份文件名称，本程序的默认数据库文件为<font color=red>#@#lxjt#@</font>，请一定不能用默认名称命名备份数据库
                                    您可以用这个功能来备份您的法规数据，以保证您的数据安全！
                                   <br> <b class="blue">注意：</b><br />
                                      .默认备份文件在<font color=red>网站根目录&gt;&gt;App_Data&gt;&gt; </font>
                                  </div></td>
                            
                  </tr>
          
              </table>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server"  Width="100%">
             <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="25" align="center" background="images/YX_Bg.jpg">
                        <span class="STYLE1">数据库还原</span></td>
                </tr>
             </table>
              <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_southidc">
            <tr class="back_southidc">
              <td width="25%" align="center" class="B" style="height: 27px" bgcolor="cornflowerblue">设置名称</td>
              <td align="left" class="B" style="width:300px; height: 27px;" bgcolor="cornflowerblue">基本参数设置</td>
              <td width="25%" align="center" class="B" style="width:350px; height: 27px;" bgcolor="cornflowerblue">设置说明</td>
            </tr>
                     
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  &nbsp;备份数据库名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 300px">
                <asp:TextBox ID="Title1" runat="server" Width="259px" ValidationGroup="huanyuan"></asp:TextBox>
                  &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                      ControlToValidate="Title1" Display="Dynamic" ErrorMessage="*" ValidationGroup="huanyuan"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp; </td>
            </tr>           
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              </td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 300px;">
                              <asp:Button ID="Button2" runat="server" Text="恢复备份数据库"  OnClick="Button2_Click"  CssClass="submitMiniGreen" ValidationGroup="huanyuan"/></td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
      
      
                 <tr>
                          <td align="center" colspan="4" bgcolor="#f6f6f6" style="height: 50px;">
                              <table border="0" cellspacing="1" class="Msg" width="100%">
                                  <tr>
                                      <td align="center"> 
                                          <div align="left">
                                          <b class="blue">提示：</b><br />
                                         
                                              填写您当前数据库的备份文件名称,<font color=red>还原数据前请先做好备份</font><br>                    
                                              
                                    
                                              
                                      </div></td>
                                  </tr>
                              </table>
                              </td>
                        
                      </tr>
      
          </table>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
