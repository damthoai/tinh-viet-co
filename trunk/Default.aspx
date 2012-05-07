<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/superfish.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/skin.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/prettyPhoto.css">

<script src="js/jquery-1.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.atooltip.min.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Kozuka_R_400.font.js"></script>
<script type="text/javascript" src="js/Kozuka_M_500.font.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/jquery.hoverIntent.minified.js"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/FF-cash.js"></script>

<script type="text/javascript">
    $(function () {
        $('a.normalTip').aToolTip();
    });
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
    $(function () {
        $('.box-1').hover(function () { $(this).find('p').addClass('color-1-hover'); Cufon.refresh(); }, function () { $(this).find('p').removeClass('color-1-hover'); Cufon.refresh(); })
        $('.box-2').hover(function () { $(this).find('p').addClass('color-1-hover'); Cufon.refresh(); }, function () { $(this).find('p').removeClass('color-1-hover'); Cufon.refresh(); })
        $('.box-3').hover(function () { $(this).find('p').addClass('color-1-hover'); Cufon.refresh(); }, function () { $(this).find('p').removeClass('color-1-hover'); Cufon.refresh(); })
        $('.box-4').hover(function () { $(this).find('p').addClass('color-1-hover'); Cufon.refresh(); }, function () { $(this).find('p').removeClass('color-1-hover'); Cufon.refresh(); })
        $('.box-5').hover(function () { $(this).find('p').addClass('color-1-hover'); Cufon.refresh(); }, function () { $(this).find('p').removeClass('color-1-hover'); Cufon.refresh(); })
        $('.box-6').hover(function () { $(this).find('p').addClass('color-1-hover'); Cufon.refresh(); }, function () { $(this).find('p').removeClass('color-1-hover'); Cufon.refresh(); })
    })
    jQuery(document).ready(function () {
        jQuery('#mycarousel').jcarousel({
            horisontal: true,
            wrap: 'circular',
            scroll: 1,
            easing: 'easeInOutBack',
            animation: 1200
        });
    });
    $(function () {
        $('.lightbox-image').prettyPhoto({ theme: 'facebook', autoplay_slideshow: false, social_tools: false, animation_speed: 'normal' }).append('<span></span>').hover(function () { $(this).find('>img').stop().animate({ opacity: .5 }) }, function () { $(this).find('>img').stop().animate({ opacity: 1 }) })
    })
</script>

</head>
<body>
<form id="form1" runat="server">
<div class="bg">
<div class="main">


<!--==============================header=================================-->
<div class="headerMain">
<div class="header">
<h1 class="logo">
<a href="#">
<img src="assets/images/logo.png" alt=""></a></h1>
<div class="tooltips">
<a href="#" class="normalTip" title="Facebook">
<img src="assets/images/icon-1.gif" alt=""></a><a href="#" class="normalTip" title="Twitter"><img
src="assets/images/icon-2.gif" alt=""></a><a href="#" class="normalTip" title="Rss"><img
src="assets/images/icon-3.gif" alt=""></a><a href="#" class="normalTip" title="Google+"><img
src="assets/images/icon-4.gif" alt=""></a></div>
<div class="clear">
</div>
</div>

<div class="nav">
<ul class="sf-menu">
<li class="current"><a href="#">Trang chủ</a>
<%--<ul>
<li><a href="#">Giới thiệu</a></li>
<li><a href="#">Thiết kế web</a></li>
<li><a href="#">Phần mềm quản lý</a></li>
</ul>--%>
</li>
<li><a href="#">Giới thiệu</a></li>
<li><a href="#">Thiết kế web</a></li>
<li><a href="#">Phần mềm quản lý</a></li>
<li><a href="#">Thiết kế quảng cáo</a></li>
<li><a href="#">Tên miền</a></li>
<li><a href="#">Web hosting</a></li>

<li><a href="#">Liên hệ</a></li>
</ul>
<div class="clear">
</div>
</div>
</div>

<!--==============================content================================-->
<div class="section" id="content">
<div class="pading">

<div class="container_12">
<div class="grid_12 slider-block">
<div class="slider">
<ul class="items">
<li>
<img src="assets/images/slider-1.jpg" alt=""><div class="banner">
<p>
<strong>Our Best Propositions</strong></p>
<p>
<strong>for</strong> You!</p>
</div>
</li>
<li>
<img src="assets/images/slider-2.jpg" alt=""><div class="banner banner-right">
<p>
<strong>Good Solutions for Your</strong></p>
<p>
business!</p>
</div>
</li>
<li>
<img src="assets/images/slider-3.jpg" alt="" /><div class="banner">
<p>
<strong>We will Show You the Way</strong></p>
<p>
<strong>to</strong> success!</p>
</div>
</li>
<li>
<img src="assets/images/slider-4.jpg" alt=""><div class="banner">
<p>
<strong>There are No Complex</strong></p>
<p>
tasks <strong>for Us!</strong></p>
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
<p class="color-1">
Support</p>
<strong class="button-3 clr-1"><span>Click Here</span></strong> </a><a href="#" class="box-2 border-radius">
<img src="assets/images/box-2-img.png" alt="">
<p class="color-1">
experience</p>
<strong class="button-3 clr-2"><span>Click Here</span></strong> </a><a href="#" class="box-3 border-radius">
<img src="assets/images/box-3-img.png" alt="">
<p class="color-1">
Assurance</p>
<strong class="button-3 clr-3"><span>Click Here</span></strong> </a><a href="#" class="box-4 border-radius">
<img src="assets/images/box-4-img.png" alt="">
<p class="color-1">
marketing</p>
<strong class="button-3 clr-4"><span>Click Here</span></strong> </a><a href="#" class="box-5 border-radius">
<img src="assets/images/box-5-img.png" alt="">
<p class="color-1">
research</p>
<strong class="button-3 clr-5"><span>Click Here</span></strong> </a><a href="#" class="box-6 border-radius last">
<img src="assets/images/box-6-img.png" alt="">
<p class="color-1">
strategies</p>
<strong class="button-3 clr-6"><span>Click Here</span></strong> </a>
</div>
<div class="grid_8 page-1-col-1">
<div class="color-2-block">
<p class="color-2">
Offering ideas</p>
<p class="color-2">
<strong>that raise your business above the</strong> expected</p>
</div>
<p class="color-3">
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ultricies odio
magna. Mauris a lacus metus, sed ultrices dui. Vivamus at eros non lectus ultrices
rutrum. Sed in neque diam. Nulla varius commodo justo, id consequat lacinia vitae.</p>
<a href="#" class="button">More</a>
<h2>
our sponsors</h2>
<div class="wrapper banners-1">
<a href="#" class="border-radius-2">
<img src="assets/images/page-1-img-1.jpg" alt=""></a> <a href="#" class="border-radius-2">
<img src="assets/images/page-1-img-2.jpg" alt=""></a> <a href="#" class="border-radius-2">
<img src="assets/images/page-1-img-3.jpg" alt=""></a> <a href="#" class="border-radius-2">
<img src="assets/images/page-1-img-4.jpg" alt=""></a> <a href="#" class="border-radius-2 last">
<img src="assets/images/page-1-img-5.jpg" alt=""></a>
</div>
</div>
<div class="grid_4 page-1-col-2">
<h2>
Sản phẩm &amp; Dịch vụ</h2>
<ul class="list-1">
<li><a href="#">Thiết kế web</a></li>
<li><a href="#">Nâng cấp website</a></li>
<li><a href="#">Đăng ký tên miền</a></li>
<li><a href="#">Lưu trử website</a></li>
<li><a href="#">Thiết kế quảng cáo</a></li>
<li><a href="#">Quảng cáo trực tuyến</a></li>
<li><a href="#">Google Adwords</a></li>
<li><a href="#">Phần mềm quản lý</a></li>
<li><a href="#">Tin tức</a></li>
<li><a href="#">Website mới</a></li>
<li><a href="#">Liên hệ</a></li>
</ul>
<a href="#" class="button">More</a>
</div>
<div class="grid_12">
<div class="page-1-col-3 border-radius-2">
<h3>
Latest News &amp; Events</h3>
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
</div>
</div>
<!--==============================footer=================================-->
<div class="footer">
<div class="wrapper">
    	<ul class="footer-menu">
            <li class="current"><a href="index.html" style="color: rgb(157, 155, 163);">Trang chủ</a></li>
            <li><a href="index-1.html" style="color: rgb(157, 155, 163);">Giới thiệu</a></li>
            <li><a href="index-2.html" style="color: rgb(157, 155, 163);">Thiết kế web</a></li>
            <li><a href="index-3.html" style="color: rgb(157, 155, 163);">Phần mềm quản lý</a></li>
            <li><a href="index-4.html" style="color: rgb(157, 155, 163);">Tên miền</a></li>
            <li><a href="index-5.html" style="color: rgb(157, 155, 163);">Web hosting</a></li>
            <li class="last"><a href="index-6.html" style="color: rgb(157, 155, 163);">Thiết kế quảng cáo</a></li>
        </ul>
    	<div class="text-bot">Qioness &copy; 2012 <a href="index-7.html" style="color: rgb(157, 155, 163);">Privacy Policy</a><br><!-- {%FOOTER_LINK} --></div>
    </div>
<%--<div class="footer-col-1">
<a href="#">
<img src="assets/images/footer-logo.png" alt=""></a>
<p>
8901 Marmora Road Glasgow, D04 89GR</p>
<p>
Phone: +1 800 559 6580 &nbsp;E-mail: <a href="#">mail@demolink.org</a></p>
<p class="color-4">
Concord &copy; 2012 : <a href="#">Privacy Policy</a>&nbsp;&nbsp;<!-- {%FOOTER_LINK} --></p>
</div>
<div class="footer-col-2">
<input type="text" value="Enter your e-mail here:" onblur="if(this.value=='') this.value='Enter your e-mail here:'"
onfocus="if(this.value =='Enter your e-mail here:' ) this.value=''" />
<a href="#" onclick="document.getElementById('form-search').submit()" class="search_button">
Subscribe</a>
<div class="clear">
</div>
<a href="#">Unsubscribe</a>
</div>--%>
</div>

</div>
</div>

</form>
</body>
</html>
