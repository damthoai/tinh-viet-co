<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="NewsDisplay.aspx.cs" Inherits="Admin_NewsDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
<asp:Panel ID="pnlCreateMaHD" GroupingText="VIEW NEWS" runat="server">
<center>
</center>
<table class="tbl" cellpadding="4" cellspacing="4" width="100%">
<colgroup>
<col width="20%">
<col width="80%">
</colgroup>
<tr>
<td>
News Id:
</td>
<td>
<asp:Label runat="server" ID="lblId" CssClass="bold"></asp:Label>
</td>
</tr>
<tr>
<td>
Category:
</td>
<td>
<asp:Label runat="server" ID="lblCatName" CssClass="bold"></asp:Label>
</td>
</tr>
<tr>
<td class="tbll" valign="top">
Images:
</td>
<td>
<asp:Image runat="server" Width="120" Height="120" ID="imgImages" />
</td>
</tr>
<tr>
<td class="tbll">
Title:
</td>
<td>
<asp:Label runat="server" ID="lblTitle" CssClass="bold"></asp:Label>
</td>
</tr>
<tr>
<td class="tbll" valign="top">
    Detail:
</td>
<td>
<asp:Label runat="server" ID="lblDetail" CssClass="bold"></asp:Label>
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
<td class="tbll" valign="top">
Content:
</td>
<td>
<asp:Label runat="server" ID="lblContent" CssClass="bold"></asp:Label>
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

