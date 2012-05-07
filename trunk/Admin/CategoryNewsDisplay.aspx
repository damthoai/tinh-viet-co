<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true"
CodeFile="CategoryNewsDisplay.aspx.cs" Inherits="Admin_CategoryNewsDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:UpdatePanel runat="server" ID="updatepanel11">
<ContentTemplate>
<asp:Panel ID="pnlToolbar" runat="server" CssClass="radtoolbar chucnang">
&nbsp;<asp:Button runat="server" ID="btnGoback" ValidationGroup="emp" CssClass="back dialog"
Text="Go back" OnClick="btnGoback_Click" />
&nbsp;
<asp:Button runat="server" ID="btnEdit" ValidationGroup="emp" CssClass="edit dialog"
Text="Edit" OnClick="btnEdit_Click" />
</asp:Panel>
</ContentTemplate>
</asp:UpdatePanel>
<asp:UpdatePanel runat="server" ID="updatepannel1">
<ContentTemplate>
<asp:Panel ID="pnlCreateMaHD" GroupingText="VIEW CATEGORY NEW" runat="server">
<center>
</center>
<table class="tbl" cellpadding="4" cellspacing="4" width="100%">
<colgroup>
<col width="20%">
<col width="80%">
</colgroup>
<tr>
<td>
Category Name:
</td>
<td>
<asp:Label runat="server" ID="lblCatName" CssClass="bold"></asp:Label>
</td>
</tr>
<tr>
<td class="tbll">
Category Code:
</td>
<td>
<asp:Label runat="server" ID="lblCatCode" CssClass="bold"></asp:Label>
</td>
</tr>
<tr>
<td class="tbll">
Create At:
</td>
<td>
<asp:Label runat="server" ID="lblCreateAt" CssClass="bold"></asp:Label>
</td>
</tr>
<tr>
<td>
Create By:
</td>
<td>
<asp:Label runat="server" ID="lblCreateBy" CssClass="bold"></asp:Label>
</td>
</tr>
<tr>
<td colspan="2">
<br />

</td>
</tr>
</table>
</asp:Panel>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
