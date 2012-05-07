<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="NewsEdit.aspx.cs" Inherits="Admin_NewsEdit" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
	<script src="../ckeditor/_samples/sample.css" type="text/javascript"></script>
	<link href="../ckeditor/_samples/sample.css" rel="stylesheet" type="text/css" />
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
<asp:Panel ID="pnlCreateMaHD" GroupingText="NEWS INFOMATION" runat="server">
<center>
</center>
<table class="tbl" cellpadding="4" cellspacing="4" width="100%">
<colgroup>
<col width="20%">
<col width="80%">
</colgroup>
<tr>
<td>
Category:
</td>
<td>
<asp:DropDownList runat="server" ID="cmbCatNews" CssClass="text"></asp:DropDownList>
</td>
</tr>
<tr>
<td class="tbll">
Title:
</td>
<td>
<asp:TextBox runat="server" ID="txtTitle" CssClass="text" Width="600"></asp:TextBox>
</td>
</tr>
<tr>
<td class="tbll" valign="top">
Images:
</td>
<td valign="top">
<asp:FileUpload runat="server" ID="fupImages" CssClass="text" /> 
    &nbsp;&nbsp;&nbsp; 
<asp:Button runat="server" ID="btnUploadImages" Text="Upload Images" 
        onclick="btnUploadImages_Click" />
<asp:Image runat="server" ID="imgImages" Visible="false" Width="120" Height="120" />
</td>
</tr>
<tr>
<td class="tbll" valign="top">
Detail:
</td>
<td>
<%--<textarea class="ckeditor" cols="50" id="editor1" name="editor1" rows="3" runat="server"></textarea>--%>
<asp:TextBox runat="server" ID="editor1" CssClass="ckeditor" Rows="5" Columns="50" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<tr>
<td class="tbll" valign="top">
Content:
</td>
<td>
<%--<textarea class="ckeditor" cols="50" id="editor2" name="editor2" rows="5" runat="server"></textarea>--%>
<asp:TextBox runat="server" ID="editor2" CssClass="ckeditor" Rows="10" TextMode="MultiLine" Columns="50"></asp:TextBox>
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
<Triggers>
<asp:PostBackTrigger ControlID="btnUploadImages" />
</Triggers>
</asp:UpdatePanel>
</asp:Content>

