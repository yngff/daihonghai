<%@ page language="C#" autoeventwireup="true" inherits="admin_Pro_Class, www_deploy" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
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
    <table cellSpacing="2" cellPadding="2" width="100%"	border="0">
		<tr>
			<td vAlign="top">
				<table class="table_southidc" cellSpacing="1" cellPadding="2" width="100%" border="0">
					<tr>
						<td background="images/YX_Bg.jpg" colSpan="2" height="25">
							<div align="center"><strong><span class="STYLE1">商 品 类 别 管 理</span></strong></div>
						</td>
					</tr>
					<tr class="tr_southidc">
						<td colSpan="2"><FONT style="BACKGROUND-COLOR: #ffffff"><asp:datagrid id="dgNewsclass" runat="server" PageSize="20" AllowPaging="True" BackColor="#DFEBF2"
									AutoGenerateColumns="False" Width="100%" DataKeyField="ID" OnItemCommand="dgNewsclass_ItemCommand">
									<HeaderStyle Font-Size="12px" HorizontalAlign="Center" Height="27px" ForeColor="Black" VerticalAlign="Middle"
										BackColor="#A4B6D7"></HeaderStyle>
									<Columns>
										<asp:TemplateColumn HeaderText="类别名称">
											<HeaderStyle Width="70%"></HeaderStyle>
											<ItemStyle HorizontalAlign="left"></ItemStyle>
											<ItemTemplate>
												&nbsp;<%# DataBinder.Eval(Container.DataItem,"ClassName")%>
											</ItemTemplate>
										</asp:TemplateColumn>
										<asp:TemplateColumn HeaderText="管理">
											<ItemStyle HorizontalAlign="Center"></ItemStyle>
											<ItemTemplate>
											    <asp:LinkButton ID="lbtnAdd" Runat="server" CommandName="Add" CausesValidation="False">添加子类</asp:LinkButton>
												<asp:LinkButton ID="lbtnUp" Runat="server" CommandName="Up" CausesValidation="False">修改</asp:LinkButton>
												<asp:LinkButton ID="lbtnDel" Runat="server" CommandName="Del" CausesValidation="False">删除</asp:LinkButton>
											</ItemTemplate>
										</asp:TemplateColumn>
									</Columns>
									<PagerStyle Visible="False"></PagerStyle>
								</asp:datagrid></FONT></td>
					</tr>
					<tr>
						<td>
							<table class="table_southidc" cellSpacing="0" cellPadding="0" width="100%">
								<tr>
									<td class="back_southidc" style="WIDTH: 80px" align="left" width="80" height="20"><FONT face="宋体"><asp:button id="btnAdd1" runat="server" Text="添加类别" onclick="btnAdd1_Click"></asp:button></FONT></td>
									<td class="back_southidc" align="right" width="320"><asp:label id="lblPage" Runat="server"></asp:label><webdiyer:aspnetpager id="Page1" runat="server" PageSize="20" AlwaysShow="True" OnPageChanged="Page1_PageChanged"></webdiyer:aspnetpager></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td align="left" vAlign="top"><FONT face="宋体"><asp:panel id="pnClassadd" runat="server" Width="80%">
						<TABLE class="table_southidc" cellSpacing="1" cellPadding="2" width="100%" border="0">
							<tr>
						        <td background="images/YX_Bg.jpg" colSpan="2" height="25">
							        <div align="center"><strong><span class="STYLE1">图片类别添加</span></strong></div>
						        </td>
					        </tr>
							<TR class="tr_southidc">
								<TD style="WIDTH: 83px" align="right" width="83">所属类别：</TD>
								<TD>
									<asp:DropDownList id="ddlClass" runat="server"></asp:DropDownList></TD>
							</TR>
							<TR class="tr_southidc">
								<TD style="WIDTH: 83px; height: 28px;" align="right" width="83">类别名称：</TD>
								<TD style="height: 28px">
									<asp:TextBox id="txtClassnameAdd" runat="server"></asp:TextBox></TD>
							</TR>
							<TR class="tr_southidc">
								<TD style="WIDTH: 83px" align="right" width="83"></TD>
								<TD>
									<asp:Button id="btnAdd" runat="server" Text="确定添加" onclick="btnAdd_Click"></asp:Button>
									<asp:Button id="btnCan" runat="server" Text="取消" onclick="btnCan_Click"></asp:Button></TD>
							</TR>
						</TABLE>
					</asp:panel></FONT>
					<FONT face="宋体"><asp:panel id="pnClassNameUp" runat="server" Width="80%">
						<TABLE class="table_southidc" cellSpacing="1" cellPadding="2" width="100%" border="0">
							<tr>
						        <td background="images/YX_Bg.jpg" colSpan="2" height="25">
							        <div align="center"><strong><span class="STYLE1">图片类别修改</span></strong></div>
						        </td>
					        </tr>
							<TR class="tr_southidc">
								<TD style="WIDTH: 83px" align="right" width="83">类别名称：</TD>
								<TD>
									<asp:TextBox id="txtClassNameUp" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label></TD>
							</TR>
							<TR class="tr_southidc">
								<TD style="WIDTH: 83px" align="right" width="83"></TD>
								<TD>
									<asp:Button id="btnUp" runat="server" Text="确定修改" onclick="btnUp_Click"></asp:Button>
									<asp:Button id="Button2" runat="server" Text="取消" onclick="Button2_Click"></asp:Button></TD>
							</TR>
						</TABLE>
					</asp:panel></FONT>
				</td>
		</tr>
	</table>
    </form>
</body>
</html>
