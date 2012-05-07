<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="CategoryNewsEdit.aspx.cs" Inherits="Admin_CategoryNewsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Panel ID="pnlToolbar" runat="server" CssClass="radtoolbar chucnang">
&nbsp;<asp:Button runat="server" ID="btnGoback" ValidationGroup="emp" CssClass="back dialog"
Text="Go back" OnClick="btnGoback_Click" />
&nbsp;
<asp:Button runat="server" ID="btnSave" ValidationGroup="emp" CssClass="save dialog"
Text="Save" onclick="btnSave_Click" />
</asp:Panel>


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
<asp:TextBox runat="server" ID="txtName" CssClass="text" ></asp:TextBox>
</td>
</tr>
<tr>
<td class="tbll">
Category Code:
</td>
<td>
<asp:TextBox runat="server" ID="txtCatCode" CssClass="text"></asp:TextBox>
</td>
</tr>
<tr>
<td class="tbll">
Create At:
</td>
<td>
<asp:TextBox runat="server" ID="txtCreateAt" CssClass="text" ReadOnly="true"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Create By:
</td>
<td>
<asp:TextBox runat="server" ID="txtCreateBy" CssClass="text" ReadOnly="true"></asp:TextBox>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Label ID="lblResult" runat="server" CssClass="bold red"></asp:Label>

</td>
</tr>
</table>
</asp:Panel>
</ContentTemplate>

</asp:UpdatePanel>
</asp:Content>

