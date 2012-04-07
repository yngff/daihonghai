<%@ control language="C#" autoeventwireup="true" inherits="include_Cult, www_deploy" %>
<table width="222" border="0" cellpadding="0" cellspacing="1" bordercolor="#e7e7e7" bgcolor="#e7e7e7">
   <tr>
     <td width="249" valign="top" bgcolor="#f8f8f8"><br />
       <table width="191" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="28" align="center" class="sidebar_font_01"><img src="images/index1_01.gif" width="3" height="16" /></td>
           <td width="163" class="sidebar_font_01">企业文化</td>
         </tr>
       </table>
         <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
             <td height="1" class="sidebar1"></td>
           </tr>
         </table>
       <asp:Repeater runat="server" ID="rtAbout">
       <ItemTemplate>
           <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
             <tr>
               <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
               <td width="174" class="sidebar_font_03"><a href="CultureA.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>"><%# DataBinder.Eval(Container.DataItem, "Title")%></a></td>
             </tr>
           </table>
           <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
             <tr>
               <td class="nav1"></td>
             </tr>
           </table>       
       </ItemTemplate>
       </asp:Repeater>
       <br />
       <table width="191" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="28" align="center" class="sidebar_font_01"><img src="images/index1_01.gif" width="3" height="16" /></td>
           <td width="163" class="sidebar_font_01"><a href="Song.aspx"><font color="#000000">龙兴人之歌</font></a></td>
         </tr>
       </table>
         <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
             <td height="1" class="sidebar1"></td>
           </tr>
         </table>
         <br />
       <table width="191" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="28" align="center" class="sidebar_font_01"><img src="images/index1_01.gif" width="3" height="16" /></td>
           <td width="163" class="sidebar_font_01"><a href="Culture.aspx"><font color="#000000">龙兴活动</font></a></td>
         </tr>
       </table>
         <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
             <td height="1" class="sidebar1"></td>
           </tr>
         </table>
       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
           <td width="174" class="sidebar_font_03"><a href="Culture.aspx?id=7">内部活动</a></td>
         </tr>
       </table>
       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td class="nav1"></td>
         </tr>
       </table> 
       <table width="180" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td width="30" align="center"><img src="images/index1_03.gif" width="9" height="9" /></td>
           <td width="174" class="sidebar_font_03"><a href="Culture.aspx?id=8">外部活动</a></td>
         </tr>
       </table>
       <table width="180" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
         <tr>
           <td class="nav1"></td>
         </tr>
       </table>  
       </td>
   </tr>
 </table>