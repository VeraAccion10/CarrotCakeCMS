﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucBlogMenuItems.ascx.cs" Inherits="Carrotware.CMS.UI.Admin.c3_admin.ucBlogMenuItems" %>
<div>
	<table style="width: 625px;">
		<tr>
			<td style="width: 48%;">
				<a href="BlogPostIndex.aspx">
					<img class="imgNoBorder" src="/c3-admin/images/table.png" alt="View Blog Index" title="View Blog Index" />
					View Blog Index</a>
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			<td style="width: 48%;">
				<a href="BlogPostTemplateUpdate.aspx">
					<img class="imgNoBorder" src="/c3-admin/images/overlays.png" alt="Apply Skins" title="Bulk Apply Templates/Skins" />
					Bulk Apply Templates/Skins</a>
			</td>
		</tr>
		<%--		<tr>
			<td style="width: 48%;">
				<a href="PageImport.aspx">
					<img class="imgNoBorder"  src="/c3-admin/images/book_previous.png" alt="Blog" title="Import Blog" />
					Import Blog Post</a>
			</td>
			<td>
				&nbsp;
			</td>
			<td style="width: 48%;">
				&nbsp;
			</td>
		</tr>--%>
		<tr>
			<td style="width: 48%;">
				<a href="BlogPostAddEdit.aspx?id=">
					<img class="imgNoBorder" src="/c3-admin/images/add.png" alt="Add" title="Add as WYSIWYG" />
					Add Blog Post (with HTML editor)</a>
			</td>
			<td>
				&nbsp;
			</td>
			<td style="width: 48%;">
				<a href="BlogPostAddEdit.aspx?mode=raw&id=">
					<img class="imgNoBorder" src="/c3-admin/images/script_add.png" alt="Add" title="Add as Plain Text" />
					Add Blog Post (as plain text)</a>
			</td>
		</tr>
	</table>
</div>
<br />