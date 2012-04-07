<%@ page language="C#" autoeventwireup="true" inherits="admin_Link_Manage, www_deploy" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
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
                    <span class="STYLE1">链接信息管理</span></td>
            </tr>
        </table>
        <table width="98%" border="1" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0" bgcolor="#6591BE">
        
        <tr>
          <td  align="center" bgcolor="#6591BE">
              <table align="center" border="1" bordercolordark="#ffffff" bordercolorlight="#6591be" cellpadding="0" cellspacing="0" width="50%">
										<tr bgcolor="#ecf5ff">
											<td width="29%" height="22">
												<div align="right">
                                                    网站名称：</div>
											</td>
											<td align="left" style="width: 343px"><FONT face="宋体">
													<asp:TextBox id="l_title" runat="server" Width="194px"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="l_title" ValidationGroup="kefu"></asp:RequiredFieldValidator></FONT></td>
										</tr>
										<tr bgcolor="#ecf5ff">
											<td height="22">
												<div align="right">
                                                    <asp:Label ID="kefuID" runat="server" Visible="False"></asp:Label>网站网址：</div>
											</td>
											<td align="left" style="width: 343px"><FONT face="宋体">
                                                <asp:TextBox ID="l_url" runat="server" Width="194px">http://</asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="l_url"
                                                    ErrorMessage="*" ValidationGroup="kefu"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="l_url"
                                                    ErrorMessage="格式有误" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"
                                                    ValidationGroup="kefu"></asp:RegularExpressionValidator></FONT></td>
										</tr>
										<tr bgcolor="#ecf5ff">
											<td height="22">
											</td>
											<td align="left" style="width: 343px">
													<asp:Button id="btnAdd" runat="server" Text="确认添加" onclick="btnAdd_Click" ValidationGroup="kefu"></asp:Button>
                                                <asp:Button ID="btnUp" runat="server" Text="确认修改" ValidationGroup="kefu" OnClick="btnUp_Click" /></td>
										</tr>
									</table>
          </td>
          
        </tr>
        <tr class="tr_southidc">
		    <td colSpan="2"><FONT style="BACKGROUND-COLOR: #ffffff"><asp:datagrid id="dgAdmin" DataKeyField="ID" runat="server" Width="100%" AutoGenerateColumns="False"
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
						    <asp:TemplateColumn HeaderText="网站名称">
							    <HeaderStyle></HeaderStyle>
							    <ItemStyle HorizontalAlign="Center"></ItemStyle>
							    <ItemTemplate>
								    &nbsp;<%# DataBinder.Eval(Container.DataItem, "l_title").ToString()%>
							    </ItemTemplate>
							    <EditItemTemplate>
								    <asp:TextBox Runat="server" ID="txt_title"></asp:TextBox>
							    </EditItemTemplate>
						    </asp:TemplateColumn>
						    <asp:TemplateColumn HeaderText="网站网址">
							    <HeaderStyle></HeaderStyle>
							    <ItemStyle HorizontalAlign="Center"></ItemStyle>
							    <ItemTemplate>
								    &nbsp;<%# DataBinder.Eval(Container.DataItem, "l_url").ToString()%>
							    </ItemTemplate>
							    <EditItemTemplate>
								    <asp:TextBox Runat="server" ID="txt_url"></asp:TextBox>
							    </EditItemTemplate>
						    </asp:TemplateColumn>
						    <asp:TemplateColumn HeaderText="操作">
							<ItemStyle HorizontalAlign="Center"></ItemStyle>
							<ItemTemplate>
								<asp:LinkButton ID="lbtnUp" Runat="server" CommandName="Up" CausesValidation="False">修改</asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
					    <PagerStyle Visible="False"></PagerStyle>
				    </asp:datagrid></FONT></td>
	    </tr>
	    <tr>
		    <td><table width="100%" class="table_southidc" cellpadding="0" cellspacing="0">
				    <tr>
					    <td class="back_southidc" width="229" height="20" align="left"><FONT face="宋体"><input name="chkAll" type="checkbox" id="chkAll" onclick="CheckAll(this.form)" value="checkbox">全选&nbsp;&nbsp;
							    <asp:Button id="btnDel" runat="server" Width="104px" Text="删除选择项" CausesValidation="False" onclick="btnDel_Click"></asp:Button></FONT></td>
					    <td class="back_southidc" width="320" align="right"><asp:label id="lblPage" Runat="server"></asp:label>
						    <webdiyer:aspnetpager id="Page1" runat="server" PageSize="20" AlwaysShow="True" OnPageChanged="Page1_PageChanged"></webdiyer:aspnetpager></td>
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