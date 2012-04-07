﻿<%@ page language="C#" autoeventwireup="true" inherits="admin_ProPic_Manage, www_deploy" %>
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
                    <span class="STYLE1">图片添加：<input id="file2" runat="server" name="file2" size="50" type="file" />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></span></td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="center" background="images/YX_Bg.jpg">
                    <span class="STYLE1">
                        <asp:Label ID="title_name" runat="server" Font-Bold="True"></asp:Label>
                        &nbsp;&nbsp;
                        图 片 管 理</span></td>
            </tr>
        </table>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="table_southidc">
			<tr>
				<td>
					<asp:datagrid id="dgMenu" DataKeyField="ID" runat="server" Width="100%" AutoGenerateColumns="False"
						BackColor="#DFEBF2" AllowPaging="True" PageSize="20" OnItemCommand="dgMenu_ItemCommand">
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
							<asp:TemplateColumn HeaderText="文件名称(点击预览)">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									&nbsp;<a href="../SYImg/<%# DataBinder.Eval(Container.DataItem, "pic_url").ToString()%>" target="_blank"><%# DataBinder.Eval(Container.DataItem, "pic_url").ToString()%></a>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="所属商品">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									&nbsp;<%# DataBinder.Eval(Container.DataItem, "title").ToString()%>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="上传时间">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									&nbsp;<%# DataBinder.Eval(Container.DataItem, "updatetime").ToString()%>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="状态">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<ItemStyle HorizontalAlign="Center"></ItemStyle>
								<ItemTemplate>
									<asp:LinkButton ID="lbtnShow" Runat="server" CommandName="is_check">
										<%#(DataBinder.Eval(Container.DataItem,"is_check").ToString()=="False")?"<font color=#ff0000>隐藏</font>":"显示"%>
									</asp:LinkButton>
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
							<td class="back_southidc" align="left" style="height: 21px"><FONT face="宋体"><input name="chkAll" type="checkbox" id="chkAll" onclick="CheckAll(this.form)" value="checkbox">全选&nbsp;&nbsp;
									<asp:Button id="btnDel" runat="server" Width="104px" Text="删除选择项" CausesValidation="False" onclick="btnDel_Click"></asp:Button>&nbsp;&nbsp; 
                                <input id="Button2" type="button" value="返回商品管理" onclick="location.href='Pro_Manage.aspx';" /></FONT></td>
							<td class="back_southidc" width="320" align="right" style="height: 21px"><asp:label id="lblPage" Runat="server"></asp:label><webdiyer:aspnetpager id="Page1" runat="server" PageSize="20" AlwaysShow="True" OnPageChanged="Page1_PageChanged"></webdiyer:aspnetpager></td>
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

