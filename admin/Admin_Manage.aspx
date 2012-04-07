<%@ page language="C#" autoeventwireup="true" inherits="admin_Admin_Manage, www_deploy" %>
<%@ Register Src="AdminTop.ascx" TagName="AdminTop" TagPrefix="uc1" %>
<%@ Register Src="Admin_Buttom.ascx" TagName="Admin_Buttom" TagPrefix="uc2" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
        <table width="98%" border="1" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0" bgcolor="#6591BE">
        
        <tr>
          <td  align="center" bgcolor="#6591BE">
              <table width="80%" border="0" align="center">
										<tr>
											<td height="25" colspan="2">&nbsp;</td>
										</tr>
										<tr>
											<td width="29%" height="22">
												<div align="right"><asp:Label runat="server" ID="AdminID" Visible="False"></asp:Label>管理员帐号：</div>
											</td>
											<td align="left" style="width: 343px"><FONT face="宋体">
													<asp:TextBox id="txtUsername" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtUsername"></asp:RequiredFieldValidator></FONT></td>
										</tr>
										<tr>
											<td height="22">
												<div align="right">管理员密码：</div>
											</td>
											<td align="left" style="width: 343px"><FONT face="宋体">
													<asp:TextBox id="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                                <asp:Label ID="tishi" runat="server" ForeColor="Red" Text="密码不改请留空"></asp:Label></FONT></td>
										</tr>
										<tr>
											<td height="22">
												<div align="right">密码确认：</div>
											</td>
											<td align="left" style="width: 343px"><FONT face="宋体">
													<asp:TextBox id="txtQpass" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="两次密码输入不一致" ControlToValidate="txtQpass"
														ControlToCompare="txtPassword"></asp:CompareValidator></FONT></td>
										</tr>
										<tr>
											<td width="29%" style="height: 44px">
												<div align="right">管理员权限：</div>
											</td>
											<td align="left" style="width: 343px; height: 44px;">
                                                <asp:CheckBoxList ID="cblPower" runat="server" RepeatDirection="Horizontal" Width="388px">
                                                    <asp:ListItem Value="0">超级管理员</asp:ListItem>
                                                    <asp:ListItem Value="1">信息管理</asp:ListItem>
                                                    <asp:ListItem Value="2">人才招聘</asp:ListItem>
                                                    <asp:ListItem Value="3">新闻管理</asp:ListItem>
                                                    <asp:ListItem Value="4">公司管理</asp:ListItem>
                                                </asp:CheckBoxList></td>
										</tr>
										<tr>
											<td height="22">
											</td>
											<td align="left" style="width: 343px">
													<asp:Button id="btnAdd" runat="server" Text="确认添加" onclick="btnAdd_Click"></asp:Button>
                                                <asp:Button ID="lbtnEdit" runat="server" Text="确定修改" OnClick="lbtnEdit_Click" />
                                                <asp:Button ID="lbtnAdd" runat="server" Text="添加新管理员" CausesValidation="False" OnClick="lbtnAdd_Click" /></td>
										</tr>
									</table>
          </td>
          
        </tr>
        
        <tr>
          <td align="center" bgcolor="#6591BE">
             <%-- <uc1:admin_list ID="Admin_list1" runat="server" />--%>
                <script language="javascript">
                function CheckAll(form)
                  {
                  for (var i=0;i<form.elements.length;i++)
                    {
                    var e = form.elements[i];
                    if (e.Name != "chkAll")
                       e.checked = form.chkAll.checked;
                    }
                  }
                </script>
                <div>
                    &nbsp;<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="25" align="center" background="images/YX_Bg.jpg">
                                <span class="STYLE1">管理员信息管理</span></td>
                        </tr>
                    </table>
                    <table width="68%" border="1" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0">
                    
                    <tr>
                      <td colspan="2"  align="center" bgcolor="#6591BE">
                        <asp:datagrid id="dgAdmin" DataKeyField="ID" runat="server" Width="100%" AutoGenerateColumns="False"
			                BackColor="#DFEBF2" AllowPaging="True" PageSize="20" OnItemCommand="dgAdmin_ItemCommand">
			                <HeaderStyle Font-Size="12px" HorizontalAlign="Center" Height="27px" ForeColor="Black" VerticalAlign="Middle"
				                BackColor="#A4B6D7"></HeaderStyle>
			                <Columns>
				                <asp:TemplateColumn HeaderText="ID">
					                <HeaderStyle Width="50px"></HeaderStyle>
					                <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
					                <ItemTemplate>
						                &nbsp;<input name='ID' type='checkbox' id="ID" value='<%# DataBinder.Eval(Container.DataItem, "ID").ToString()%>'>
					                </ItemTemplate>
				                </asp:TemplateColumn>
				                <asp:TemplateColumn HeaderText="账号">
					                <HeaderStyle Width="80px"></HeaderStyle>
					                <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
					                <ItemTemplate>
						                &nbsp;<%# DataBinder.Eval(Container.DataItem, "UserName").ToString()%>					</ItemTemplate>
				                </asp:TemplateColumn>
				                <asp:TemplateColumn HeaderText="密码">
					                <HeaderStyle Width="250px"></HeaderStyle>
					                <ItemStyle HorizontalAlign="Center" Width="250px"></ItemStyle>
					                <ItemTemplate>
						                &nbsp;<%# DataBinder.Eval(Container.DataItem, "PassWord").ToString()%>					</ItemTemplate>
					                <EditItemTemplate>
						                <asp:TextBox Runat="server" ID="txtpwd"></asp:TextBox>
					                </EditItemTemplate>
				                </asp:TemplateColumn>	
				                <asp:TemplateColumn HeaderText="权限">
					                <HeaderStyle Width="80px"></HeaderStyle>
					                <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
					                <ItemTemplate>
						                &nbsp;<%# DataBinder.Eval(Container.DataItem, "Power").ToString().Replace("$1", "信息管理|").Replace("$2", "人才招聘|").Replace("$3", "新闻管理|").Replace("$4", "公司管理|").Replace("$0", "超级管理员|")%>					</ItemTemplate>
				                </asp:TemplateColumn>
				                <asp:TemplateColumn HeaderText="删除">
					                <ItemStyle HorizontalAlign="Center"></ItemStyle>
					                <ItemTemplate>
								        <asp:LinkButton ID="lbtnUp" Runat="server" CommandName="Up" CausesValidation="False">修改</asp:LinkButton>
						                <asp:LinkButton ID="lbtnDel" Runat="server" CommandName="Del" CausesValidation="False">删除</asp:LinkButton>
					                </ItemTemplate>
				                </asp:TemplateColumn>
			                </Columns>
			                <PagerStyle Visible="False"></PagerStyle>
		                </asp:datagrid>      </td>          
                    </tr>      
                   </table>
                   <table bgcolor="#6591BE" width="68%">  
                    <tr>
                      <td align="left">
                      <input name="chkAll" type="checkbox" id="chkAll" onclick="CheckAll(this.form)" value="checkbox">全选&nbsp;&nbsp;
							                <asp:Button id="btnDel" runat="server" Width="104px" Text="删除选择项" CausesValidation="False" onclick="btnDel_Click"></asp:Button>
							                      </td>         
                      <td align="center">&nbsp;<asp:label id="lblPage" Runat="server"></asp:label>
						                <webdiyer:aspnetpager id="Page1" runat="server" PageSize="20" AlwaysShow="True" OnPageChanged="Page1_PageChanged"></webdiyer:aspnetpager></td>
                    </tr></table>
                </div>

              </td>
         
        </tr>
       </table>
    </div>
    <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>
