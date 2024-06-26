﻿<%@ Page Title="User Group Add/Edit" Language="C#" MasterPageFile="~/c3-admin/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="UserGroupAddEdit.aspx.cs"
	Inherits="Carrotware.CMS.UI.Admin.c3_admin.UserGroupAddEdit" %>

<%@ MasterType VirtualPath="MasterPages/Main.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
	<script src="Includes/FindUsers.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			initFindUsers("<%=hdnUserID.ClientID %>", "<%=txtSearch.ClientID %>");
		});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="H1ContentPlaceHolder" runat="server">
	User Group Add/Edit
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
	<fieldset style="width: 400px;">
		<legend>
			<label>
				Role
			</label>
		</legend>
		<p>
			name:
			<asp:TextBox ValidationGroup="editGroupName" ID="txtRoleName" onkeypress="return ProcessKeyPress(event)" Width="300px" MaxLength="100" runat="server" />
			<asp:RequiredFieldValidator ValidationGroup="editGroupName" CssClass="validationError" ForeColor="" ControlToValidate="txtRoleName" ID="RequiredFieldValidator1"
				runat="server" ErrorMessage="Role Name is required" ToolTip="Role Name is required" Display="Dynamic" Text="**" />
		</p>
		<p>
			<br />
			<asp:Button ValidationGroup="editGroupName" ID="btnApply" runat="server" Text="Save" OnClick="btnApply_Click" />
			<input type="button" id="btnCancel" runat="server" value="Cancel" onclick="javascript:window.location='./UserGroups.aspx';" />
			<br />
		</p>
	</fieldset>
	<asp:Panel ID="pnlUsers" runat="server" Visible="false">
		<table>
			<tr>
				<td>
					<fieldset style="width: 450px;">
						<legend>
							<label>
								Users
							</label>
						</legend>
						<br />
						<div class="SortableGrid" style="width: 450px;">
							<carrot:CarrotGridView CssClass="datatable" DefaultSort="Email ASC" ID="gvUsers" runat="server" AutoGenerateColumns="false" HeaderStyle-CssClass="tablehead"
								AlternatingRowStyle-CssClass="rowalt" RowStyle-CssClass="rowregular">
								<EmptyDataTemplate>
									<p>
										<b>No users found.</b>
									</p>
								</EmptyDataTemplate>
								<Columns>
									<asp:TemplateField>
										<ItemTemplate>
											<asp:CheckBox ValidationGroup="removeUsers" ID="chkSelected" runat="server" />
											<asp:HiddenField Value='<%#Eval("UserName") %>' ID="hdnUserName" runat="server" Visible="false" />
											<asp:HiddenField Value='<%#Eval("ProviderUserKey") %>' ID="hdnUserId" runat="server" Visible="false" />
										</ItemTemplate>
									</asp:TemplateField>
									<asp:BoundField DataField="UserName" HeaderText="User Name" />
									<asp:BoundField DataField="Email" HeaderText="Email" />
								</Columns>
							</carrot:CarrotGridView>
						</div>
						<br />
						<p>
							<asp:Button ValidationGroup="removeUsers" ID="btnRemove" runat="server" Text="Remove Selected" OnClick="btnRemove_Click" />
						</p>
					</fieldset>
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;
				</td>
				<td>
					<fieldset style="width: 400px;">
						<legend>
							<label>
								Add Users
							</label>
						</legend>
						<div style="width: 400px;">
							<p>
								Search for users to add to this group. Search by either username or email address.
							</p>
							<p>
								<b>Search: </b><span id="spanResults"></span>
								<asp:TextBox ValidationGroup="addUsers" ID="txtSearch" onkeypress="return ProcessKeyPress(event)" Width="350px" MaxLength="100" runat="server" />
								<asp:RequiredFieldValidator ValidationGroup="addUsers" CssClass="validationError" ForeColor="" ControlToValidate="txtSearch" ID="RequiredFieldValidator3"
									runat="server" ErrorMessage="Required" Display="Dynamic" />
								<asp:HiddenField ID="hdnUserID" runat="server" />
							</p>
							<p style="text-align: right;">
								<asp:Button ValidationGroup="addUsers" ID="btnAddUsers" runat="server" Text="Add User" OnClick="btnAddUsers_Click" />
							</p>
						</div>
					</fieldset>
				</td>
			</tr>
		</table>
	</asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="NoAjaxContentPlaceHolder" runat="server">
</asp:Content>