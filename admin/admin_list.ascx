<%@ control language="C#" autoeventwireup="true" inherits="admin_admin_list, www_deploy" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
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
			BackColor="#DFEBF2" AllowPaging="True" PageSize="20" OnCancelCommand="dgAdmin_CancelCommand_1" OnEditCommand="dgAdmin_EditCommand_1" OnItemCommand="dgAdmin_ItemCommand" OnUpdateCommand="dgAdmin_UpdateCommand_1">
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
				<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="更新" HeaderText="操作" CancelText="取消" EditText="修改" CausesValidation="false">
					<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
					<ItemStyle HorizontalAlign="Center"></ItemStyle>
					<FooterStyle HorizontalAlign="Center"></FooterStyle>
				</asp:EditCommandColumn>
				<asp:TemplateColumn HeaderText="删除">
					<ItemStyle HorizontalAlign="Center"></ItemStyle>
					<ItemTemplate>
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
