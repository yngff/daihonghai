<%@ Page Language="C#" AutoEventWireup="true" Inherits="_Default, www_deploy" %>

<%--<%@ Register Src="include/contact.ascx" TagName="contact" TagPrefix="uc4" %>--%>
<%@ Register Src="include/login.ascx" TagName="login" TagPrefix="uc3" %>
<%@ Register Src="include/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="include/bottom.ascx" TagName="bottom" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <%=Application["site_title"]%></title>
    <meta name="keywords" content="<%=Application["site_keyword"]%>" />
    <meta name="description" content="<%=Application["miaoshu"]%>" />
    <meta name="searchtitle" content="<%=Application["site_title"]%>" />
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <link href="css/css1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-family: "新宋体";
            font-size: 14px;
            font-weight: bold;
            color: #000000;
            text-decoration: none;
            letter-spacing: 2px;
            line-height: 25px;
            width: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:top ID="Top1" runat="server" />
    <table width="983" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="983">
                <img src="images/top.jpg" width="983" />
            </td>
        </tr>
        <tr>
            <td>
                <!--导航-->
                <div class="mainbav s1" align="right">
                    <span class="floatr" style="right: auto; font-size: medium; height:100"><a href="Default.aspx">
                        首页</a> | <a href="about.aspx">艺术简介</a> | <a href="news.aspx">
                            新闻动态</a> | <a href="culturea.aspx">企业文化</a> | <a href="company.aspx">
                                产业</a> | <a href="cause.aspx">获奖收藏</a> | <a href="about.aspx/?id=8">
                                    出版著作</a> | <a href="message.aspx">交流园地</a>
                    </span>
                </div>
            </td>
        </tr>
    </table>
    <table width="983" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="60" class="header_bj">
                <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="26" height="13">
                            <img src="images/index_08.gif" width="13" height="13" />
                        </td>
                        <td width="774" class="header_font_01">
                            <marquee scrollamount="4" width="600" onmouseover="stop()" onmouseout="start()">
               <a href="GG.aspx"><%=g_title %></a></marquee>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="983" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="328" valign="top" bgcolor="#FFFFFF">
                <table width="865" height="219" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="238" valign="top">
                            <table width="200" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="9">
                                    </td>
                                </tr>
                            </table>
                            <table width="200" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <a href="Culture.aspx">
                                            <img src="images/selfinfo.jpg" width="224" border="0" /></a>
                                    </td>
                                </tr>
                            </table>
                            <table width="200" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="9">
                                    </td>
                                </tr>
                            </table>
<%--                            <uc4:contact ID="Contact1" runat="server" />--%>
                        </td>
                        <td width="794" valign="top">
                            <table width="550" height="233" border="0" align="center" cellpadding="0" cellspacing="1"
                                bgcolor="#e7e7e7">
                                <tr>
                                    <td height="231" valign="top" bgcolor="#FFFFFF">
                                        <br />
                                        <table width="514" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="style1">
                                                    最新资讯
                                                </td>
                                                <td width="44" class="sidebar_font_02">
                                                    <a href="News.aspx">
                                                        <img src="images/index_16.gif" width="35" height="5" border="0" /></a>
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="533" height="12" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="5" class="column_line">
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:Repeater runat="server" ID="rtAction">
                                            <ItemTemplate>
                                                <table width="537" height="27" border="0" align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="27">
                                                            · <a href="NewsDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>" target="_blank">
                                                                <%# bc.ChgName(DataBinder.Eval(Container.DataItem, "title"),36)%></a>
                                                        </td>
                                                        <td width="70">
                                                            <span class="column_font_03">[<%# DataBinder.Eval(Container.DataItem,"updatetime","{0:yyyy-MM-dd}") %>]</span>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table width="539" border="0" align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="1" bgcolor="#e6e6e6">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="33" valign="top">
                            <table width="30" height="169" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="column_font_02">
                                        <asp:Label runat="server" ID="lblCulture" Visible="False"></asp:Label>
                                    </td>
                                    <td height="169" class="sindebar_bj" valign="top">
                                        <asp:Repeater runat="server" ID="rtCompany" Visible="false">
                                            <ItemTemplate>
                                                · <a href="ComDetail.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>">
                                                    <%# DataBinder.Eval(Container.DataItem, "k_title")%></a>
                                                <br />
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="983" height="76" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" valign="top" bgcolor="#FFFFFF">
                <br />
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <img src="images/index_03.gif" width="869" height="31" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <uc2:bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>
