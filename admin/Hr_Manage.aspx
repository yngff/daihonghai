<%@ page language="C#" autoeventwireup="true" inherits="admin_Hr_Manage, www_deploy" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="center" background="images/YX_Bg.jpg">
                    <span class="STYLE1">招 聘 信 息 管 理</span></td>
            </tr>
        </table>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
			<tr>
				<td>
					<asp:datagrid id="dgHr" DataKeyField="ID" runat="server" Width="100%" AutoGenerateColumns="False"
						BackColor="#DFEBF2" AllowPaging="True" PageSize="15" OnItemCommand="dgHr_ItemCommand">
						<HeaderStyle Font-Size="12px" HorizontalAlign="Center" Height="27px" ForeColor="Black" VerticalAlign="Middle"
							BackColor="#A4B6D7"></HeaderStyle>
						<Columns>
							<asp:TemplateColumn HeaderText="ID">
								<HeaderStyle></HeaderStyle>
								<ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
								<ItemTemplate>
									&nbsp;<input id="ID" type="checkbox" value='<%# DataBinder.Eval(Container.DataItem, "ID").ToString()%>' name="ID">
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="招聘职位">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									&nbsp;<%# DataBinder.Eval(Container.DataItem, "HrName").ToString()%>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="招聘人数">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									&nbsp;<%# DataBinder.Eval(Container.DataItem, "HrRequireNum").ToString()%>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="发布时间">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									&nbsp;<%# DataBinder.Eval(Container.DataItem, "HrDate").ToString()%>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="有效期限">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									&nbsp;<%# DataBinder.Eval(Container.DataItem,"HrValidDate").ToString()%>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="操作">
								<HeaderStyle Width="80px"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center" Height="25px"></ItemStyle>
								<ItemTemplate>
									<asp:LinkButton ID="lbtnUp" Runat="server" CommandName="Up">修改</asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateColumn>
						</Columns>
						<PagerStyle Visible="False"></PagerStyle>
					</asp:datagrid>
				</td>
			</tr>
			<tr>
				<td><table width="100%" class="table_southidc" cellpadding="0" cellspacing="0">
						<tr>
							<td class="back_southidc" width="611" height="20" align="left" style="WIDTH: 611px"><FONT face="宋体"><input name="chkAll" type="checkbox" id="chkAll" onClick="CheckAll(this.form)" value="checkbox">全选&nbsp;&nbsp;
									<asp:Button id="btnDel" runat="server" Text="删除所选信息" OnClick="btnDel_Click"></asp:Button></FONT></td>
							<td class="back_southidc" width="320" align="right"><asp:label id="lblPage" Runat="server"></asp:label><webdiyer:aspnetpager id="Page1" runat="server" PageSize="15" AlwaysShow="True" OnPageChanged="Page1_PageChanged"></webdiyer:aspnetpager></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
    </div>
        <uc2:Admin_Buttom ID="Admin_Buttom1" runat="server" />
    </form>
</body>
</html>

