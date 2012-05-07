<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        set_Active_Menu('contact');
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="container_12">
<div class="grid_8 page-1-col-1">
<div class="contact">
<div class="title">
<h2 style="margin: 0; font-size:18px;">
CÔNG TY CỔ PHẦN CÔNG NGHỆ THÔNG TIN TINH VIỆT</h2>
</div>
<div>
Địa chỉ: 32 Đường 18, P.Bình Trị Đông, Q.Bình Tân, Tp.HCM
<br>
Phone: +84 - 08 - 62601272 - 0917 377 999
<br>
Email: info@tranlegroup.com
<br>
Website: http://www.tranlegroup.com
</div>
<div class="contact_form">
<div class="title">
LIÊN HỆ QUA EMAIL
</div>
<div class="content">
<table style="width: 100%;" cellspacing="20">
<tbody>
<tr>
<td class="style1">
<b>Họ tên:</b> <span style="color: Red; display: none;" id="ctl00_cphContent_RequiredFieldValidator1">
*</span>
</td>
<td>
<input type="text" class="input-text" style="width: 350px; margin: 5px 0 5px 0;"
id="txtFullName" name="txtFullName">
</td>
</tr>
<tr>
<td class="style1">
<b>Email:</b> <span style="color: Red; display: none;" id="ctl00_cphContent_RequiredFieldValidator2">
*</span> <span style="color: Red; display: none;" id="ctl00_cphContent_RegularExpressionValidator1">
Email sai.</span>
</td>
<td>
<input type="text" style="width: 350px; margin: 5px 0 5px 0;" class="input-text"
id="ctl00_cphContent_txtEmail" name="ctl00$cphContent$txtEmail">
</td>
</tr>
<tr>
<td valign="top" class="style1">
<b>Thông điệp:</b> <span style="color: Red; display: none;" id="ctl00_cphContent_RequiredFieldValidator3">
*</span>
</td>
<td>
<textarea style="height: 200px; width: 350px; margin: 5px 0 5px 0;" class="input-text"
id="ctl00_cphContent_txtContent" cols="20" rows="2" name="ctl00$cphContent$txtContent"></textarea>
</td>
</tr>
</tbody>
</table>
<br>
<div style="padding-left: 100px">
<input type="submit" class="button" id="ctl00_cphContent_btnsendEmail" value="Gởi thông điệp"
name="ctl00$cphContent$btnsendEmail">
</div>
</div>
</div>
</div>
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
