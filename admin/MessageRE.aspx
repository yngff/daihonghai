<%@ page language="C#" autoeventwireup="true" inherits="manage_MessageRE, www_deploy" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="css/top.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
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
</head>
<body>
		<form id="Form1" method="post" runat="server">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top" align="center" width="100%"><br>
						<br>
						<table class="table_southidc" cellSpacing="1" cellPadding="2" width="100%" border="0">
							<tr>
								<td bgcolor="#dfebf2" align="left">&nbsp;
									<asp:RadioButtonList id="rbtnMessage" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" onselectedindexchanged="rbtnMessage_SelectedIndexChanged">
										<asp:ListItem Value="2" Selected="True">所有回复</asp:ListItem>
										<asp:ListItem Value="1">已审核</asp:ListItem>
										<asp:ListItem Value="0">未审核</asp:ListItem>
									</asp:RadioButtonList>
									<asp:Label id="lblWhere" runat="server" Visible="False"></asp:Label>
								</td>
							</tr>
							<tr>
								<td class="back_southidc" height="25">
									<div align="center"><b>贴 子 回 复 管 理</b></div>
								</td>
							</tr>
							<tr>
								<td height="25">
									<div align="center">
										<asp:datagrid id="dgMessage" DataKeyField="ID" runat="server" Width="100%" AutoGenerateColumns="False"
											BackColor="#DFEBF2" AllowPaging="True" PageSize="15" OnItemCommand="dgMessage_ItemCommand">
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
												<asp:TemplateColumn HeaderText="用户名">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<ItemTemplate>
														&nbsp;<%# DataBinder.Eval(Container.DataItem, "UserName").ToString()%>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="回复内容">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" Width="600"></ItemStyle>
													<ItemTemplate>
														&nbsp;<%# DataBinder.Eval(Container.DataItem, "re_content").ToString()%>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="回复时间">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<ItemTemplate>
														&nbsp;<%# DataBinder.Eval(Container.DataItem, "re_time").ToString()%>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="状态">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<ItemTemplate>
														&nbsp;<%#(DataBinder.Eval(Container.DataItem,"is_check").ToString()=="False")?"<font color=#ff0000>未审核</font>":"已审核"%>
													</ItemTemplate>
												</asp:TemplateColumn>
											</Columns>
											<PagerStyle Visible="False"></PagerStyle>
										</asp:datagrid></div>
								</td>
							</tr>
							<tr>
								<td><table width="100%" class="table_southidc" cellpadding="0" cellspacing="0">
										<tr>
											<td class="back_southidc" width="611" align="left" style="WIDTH: 611px; height: 24px;"><FONT face="宋体"><input name="chkAll" type="checkbox" id="chkAll" onclick="CheckAll(this.form)" value="checkbox">全选
													<asp:Button id="btnDel" runat="server" Width="80px" Text="删除回复" onclick="btnDel_Click"></asp:Button>&nbsp;
													<asp:Button id="btnCheck" runat="server" Width="88px" Text="审核回复" onclick="btnCheck_Click"></asp:Button>&nbsp;
													<asp:Button id="btnUncheck" runat="server" Text="取消审核" onclick="btnUncheck_Click"></asp:Button>&nbsp;<input
                                                        id="Button1" type="button" value="返回" onclick="location.href='Message.aspx';" /></FONT></td>
											<td class="back_southidc" width="320" align="right" style="height: 24px"><asp:label id="lblPage" Runat="server"></asp:label>
												<webdiyer:aspnetpager id="Page1" runat="server" PageSize="15" AlwaysShow="True" OnPageChanged="Page1_PageChanged"></webdiyer:aspnetpager></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
</body>
</html>
