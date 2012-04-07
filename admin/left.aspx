<%@ page language="C#" autoeventwireup="true" inherits="Admin_left, www_deploy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <script language="javascript">
function over(obj)
{
	obj.style.color = '';
	obj.style.backgroundColor = '';
}
function out(obj)
{
	obj.style.color = '';
	obj.style.backgroundColor = '';
}
function collapse(objid)
{
	var obj = document.getElementById(objid);
	collapseAll();
	obj.style.display = ''; 
}
function collapseAll()
{
	for (var i=1; i<300; i++)
	{
		var obj = document.getElementById('g_' + i.toString());
		if (obj) obj.style.display = 'none';
	}
}
function expandAll()
{
	for (var i=1; i<300; i++)
	{
		var obj = document.getElementById('g_' + i.toString());
		if (obj) obj.style.display = '';
	}
}
</script>
<link rel="Stylesheet" href="style/style.css" type="text/css"/>
<style rel="stylesheet" type="text/css">
p{padding:0px;margin:0px;}
p a,p a:hover{ padding-left:10px; width:135px;}
p a:hover{ background-position:0px -28px;}
img{border:none;}
.menuall{text-align:center;width:149px;background:#B8D8F9;}
.menuall div{margin:0px 0 5px 10px;text-align:left;}
.shadow {font-weight:bold;padding-left:34px;color:#ffffff;text-align:left;}
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" class="menuall">
<tr>
<td><img src="images/left_top.gif" alt="" /></td>
</tr>
<tr>
<td>
<a href="javascript:expandAll()" target="_self"><img src="images/extand.gif" alt="展开菜单" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:collapseAll()" target="_self"><img src="images/collapse.gif" alt="收拢菜单" /></a></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_1')"><img src="images/menu_a.gif" border="0" /></td>
</tr>
<tr>
<td id="g_1"><div>
<p><img src="images/dot.gif" /><a href="../Default.aspx" target="_blank">网站首页</a> | <a href="YX_readme.aspx" target="mainFrame">管理首页</a></p><br>
<p></p>
<p><img src="images/dot.gif" /><a href="loginout.aspx" class="t2" target="_top">退出管理</a> | </p>
</div></td>
</tr>
<%
    if(Session["Power"].ToString().Contains("0"))
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_2')"><img src="images/menu_b.gif" border="0" /></td>
</tr>
<tr>
<td id="g_2"><div>
<p><img src="images/dot.gif" /><a href="Admin_Manage.aspx" target="mainFrame">系统管理员</a></p>
<p><img src="images/dot.gif" /><a href="Site_Config.aspx" target="mainFrame">网站系统信息</a></p>
</div></td>
</tr>
<%  }
    if (Session["Power"].ToString().Contains("0") == true || Session["Power"].ToString().Contains("1")==true)
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_3')"><img src="images/menu_xx.gif" alt="" border="0" /></td>
</tr>
<tr >
<td id="g_3"><div>
<asp:Repeater runat="server" ID="rtAbout">
    <ItemTemplate>
        <p><img src="images/dot.gif" /><a href="AboutUsUp.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id").ToString()%>" target="mainFrame"><%# DataBinder.Eval(Container.DataItem, "title").ToString()%></a></p>
    </ItemTemplate>
</asp:Repeater>
<p><img src="images/dot.gif" /><a href="Culture_Add.aspx" target="mainFrame">添加企业文化</a></p>
<p><img src="images/dot.gif" /><a href="Culture_Manage.aspx" target="mainFrame">企业文化管理</a></p>
<%--<p><img src="images/dot.gif" /><a href="AboutUsAdd.aspx" target="mainFrame">添加企业信息</a></p>
<p><img src="images/dot.gif" /><a href="AboutUs.aspx" target="mainFrame">企业信息管理</a></p>--%>
</div></td>
</tr>
<%  }
    if (Session["Power"].ToString().Contains("0") == true)
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_4')"><img src="images/menu_d.gif" alt="" border="0" /></td>
</tr>
<tr >
<td id="g_4"><div>
<p><img src="images/dot.gif" /><a href="Pro_Add.aspx" target="mainFrame">商品添加</a></p>
<p><img src="images/dot.gif" /><a href="Pro_Manage.aspx" target="mainFrame">商品管理</a></p>
<p><img src="images/dot.gif" /><a href="Pro_Class.aspx" target="mainFrame">类别管理</a></p>
</div></td>
</tr>
<%  }
    if (Session["Power"].ToString().Contains("0") == true || Session["Power"].ToString().Contains("3") == true)
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_5')"><img src="images/cms_menu_c.gif" alt="" border="0" /></td>
</tr>
<tr>
<td id="g_5"><div>
<p><img src="images/dot.gif" /><a href="News_Add.aspx" target="mainFrame">添加新闻</a></p>
<p><img src="images/dot.gif" /><a href="News_Manage.aspx" target="mainFrame">新闻管理</a></p>
<p><img src="images/dot.gif" /><a href="News_Class.aspx" target="mainFrame">新闻类别</a></p>
<p><img src="images/dot.gif" /><a href="Pic_Add.aspx" target="mainFrame">图片添加</a></p>
<p><img src="images/dot.gif" /><a href="Pic_Manage.aspx" target="mainFrame">图片管理</a></p>
</div></td>
</tr>
<%  }
    if (Session["Power"].ToString().Contains("0") == true || Session["Power"].ToString().Contains("2") == true)
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_7')"><img src="images/menu_dd.gif" alt="" border="0" /></td>
</tr>
<tr>
<td id="g_7"><div>
<p><img src="images/dot.gif" /><a href="Hr_Add.aspx" target="mainFrame">添加招聘信息</a></p>
<p><img src="images/dot.gif" /><a href="Hr_Manage.aspx" target="mainFrame">招聘信息管理</a></p>
<p><img src="images/dot.gif" /><a href="HrAcc_Manage.aspx" target="mainFrame">应聃信息管理</a></p>
</div></td>
</tr>
<%  }
    if (Session["Power"].ToString().Contains("0") == true || Session["Power"].ToString().Contains("4") == true)
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_8')"><img src="images/menu_dd1.gif" alt="" border="0" /></td>
</tr>
<tr>
<td id="g_8"><div>
<p><img src="images/dot.gif" /><a href="Ku_Add.aspx" target="mainFrame">添加子公司</a></p>
<p><img src="images/dot.gif" /><a href="Ku_Manage.aspx" target="mainFrame">子公司管理</a></p>
</div></td>
</tr>
<%  }
    if(Session["Power"].ToString().Contains("0"))
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_6')"><img src="images/menu_f.gif" alt="" border="0" /></td>
</tr>
<tr>
<td id="g_6"><div>
<p><img src="images/dot.gif" /><a href="Message.aspx" target="mainFrame">留言管理</a></p>
</div></td>
<%  }
    if(Session["Power"].ToString().Contains("0"))
    {
        %>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_10')"><img src="images/menu_e.gif" alt="" border="0" /></td>
</tr>
<tr>
<td id="g_10"><div>
<p><img src="images/dot.gif" /><a href="Link_Manage.aspx" target="mainFrame">链接管理</a></p>
</div></td>
</tr>
<%  }
    if(Session["Power"].ToString().Contains("0"))
    {
        %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_9')"><img src="images/menu_g.gif" alt="" border="0" /></td>
</tr>
<tr>
<td id="g_9"><div>
<p><img src="images/dot.gif" /><a href="BackDataBase.aspx" target="mainFrame">数据管理</a></p>
</div></td>
</tr>

<%  }
%>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_20')"><img src="images/menu_sj.gif" /></td>
</tr>
<tr>
<td id="g_20"><div>
<p><img src="images/dot.gif" /><a href="http://www.ruanhai.com/" target="_blank">设计制作：软海软件</a></p><br>                                                     
<p><img src="images/dot.gif" /><a href="http://www.ruanhai.com/" target="_blank">技术支持：软海软件 </a></p><br>
</div></td>
</tr>
<tr>
<td><img src="images/left_bottom.gif" alt="" /></td>
</tr>
</table>
    </div>
    </form>
</body>
</html>