<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
CodeFile="hosting.aspx.cs" Inherits="hosting" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        set_Active_Menu('hosting');
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="container_12">
<div class="grid_8 page-1-col-1">
<h2 style="margin: 0; margin-bottom: 5px;">
WEB HOSTING - LƯU TRỮ WEB
</h2>
<div>
Bên cạnh dịch vụ <b>thiết kế, xây dựng và quảng bá website</b>, Tinh Việt còn là nhà
cung cấp uy tính các dịch vụ <b>lưu trữ web (web hosting)</b> với chất lượng ổn
định, không giới hạn dung lượng. Server của chúng tôi, một được đặt ở Houston, Texas
và một đặt trực tiếp tại Việt Nam với băng tần rộng và băng thông cao, đươc giám
sát chặt chẽ 24/7/365 để đảm bảo tính ổn định của dịch vụ.
<ul style="font-style: italic; list-style-type: circle; margin: 20px 20px 20px 20px;">
<li>Số lượng website đặt trên 1 server rất ít nên đảm bảo được tốc độ cao của website
</li>
<li>Website hoạt động liên tục 24/7/365 </li>
<li>Quý khách sẽ được hỗ trợ kỹ thuật và tư vấn miễn phí </li>
<li>Hướng dẫn và cài đặt email miễn phí </li>
<li>Hệ thống backup dữ liệu </li>
</ul>
<div>
Hãy gọi cho chúng tôi để được tư vấn trực tiếp các gói dịch vụ.
</div>
<div>
<table class="gtc" width="100%">
<tbody>
<tr>
<td class="sub" colspan="6">
<div style="background-color: #fbfbfb; color: #FFF; font-weight: bold; text-align: center;">
<h2 style="margin: 0;">
Bảng Giá Chi Tiết</h2>
</div>
</td>
</tr>
<tr>
<td>
<b>Đặc tính server</b>
</td>
<td>
<b>Plan 1</b>
</td>
<td>
<b>Plan 2</b>
</td>
<td>
<b>Plan 3</b>
</td>
<td>
<b>Plan 4</b>
</td>
<td>
<b>Plan 5</b>
</td>
</tr>
<tr>
<td>
Dung lượng đĩa cứng
</td>
<td>
100 MB
</td>
<td>
750 MB
</td>
<td>
1500 MB
</td>
<td>
2000 MB
</td>
<td>
2500 MB
</td>
</tr>
<tr>
<td>
Dung lượng truy cập tối đa hàng tháng
</td>
<td>
2500 MB
</td>
<td>
7500 MB
</td>
<td>
15000 MB
</td>
<td>
25000 MB
</td>
<td>
50000 MB
</td>
</tr>
<tr>
<td>
Số lượng hộp thư POP3
</td>
<td>
10
</td>
<td>
20
</td>
<td>
60
</td>
<td>
80
</td>
<td>
200
</td>
</tr>
<tr>
<td>
Số lượng subdomain
</td>
<td>
1
</td>
<td>
5
</td>
<td>
10
</td>
<td>
20
</td>
<td>
30
</td>
</tr>
<tr>
<td>
ASP/ASP.NET
</td>
<td class="checked">
</td>
<td class="checked">
</td>
<td class="checked">
</td>
<td class="checked">
</td>
<td class="checked">
</td>
</tr>
<tr>
<td>
PHP5
</td>
<td class="checked">
</td>
<td class="checked">
</td>
<td class="checked">
</td>
<td class="checked">
</td>
<td class="checked">
</td>
</tr>
<tr>
<td>
MySQL 5
</td>
<td>
1
</td>
<td>
5
</td>
<td>
10
</td>
<td>
20
</td>
<td>
30
</td>
</tr>
<tr>
<td>
SQL Database
</td>
<td>
0
</td>
<td>
2
</td>
<td>
3
</td>
<td>
4
</td>
<td>
5
</td>
</tr>
<tr>
<td>
Chi Phí
</td>
<td>
$5/tháng
</td>
<td>
$8/tháng
</td>
<td>
$12/tháng
</td>
<td>
$15/tháng
</td>
<td>
$20/tháng
</td>
</tr>
</tbody>
</table>
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
