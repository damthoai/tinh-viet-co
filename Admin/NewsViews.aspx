<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="NewsViews.aspx.cs" Inherits="Admin_NewsViews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:UpdatePanel runat="server" ID="updatepanel11">
<ContentTemplate>
<asp:Panel ID="pnlToolbar" runat="server" CssClass="radtoolbar chucnang">
&nbsp;<asp:Button runat="server" ID="btnAddNew" ValidationGroup="emp" CssClass="addNew dialog" 
Text="Add New" OnClick="btnAddNew_Click" />
&nbsp;
<asp:TextBox runat="server" ID="txtSearch" CssClass="text"></asp:TextBox>
&nbsp;
<asp:ImageButton runat="server" ID="btnSearch" ToolTip="Search" ImageUrl="~/assets/imgs/search.png"
OnClick="btnSearch_Click" />
</asp:Panel>
</ContentTemplate>
</asp:UpdatePanel>

<asp:UpdatePanel runat="server" ID="Uppan1">
<contenttemplate>

<asp:GridView ID="GridNews" runat="server" Width="100%" BackColor="White"
BorderColor="#160a10" BorderStyle="Solid" BorderWidth="1px" CellPadding="0" EnableModelValidation="True"
ForeColor="#160a10" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ID"
CssClass="gridview" ShowFooter="false" AllowPaging="True" AllowSorting="True" 
        PageSize="30" onpageindexchanging="GridNews_PageIndexChanging" >
<AlternatingRowStyle BackColor="White" />
<EmptyDataTemplate>
<center>
Không có dữ liệu</center>
</EmptyDataTemplate>
<PagerSettings Mode="NumericFirstLast" FirstPageText="Trang đầu" LastPageText="Trang cuối" />
<Columns>
<asp:TemplateField HeaderText="No.">
<ItemTemplate>
<%#Container.DataItemIndex + 1 %>
</ItemTemplate>
<ItemStyle Width="3%" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Category">
<ItemTemplate>
<asp:Label runat="server" ID="lblCategory" Text='<%#Eval("CateNewName") %> '></asp:Label>
</ItemTemplate>
<ItemStyle Width="6%" />
</asp:TemplateField>

<asp:TemplateField HeaderText="Title">
<ItemTemplate>
<asp:Label runat="server" ID="lblTitle" Text='<%#Eval("Title") %> '></asp:Label>
</ItemTemplate>
<ItemStyle Width="6%" />
</asp:TemplateField>

<asp:TemplateField HeaderText="Detail">
<ItemTemplate>
<asp:Label runat="server" ID="lblDetail" Text='<%#Eval("Detail") %> '></asp:Label>
</ItemTemplate>
<ItemStyle Width="6%" />
</asp:TemplateField>

<asp:TemplateField HeaderText="Create At">
<ItemTemplate>
<asp:Label runat="server" ID="lblCarriageForward" Text='<%#Eval("CreateAt") %> '></asp:Label>
</ItemTemplate>
<ItemStyle Width="6%" />
</asp:TemplateField>

<asp:TemplateField HeaderText="Create By">
<ItemTemplate>
<asp:Label runat="server" ID="lblAdditionFee" Text='<%#Eval("CreateBy") %> '></asp:Label>
</ItemTemplate>
<ItemStyle Width="6%" />
</asp:TemplateField>

<asp:TemplateField HeaderText="Function" >
<ItemTemplate>
<asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CommandName='<%#Eval("Id") %>' onclick="btnEdit_Click"></asp:LinkButton> | 
<asp:LinkButton runat="server" ID="btnView" Text="View" CommandName='<%#Eval("Id") %>' onclick="btnView_Click"></asp:LinkButton>
</ItemTemplate>
<ItemStyle Width="6%" />
<ItemStyle HorizontalAlign="Center" />
</asp:TemplateField>

</Columns>
<FooterStyle BackColor="#CCCC99" />
<HeaderStyle BackColor="#aedef8" Font-Bold="True" BorderColor="#9cb6c5" BorderStyle="Solid"
BorderWidth="1" Font-Size="13px" ForeColor="#160a10" Height="25px" />
<PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" BorderColor="#160a10"
BorderStyle="Solid" BorderWidth="1px" />
<RowStyle BackColor="#F7F7DE" Height="25px" BorderColor="#ebeef6" />
<SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView>

</contenttemplate>
</asp:UpdatePanel>


</asp:Content>

