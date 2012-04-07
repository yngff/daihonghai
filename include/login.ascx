<%@ control language="C#" autoeventwireup="true" inherits="include_login, www_deploy" %>
<table width="222" height="161" border="0" cellpadding="0" cellspacing="1" bordercolor="#e7e7e7" bgcolor="#e7e7e7">
    <tr>
     <td valign="top" bgcolor="#FFFFFF"><table width="191" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
         <td width="73" height="31" class="sidebar_font_01">论坛登陆</td>
         <td width="118" class="sidebar_font_02">LOGIN</td>
       </tr>
     </table>
       <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td height="1" class="sidebar1"></td>
         </tr>
       </table>
       <br />
       <table width="170" height="60" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="61" class="sidebar_font_03">用户名：</td>
           <td width="102"><input id="username" name="username" type="text" class="sidebar_line" size="14" runat="server" /></td>
         </tr>
         <tr>
           <td class="sidebar_font_03">密 &nbsp;码：</td>
           <td><input id="password" name="password" type="password" class="sidebar_line" size="14" runat="server" /></td>
         </tr>
       </table>
       <br />
       <table width="160" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="104" align="right"><a href="http://www.group-lx.com/bbs/lostpass.asp" target="_blank"><img src="images/index_32.gif" width="77" height="22" border="0" /></a></td>
           <td width="54" align="right">
           <%--<a href="http://www.group-lx.com/china/bbs/login.asp?action=chk&username=aa&password=aa" target="_blank"><img src="images/index_36.jpg" width="46" height="22" border="0" /></a>--%>
               <asp:ImageButton ID="ImageButton1" ImageUrl="../images/index_36.jpg" runat="server" OnClick="ImageButton1_Click" />
           </td>
         </tr>
       </table>
       </td>
    </tr>
</table>