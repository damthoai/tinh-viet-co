<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
CodeFile="trang-chu.aspx.cs" Inherits="trang_chu" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript">
    $(window).load(function () {
        $('.slider')._TMS({
            prevBu: '.prev',
            nextBu: '.next',
            pauseOnHover: true,
            pagNums: false,
            duration: 800,
            easing: 'easeOutQuad',
            preset: 'Fade',
            slideshow: 7000,
            pagination: '.pagination',
            banners: 'fromTop'
        })
    })
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="container_12">
<div class="grid_12 slider-block">
<div class="slider">
<ul class="items">
<li>
<img src="assets/images/slider-1.jpg" alt=""><div class="banner">
<p >
<strong style="font-size:45px;">Website</strong></p>
<p>
<strong>Design</strong></p>
</div>
</li>
<li>
<img src="assets/images/slider-2.jpg" alt=""><div class="banner banner-right">
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Advertisment</strong></p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;design!</p>
</div>
</li>
<li>
<img src="assets/images/slider-3.jpg" alt="" /><div class="banner">
<p>
<strong></strong>Develop</p>
<p>
<strong>Soflware</strong> </p>
</div>
</li>

</ul>
<div class="pagination">
<ul>
<li><a href="#"></a></li>
<li><a href="#"></a></li>
<li><a href="#"></a></li>
<li><a href="#"></a></li>
</ul>
</div>
</div>
</div>
<div class="grid_12 boxes">
<a href="#" class="box-1 border-radius">
<img src="assets/images/box-1-img.png" alt="">
<p class="color-1" style="text-align:center;">
Website
<br />
design</p>
<strong class="button-3 clr-1"><span>Chi tiết</span></strong> </a><a href="#" class="box-2 border-radius">
<img src="assets/images/box-2-img.png" alt="">
<p class="color-1"  style="text-align:center;">
Software develop</p>
<strong class="button-3 clr-2"><span>Chi tiết</span></strong> </a><a href="#" class="box-3 border-radius">
<img src="assets/images/box-3-img.png" alt="">
<p class="color-1"  style="text-align:center;">
Hosting <br /> &amp; domain</p>
<strong class="button-3 clr-3"><span>Chi tiết</span></strong> </a><a href="#" class="box-4 border-radius">
<img src="assets/images/box-4-img.png" alt="">
<p class="color-1" style="text-align:center;" >
Email
<br />
marketing</p>
<strong class="button-3 clr-4"><span>Chi tiết</span></strong> </a><a href="#" class="box-5 border-radius">
<img src="assets/images/box-5-img.png" alt="">
<p class="color-1" style="text-align:center;">
google Adwords</p>
<strong class="button-3 clr-5"><span>Chi tiết</span></strong> </a><a href="#" class="box-6 border-radius last">
<img src="assets/images/box-6-img.png" alt="">
<p class="color-1" style="text-align:center;">
Advertising design</p>
<strong class="button-3 clr-6"><span>Chi tiết</span></strong> </a>
</div>
<div class="grid_8 page-1-col-1">
<img alt="thiết kế web" src="assets/imgs/web_ds_icon.jpg" style="border: 1px solid #ccc;
float: left; margin: 0 20px 20px 0;" />
<div class="color-2-block">
<h2 style="margin: 0;">
Thiết kế web </h2>
</div>
<p class="">
Với những công cụ <b>thiết kế web</b> mới nhất hiện nay và một qui trình <b>thiết
kế website chuyên nghiệp</b> chúng tôi đảm bảo rằng <b>dự án thiết kế web</b> được
thực hiện đúng theo yêu cầu của quý khách cùng với một thời gian hợp lý.
</p>
<p class="">
<br>
Với giá cả <b>thiết kế web</b> thật hợp lý và được xem là công ty <b>thiết kế web
có giá thiết kế tốt nhất</b> so với các dịch vụ thiết kế web khác. Doanh nghiệp,
tổ chức hoặc cá nhân bạn sẽ sở hữu một web được thiết kế chuyên nghiệp với mức giá
cạnh tranh nhất.
</p>
<div class="wrapper">
<b>Bạn nhận được gì khi Thiết Kế Web tại TINH VIỆT?</b>
<ul class="pack">
<li><b>Thiết kế web tỉ mỉ, chuyên nghiệp, hài hòa.</b></li>
<li>Lập trình ổn định, bảo mật.</li>
<li>Tối ưu hóa tốc độ load web.</li>
<li>Hiển thị tốt trên tất cả trình duyệt.(IE, Firefox, Safari...)</li>
<li>Bảo trì, bảo dưỡng web tốt.</li>
<li>Giá cả cạnh tranh, hợp lý.</li>
<li>Chăm sóc khách hàng chu đáo.</li>
<li>Cùng nhiều chế độ hậu mãi hấp dẫn khác.</li>
</ul>
</div>
<div style="background-color: #fbfbfb; color: #959494; font-weight: bold; text-align: center;
padding: 5px; margin-top: 20px">
<h2 style="margin:0;">THIẾT KẾ WEB TRỌN GÓI</h2>
</div>
<br />
<%--<table cellspacing="10" width="100%" class="gtk">
<tbody>
<tr>
<td>
<div class="wd">
<div class="tit">
<p style="font-size: 12px; margin: 0;">
Thiết kế web giới thiệu doanh nghiệp</p>
</div>
<div>
<b>Chức năng web:</b>
<ul class="pack">
<li>Trang chủ (có flash banner)</li>
<li>Trang giới thiệu công ty</li>
<li>Trang tin tức</li>
<li>Tìm kiếm tin tức</li>
<li>Album ảnh</li>
<li>Tuyển dụng</li>
<li>Thăm dò ý kiến</li>
<li>Thống kê truy cập, online</li>
<li>Banner quảng cáo</li>
<li>Tỉ giá, thời tiết</li>
<li>Liên Hệ</li>
<li>Hệ thống quản trị tin tức
<ul style="margin-left: 10px">
<li>Đăng nhập, thay đổi mật khẩu</li>
<li>Phân cấp quản trị</li>
<li>Cập nhật, chỉnh sửa nội dung tin tức</li>
<li>Đã tích hợp trình soạn thảo Professional</li>
</ul>
</li>
</ul>
</div>
</div>
</td>
<td>
<div class="wd">
<div class="tit">
<p style="font-size: 12px; margin: 0;">
Thiết kế web giới thiệu doanh nghiệp &amp; sản phẩm đơn giản</p>
</div>
<div>
<b>Chức năng web:</b>
<ul class="pack">
<li>Trang chủ (có flash banner)</li>
<li>Trang giới thiệu công ty</li>
<li>Giới thiệu sản phẩm (sp theo mục; chi tiết sp (tên sp, giá, hình ảnh, thông
tin..))</li>
<li>Phân loại sản phẩm</li>
<li>Tìm kiếm sản phẩm (tìm nhanh, tìm chi tiết)</li>
<li>Trang tin tức</li>
<li>Album ảnh</li>
<li>Tuyển dụng</li>
<li>Thăm dò ý kiến</li>
<li>Thống kê truy cập, online</li>
<li>Banner quảng cáo</li>
<li>Tìm kiếm</li>
<li>Tỉ giá, thời tiết</li>
<li>Liên Hệ</li>
<li>Hệ thống quản trị tin tức
<ul style="margin-left: 10px">
<li>Đăng nhập, thay đổi mật khẩu</li>
<li>Phân cấp quản trị</li>
<li>Cập nhật, chỉnh sửa nội dung tin tức</li>
<li>Đã tích hợp trình soạn thảo Professional</li>
</ul>
</li>
</ul>
</div>
</div>
</td>
</tr>
</tbody>
</table>--%>
<%--<br />
<p style="font-size: 16px; margin: 0; font-weight: bold; color: #990000;">
                Các gói thiết kế web trọn gói khác</p>--%>
<ul class="pack">
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói Web du học, giáo dục" href="thiet-ke-web-site.aspx?#3">
                    Thiết kế web du học, giáo dục</a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói Web kiến trúc xây dựng, nội thất" href="thiet-ke-web-site.aspx?#4">
                    Thiết kế web kiến trúc, xây dựng, nội thất </a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói" href="thiet-ke-web-site.aspx?#5">
                    Thiết kế web thương mại điện tử, shop bán hàng trực tuyến</a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói" href="thiet-ke-web-site.aspx?#6">
                    Thiết kế web du lịch, web resort</a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói" href="thiet-ke-web-site.aspx?#7">
                    Thiết kế web nhà đất, bất động sản, sàn giao dịch </a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói" href="thiet-ke-web-site.aspx?#8">
                    Thiết kế web ôtô</a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói" href="thiet-ke-web-site.aspx?#9">
                    Thiết kế Web âm nhạc</a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói" href="thiet-ke-web-site.aspx?#10">
                    Thiết kế Web cổng thông tin điện tử, báo chí </a></li>
                <li><a title="Giảm 20% chi phí Thiết Kế Web chọn gói" href="thiet-ke-web-site.aspx?#11">
                    THIẾT KẾ WEB THEO YÊU CẦU</a></li>
            </ul>

<div style="background-color: #fbfbfb; color: #959494; font-weight: bold; text-align: center;
padding: 5px; margin-top: 20px">
<h2 style="margin:0;">GIẢI PHÁP PHẦN MỀM QUẢN LÝ</h2>
</div>
<div>
<b>Hệ thống phần mềm quản lý:</b>
<br />
<p>
Dựa trên nền tảng công nghệ WPF ,qui trình quản lý,phát triển dự án phần mềm hiện đại,chúng tôi đã cho ra đời những sản phẩm xuất sắc.
Ồn định ,độ chính xác cao,giao diện thân thiện ,chuyên nghiệp.
Chúng tôi có thể hổ trợ tư vấn cho bạn rất nhiều giải pháp trong rất nhiều lĩnh vực:</p>

<ul class="pack">
<li>
<b>Bán hàng :</b> Quản lý nguồn nhập xuất kho,quản lý doanh số nhân viên bán hàng,quản lý kho,kho khách hàng,doanh số khách hàng. 
Quản lý giá cả nguyên vật liệu,thành phẩm...<br />
Lên kế hoạch ,quản lý chương trình khuyến mãi.Hệ thống đơn đặt hàng tự dộng chính xác,chuyên nghiệp,phù hợp với thực tế doanh nghiệp của bạn.
</li>
<li>
<b>Sản xuất và kho bãi:</b>  Dựa vào doanh số bán hàng ước lượng,bạn có thể chủ động lập kế hoạch sản xuất chủ động trong quá trình chuẩn bị nguyên vật liệu ,kho bãi.
Quản lý nguyên vật liệu,thành phẩm,cấu hình giá thành.
</li>
<li>
<b>Nhân sự:</b>  Hỗ trợ chấm công ,tính lương thưởng nhân viên(bao gồm nhân viên bán hàng),quản lý hồ sơ lịch sử nhân viên.
</li>
</ul>
<div style="background-color: #fbfbfb; color: #959494; font-weight: bold; text-align: center;
padding: 5px; margin-top: 20px">
<h2 style="margin:0;"> sao bạn chọn chúng tôi như một đối tác tốt nhất</h2>
</div>
<ul class="pack">
<li>Chi phí đầu tư thấp</li>
<li>Tư vấn giải pháp chuyên nghiệp.</li>
<li>Hệ thống báo cáo linh hoạt phù hợp nhu cầu doanh nghiệp của bạn.</li>
<li>Giảm chi phí quảng cáo,quản lý ,sản xuất cho doanh nghiệp.</li>
<li>Lập trình,testing kỹ lưỡng,ổn định.</li>
<li>Chế độ hậu mãi chu đáo: hướng dẫn sử dụng,bảo trì hệ thống,sao lưu dữ liệu.Hỗ trợ ,tư vấn nâng cấp hệ thống kịp thời.</li>
</ul>
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
<img src="assets/imgs/logo_design.jpg" title="Thiết Kế Logo miễn phí cho web" style="border:1px solid #eeeeee;" alt="thiet ke logo cho web">
<span>Thiết kế logo </span></a>
</div>
<div class="w14">
&nbsp;</div>
<div align="center" class="adv_d">
<a title="Giảm 20% chi phí khi thiết kế web tại Tinh Việt" href="thiet-ke-quang-cao.aspx">
<img src="assets/imgs/catalog_design.jpg" title="Giảm 20% chi phí khi thiết kế web chọn gói" style="border:1px solid #eeeeee;"
alt="thiet ke Catalog">
<span>Thiết kế Catalog </span></a>
</div>
<div class="clear">
</div>
<div class="h10">
</div>
<div align="center" class="adv_d">
<a title="Miễn phí chi phí thiết kế khi thiết kế web tại Tinh Việt" href="thiet-ke-quang-cao.aspx">
<img src="assets/imgs/Brochure_design.jpg" title="Thiết kế brochure - Đàm Lê" style="border:1px solid #eeeeee;"
alt="thiet ke Brochure">
<span>Thiết kế Brochure </span></a>
</div>
<div class="w14">
&nbsp;</div>
<div align="center" class="adv_d">
<a title="Miễn phí chi phí thiết kế khi thiết kế web tại Tinh Việt" href="thiet-ke-quang-cao.aspx">
<img src="assets/imgs/poster_design.jpg" title="Thiết Kế Poster - Tinh Việt" style="border:1px solid #eeeeee;" alt="thiet ke Poster">
<span>Thiết kế Poster </span></a>
</div>
<div class="clear">
</div>
</div>
<h2>Tư vấn - hổ trợ kỹ thuật</h2>
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
<div class="grid_12">
<div class="page-1-col-3 border-radius-2">
<h3>
Dự án</h3>
<div class="line-1">
</div>
<ul id="mycarousel" class="jcarousel-skin-tango">
<li>
<div class="block-1">
<a class="lightbox-image img-indent-3" data-gal="prettyPhoto[1]" href="assets/images/image-blank.png">
<img src="assets/images/page-1-img-6.jpg" alt=""></a>
<p>
<time datetime="2011-12-25">[12-25-2011]</time>
- <a href="#" class="link">Lorem ipsum dolor sit amet, consectetur</a></p>
</div>
</li>
<li>
<div class="block-1">
<a class="lightbox-image img-indent-3" data-gal="prettyPhoto[1]" href="assets/images/image-blank.png">
<img src="assets/images/page-1-img-7.jpg" alt=""></a>
<p>
<time datetime="2011-12-25">[12-25-2011]</time>
- <a href="#" class="link">Vestibulum sodales semper</a></p>
</div>
</li>
<li>
<div class="block-1">
<a class="lightbox-image img-indent-3" data-gal="prettyPhoto[1]" href="assets/images/image-blank.png">
<img src="assets/images/page-1-img-8.jpg" alt=""></a>
<p>
<time datetime="2011-12-25">[12-25-2011]</time>
- <a href="#" class="link">Suspendisse potenti</a></p>
</div>
</li>
<li>
<div class="block-1">
<a class="lightbox-image img-indent-3" data-gal="prettyPhoto[1]" href="assets/images/image-blank.png">
<img src="assets/images/page-1-img-9.jpg" alt=""></a>
<p>
<time datetime="2011-12-25">[12-25-2011]</time>
- <a href="#" class="link">Mauris tempor cursus lorem</a></p>
</div>
</li>
</ul>
</div>
</div>
<div class="clear">
</div>
</div>
</asp:Content>
