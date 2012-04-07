<%@ page language="C#" autoeventwireup="true" inherits="manage_Message1, www_deploy" %>
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
                <td height="25" align="left">
                    <span class="STYLE1"><asp:RadioButtonList id="rbtnMessage" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" onselectedindexchanged="rbtnMessage_SelectedIndexChanged">
										<asp:ListItem Value="2" Selected="True">所有留言</asp:ListItem>
										<asp:ListItem Value="1">已回复</asp:ListItem>
										<asp:ListItem Value="0">未回复</asp:ListItem>
									</asp:RadioButtonList>
									<asp:Label id="lblWhere" runat="server" Visible="False"></asp:Label></span></td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="center" background="images/YX_Bg.jpg">
                    <span class="STYLE1">留 言 信 息 管 理</span></td>
            </tr>
        </table>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
			<tr>
				<td>
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
					    <asp:TemplateColumn HeaderText="Email">
						    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
						    <ItemStyle HorizontalAlign="Center"></ItemStyle>
						    <ItemTemplate>
							    &nbsp;<%# DataBinder.Eval(Container.DataItem, "email").ToString()%>
						    </ItemTemplate>
					    </asp:TemplateColumn>
					    <asp:TemplateColumn HeaderText="留言标题">
						    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
						    <ItemStyle HorizontalAlign="Center"></ItemStyle>
						    <ItemTemplate>
							    &nbsp;<%# DataBinder.Eval(Container.DataItem, "MsgTitle").ToString()%>
						    </ItemTemplate>
					    </asp:TemplateColumn>
					    <asp:TemplateColumn HeaderText="提交时间">
						    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
						    <ItemStyle HorizontalAlign="Center"></ItemStyle>
						    <ItemTemplate>
							    &nbsp;<%# DataBinder.Eval(Container.DataItem, "inputdate").ToString()%>
						    </ItemTemplate>
					    </asp:TemplateColumn>
					    <asp:TemplateColumn HeaderText="状态">
						    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
						    <ItemStyle HorizontalAlign="Center"></ItemStyle>
						    <ItemTemplate>
							    &nbsp;<%#(DataBinder.Eval(Container.DataItem,"remessage").ToString()=="")?"<font color=#ff0000>未回复</font>":"已回复"%>
						    </ItemTemplate>
					    </asp:TemplateColumn>
					    <asp:TemplateColumn HeaderText="操作">
						    <HeaderStyle></HeaderStyle>
						    <ItemStyle HorizontalAlign="Center" Height="25px"></ItemStyle>
						    <ItemTemplate>
							    <asp:LinkButton ID="lbtnLock" Runat="server" CommandName="Lock">
								    <%#(DataBinder.Eval(Container.DataItem, "is_check").ToString() == "False") ? "<font color=#ff0000>隐藏</font>" : "发布"%>
							    </asp:LinkButton>
							    <asp:LinkButton ID="lbtnUp" Runat="server" CommandName="Up">回复</asp:LinkButton>
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
							<td class="back_southidc" height="20" align="left"><input name="chkAll" type="checkbox" id="chkAll" onclick="CheckAll(this.form)" value="checkbox">全选
													<asp:Button id="btnDel" runat="server" Width="80px" Text="删除留言" onclick="btnDel_Click"></asp:Button>&nbsp;
													<asp:Button id="btnCheck" runat="server" Width="88px" Text="发布留言" onclick="btnCheck_Click"></asp:Button>&nbsp;
													<asp:Button id="btnUncheck" runat="server" Text="隐藏留言" onclick="btnUncheck_Click"></asp:Button></td>
							<td class="back_southidc" width="320" align="right"><asp:label id="lblPage" Runat="server"></asp:label>
												<webdiyer:aspnetpager id="Page1" runat="server" PageSize="15" AlwaysShow="True" OnPageChanged="Page1_PageChanged"></webdiyer:aspnetpager></td>
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

