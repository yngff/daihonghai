<!--
 * FCKeditor - The text editor for internet
 * Copyright (C) 2003-2006 Frederico Caldeira Knabben
 * 
 * Licensed under the terms of the GNU Lesser General Public License:
 * 		http://www.opensource.org/licenses/lgpl-license.php
 * 
 * For further information visit:
 * 		http://www.fckeditor.net/
 * 
 * "Support Open Source software. What about a donation today?"
 * 
 * File Name: config.asp
 * 	Configuration file for the File Manager Connector for ASP.
 * 
 * File Authors:
 * 		Frederico Caldeira Knabben (fredck@fckeditor.net)
-->
<%

' SECURITY: You must explicitelly enable this "connector" (set it to "True"). 
Dim ConfigIsEnabled
ConfigIsEnabled = true  '决定是否启用文件浏览器。这个是在服务器上执行的

' Path to user files relative to the document root.
Dim ConfigUserFilesPath
ConfigUserFilesPath = "/JInfang/UpLoad/" '上传文件的路径（相对的）

Dim ConfigAllowedExtensions, ConfigDeniedExtensions
Set ConfigAllowedExtensions	= CreateObject( "Scripting.Dictionary" )
Set ConfigDeniedExtensions	= CreateObject( "Scripting.Dictionary" )
'这是4个不同的filetype类型 分别对应了 前台编辑器的 插入链接 插入图片 插入flash 插入媒体 4个功能
ConfigAllowedExtensions.Add	"File", ""
ConfigDeniedExtensions.Add	"File", "php|php2|php3|php4|php5|phtml|pwml|inc|asp|aspx|ascx|jsp|cfm|cfc|pl|bat|exe|com|dll|vbs|js|reg|cgi"

ConfigAllowedExtensions.Add	"Image", "jpg|gif|jpeg|png|bmp"
ConfigDeniedExtensions.Add	"Image", ""

ConfigAllowedExtensions.Add	"Flash", "swf|fla"
ConfigDeniedExtensions.Add	"Flash", ""

ConfigAllowedExtensions.Add	"Media", "swf|fla|jpg|gif|jpeg|png|avi|mpg|mpeg|mp(1-4)|wma|wmv|wav|mid|midi|rmi|rm|ram|rmvb|mov|qt"
ConfigDeniedExtensions.Add	"Media", ""

%>