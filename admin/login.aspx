<%@ page language="C#" autoeventwireup="true" inherits="Admin_Login, www_deploy" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>管理员登陆口</title>
<link href="images/style.CSS" rel="stylesheet" type="text/css">

<style type="text/css">
<!--
body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;}
.STYLE6 {color: #0066FF}
.STYLE7 {color: #003584}
.STYLE8 {color: #09155E}
.STYLE9 {
	color: #FF6600;
	font-weight: bold;
}
.STYLE10 {
	color: #C43309;
	font-weight: bold;
}
.STYLE12 {color: #000033}
-->
</style>

<script type="text/javascript" language="javascript">
function dd(){
    document.getElementById("username").focus();
}

function CheckForm()
{

    if(document.form1.Username.value=="")
    {
        alert("请输入用户名！");
        document.form1.Username.focus();
        return false;
    }
    if(document.form1.Password.value == "")
    {
        alert("请输入密码！");
        document.form1.Password.focus();
        return false;
    }
    if(document.form1.CheckCode.value=="")
    {
        alert("请输入验证码");
        document.form1.CheckCode.focus();
        return false;
    }
}
</script>
</head>
<body >
<form  id="form1" runat="server" onsubmit="return CheckForm()"  target="_top">
       <table width="1003" border="0" style="text-align:center;" cellspacing="0" cellpadding="0" >
          <tr>
            <td height="604" valign="top" background="images/logins_02.jpg"><table width="499" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="35">　</td>
                </tr>
                <tr>
                  <td><img src="images/logins_09.jpg" width="498" height="75" alt="" /></td>
                </tr>
                <tr>
                  <td><img src="images/logins_13.jpg" width="500" height="126" alt="" /></td>
                </tr>
                <tr>
                  <td height="368" valign="top" background="images/logins_18.jpg"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="2">&nbsp;　</td>
                      </tr>
                      <tr>
                        <td valign="top" style="height: 74px">
						<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td valign="top">
								<table width="100%" height="68%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
      
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td style="height: 150px" ></td>
              <td style="height: 150px" ></td>
              <td valign="top" style="height: 150px" ><table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td ></td>
                  <td ><table width="100%"   border="0" cellpadding="0" cellspacing="0">
                    <tr></tr>
                    <tr>
                      <td style="height: 51px" >&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
                      <td width="85" valign="bottom" style="height: 51px" ><asp:ImageButton ID="imgbtn" runat="server" ImageUrl="Images/User_Login_0_13.gif" style="width:40px; height:40px" OnClick="imgbtn_Click"  /></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td  colspan="2"><table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td  rowspan="2"><img src="images/User_Login_0_15.gif" width="20" height="30" alt=""></td>
                      <td  height="20"><span class="STYLE6">用户名称：</span></td>
                      <td  rowspan="2" align="center" valign="middle"><img src="images/User_Login_0_19.gif" alt="" width="20" height="30"></td>
                      <td width="70"><span class="STYLE6">用户密码：</span></td>

                      <td width="29" rowspan="2" align="center"><img src="images/User_Login_0_23.gif" alt="" width="29" height="30"></td>
                      <td ><span class="STYLE6">验证码：</span></td>
                      <td width="35"></td>

                      <td width="32" rowspan="2" align="center">　</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td style="height: 20px">
                      <asp:TextBox ID="Username" runat="server" Height="22px" Width="85px"></asp:TextBox>
                          </td>
                      <td style="height: 20px">
                          <asp:TextBox ID="Password" TextMode="Password" runat="server" Height="22px" Width="85px"></asp:TextBox>
                          </td>

                      <td width="83" style="height: 20px">
                       <asp:TextBox ID="CheckCode" runat="server" Height="22px" Width="85px"></asp:TextBox>
                   
                          </td>
                      <td style="height: 20px">
                          &nbsp;<img height="26" src="Code_VerifyCode.aspx?" alt="看不清？点击更换" onclick="this.src=this.src+'?'" />
                    </td>
                    </tr>
                  </table></td>
                </tr>
                
              </table></td>
            </tr>
          </table>
    
      </td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="13"></td>
                      </tr>
                  </table></td>
                </tr>
            </table>
                    <table width="499" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>　<span class="STYLE7">
                        </span></td>
                      </tr>
                    </table></td>
          </tr>
        </table></td>
  </tr>
</table>

<script type="text/javascript" language="javascript">
dd();
</script>
    </form>
</body>
</html>
