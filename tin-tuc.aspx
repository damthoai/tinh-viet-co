<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="container_12">
<div class="grid_8 page-1-col-1">
<h2 style="margin: 0 0 10px 0;">
Tin tức công nghệ
</h2>
<asp:ListView ID="listNews" runat="server" DataKeyNames="Id" EnableModelValidation="True"
OnPagePropertiesChanging="lst_bds_moinhat_PagePropertiesChanging">
<EmptyDataTemplate>
<p style="text-align: center;">
Không có dữ liệu.</p>
</EmptyDataTemplate>
<GroupTemplate>
<div id="itemPlaceholderContainer" runat="server">
<div id="itemPlaceholder" runat="server">
</div>
</div>
</GroupTemplate>
<ItemTemplate>
<div class="new">
<a href='chi_tiet_tin_tuc.aspx?Id=<%#Eval("Id") %>'>
<%--<img alt="" class="" src='<%#Eval("Images") %>' />--%>
<asp:Image runat="server" CssClass="strock" ID="imgImage" ImageUrl='<%#Eval("Images") %>' Width="120" Height="100" />
</a><a href='chi_tiet_tin_tuc.aspx?Id=<%#Eval("Id") %>'>
<%#Eval("Title") %>
</a>
<div class="date">

<%# Utilitys.parse_datetime_server(Eval("CreateAt").ToString()) %>
</div>
<%#Eval("Detail") %>

<div class="clear">
</div>
</div>
</ItemTemplate>
<LayoutTemplate>
<table id="Table1" runat="server" width="100%">
<tr id="Tr1" runat="server">
<td id="Td1" runat="server">
<div id="groupPlaceholderContainer" runat="server">
<div runat="server" id="groupPlaceholder">
</div>
</div>
</td>
</tr>
<tr id="Tr2" runat="server">
<td id="Td2" runat="server" style="">
<div class="pager" align="right">
<asp:DataPager ID="DataPager2" PageSize="5" PagedControlID="listNews" runat="server">
<Fields>
<asp:TemplatePagerField>
<PagerTemplate>
<div style="float: left; padding-top: 1px">
</div>
</PagerTemplate>
</asp:TemplatePagerField>
<asp:NextPreviousPagerField ButtonType="Image" FirstPageText="" ShowFirstPageButton="false"
ShowNextPageButton="false" ShowPreviousPageButton="true" PreviousPageText="" PreviousPageImageUrl="~/assets/images/previous.png"
RenderDisabledButtonsAsLabels="false" FirstPageImageUrl="" />
<asp:NumericPagerField ButtonCount="5" />
<asp:NextPreviousPagerField ButtonType="Image" LastPageText=""  ShowLastPageButton="false"
ShowNextPageButton="true" ShowPreviousPageButton="false" NextPageText="" NextPageImageUrl="~/assets/images/next_button.png"
RenderDisabledButtonsAsLabels="false" LastPageImageUrl="" />
</Fields>
</asp:DataPager>
</div>
</td>
</tr>
</table>
</LayoutTemplate>
</asp:ListView>

</div>
<div class="grid_4 page-1-col-2">


    <uc1:menu ID="menu1" runat="server" />


<h2>
Thiết kế web bằng css</h2>
<ul class="list-1">
<li><a href="#">Format các thể chuẩn của HTML</a></li>
<li><a href="#">Float hình trong paragraph</a></li>
<li><a href="#">Tạo background cho website</a></li>
<li><a href="#">Tạo Icon, Bullet cho Heading, h1, h2</a></li>
<li><a href="#">Rounded Corner - phần 1</a></li>
<li><a href="#">Sử dụng CSS để tạo ra Drop Shadows </a></li>
</ul>
<h2>
Thiết kế quảng cáo</h2>
<div class="Avdcontent">
<div align="center" class="adv_d">
<a title="Thiết kế logo cho web" href="thiet-ke-quang-cao.aspx">
<img src="assets/imgs/logo_design.jpg" title="Thiết Kế Logo miễn phí cho web" style="border: 1px solid #eeeeee;"
alt="thiet ke logo cho web">
<span>Thiết kế logo </span></a>
</div>
<div class="w14">
&nbsp;</div>
<div align="center" class="adv_d">
<a title="Giảm 20% chi phí khi thiết kế web tại Đàm Lê" href="thiet-ke-quang-cao.aspx">
<img src="assets/imgs/catalog_design.jpg" title="Giảm 20% chi phí khi thiết kế web chọn gói"
style="border: 1px solid #eeeeee;" alt="thiet ke Catalog">
<span>Thiết kế Catalog </span></a>
</div>
<div class="clear">
</div>
<div class="h10">
</div>
<div align="center" class="adv_d">
<a title="Miễn phí chi phí thiết kế khi thiết kế web tại Đàm Lê" href="thiet-ke-quang-cao.aspx">
<img src="assets/imgs/Brochure_design.jpg" title="Thiết kế brochure - Đàm Lê" style="border: 1px solid #eeeeee;"
alt="thiet ke Brochure">
<span>Thiết kế Brochure </span></a>
</div>
<div class="w14">
&nbsp;</div>
<div align="center" class="adv_d">
<a title="Miễn phí chi phí thiết kế khi thiết kế web tại Đàm Lê" href="thiet-ke-quang-cao.aspx">
<img src="assets/imgs/poster_design.jpg" title="Thiết Kế Poster - Đàm Lê" style="border: 1px solid #eeeeee;"
alt="thiet ke Poster">
<span>Thiết kế Poster </span></a>
</div>
<div class="clear">
</div>
</div>
<h2>
Tư vấn - hổ trợ kỹ thuật</h2>
<div class="Avdcontent">
<div align="center" class="support">
<div class="tt">
Kỹ thuật
</div>
<a target="_blank" title="Tư vấn Thiết Kế Web - Mr. Chí Thoại" href="ymsgr:sendIM?damchithoai87">
<img border="0" alt="damchithoai87@yahoo.com" title="YM! Tư vấn thiết kế web" src="http://opi.yahoo.com/online?u=damchithoai87&amp;m=g&amp;t=1">
</a>
<div class="inf">
Mr. Thoại
<br>
098 980 5472
</div>
</div>
<div align="center" class="support">
<div class="tt">
Kỹ thuật
</div>
<a target="_blank" title="Tư vấn Thiết Kế Phần mềm - Mr. Hồng Chinh" href="ymsgr:sendIM?lhchinhit">
<img border="0" alt="lhchinhit@yahoo.com" title="YM! Tư vấn thiết kế phần mềm" src="http://opi.yahoo.com/online?u=lhchinhit&amp;m=g&amp;t=1"></a>
<div class="inf">
Mr. Chinh
<br>
093 927 1981
</div>
</div>
<div class="clear">
</div>
</div>
</div>
<div class="clear">
</div>
</div>
</asp:Content>
