<%@ control language="C#" autoeventwireup="true" inherits="include_NewsClass, www_deploy" %>
<asp:Repeater runat="server" ID="rtClass">
   <ItemTemplate>
       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
           <td width="174" class="sidebar_font_03"><a href="News.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "classname")%></a> </td>
         </tr>
       </table>
       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td class="nav1"></td>
         </tr>
       </table>
   </ItemTemplate>
</asp:Repeater>