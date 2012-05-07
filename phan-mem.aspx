<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="phan-mem.aspx.cs" Inherits="phan_mem" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        set_Active_Menu('soflDesign');
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container_12">
<div class="grid_8 page-1-col-1">
<h2 style="margin:0 0 10px 0;">DỊCH VỤ PHẦN MỀM - PHẦN MỀM QUẢN LÝ - PHẦN MỀM DOANH NGHIỆP</h2>

<div class="gad">
        <h3>Phần mềm hỗ trợ kinh doanh</h3>
        <br>
        - Hệ thống phần mềm quản lý công văn
        <br>
        - Hệ thống phần mềm quản lý nhân sự
        <br>
        - Hệ thống phần mềm quản lý khách hàng
        <br>
        - Hệ thống phần mềm quản lý bán hàng
        <br>
        - Hệ thống phần mềm quản lý doanh nghiệp.
        <br>
        <br>
        <h3>Phần mềm hỗ trợ mạng</h3>
        <br>
        - Hỗ trợ sự ổn định, tăng tốc độ của hệ thống mạng
        <br>
        - Quản lý thư điện tử dành cho máy chủ
        <br>
        - Phân quyền quản lý hệ thống
        <br>
        - Bảo mật dữ liệu
        <br>
        <br>
        <h3>Phần mềm bảo mật </h3>
        <br>
        - Hệ thống bảo mật thông tin
        <br>
        - Chống xâm nhập từ bên ngoài
        <br>
        - Ngăn ngừa và diệt virus, trojan, spam
        <br>
        - Chống ăn cắp bản quyền
        <br>
        <br>
        <h3>Phần mềm tiện ích</h3>
        <br>
        - Sử dụng máy tính hiệu quả hơn
        <br>
        - Hỗ trợ các phần mềm khác
        <br>
        - Tiện ích khi lướt web
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

