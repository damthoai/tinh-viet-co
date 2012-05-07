<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="thiet-ke-quang-cao.aspx.cs" Inherits="thiet_ke_quang_cao" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        set_Active_Menu('advertisment');
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container_12">
<div class="grid_8 page-1-col-1">
<h2 style="margin:0 0 10px 0;">THIẾT KẾ QUẢNG CÁO</h2>
<div class="adv">
        <div class="tit">
            <h3>Thiết kế Catalog</h3></div>
        <div class="">
            <img src="assets/images/catalog_design.jpg" alt="Thiết kế Catalog" class="image" />
           <p> Là doanh nghiệp bạn luôn cố gắng ở mức cao nhất để đưa sản phẩm, dịch vụ của mình
            đến được với khách hàng. <b>Catalogue</b> là giải pháp hoàn hảo cho vấn đề đó. 
            <b>Catalogue</b>
            giúp bạn cung cấp những thông tin về sản phẩm dịch vụ của mình tới khách hàng một
            cách trực quan và sinh động. Giúp tạo sự quan tâm và phản hồi từ khách hàng.</p>
        </div>
        <div class="clear">
        </div>
    </div>
<div class="adv">
        <div class="tit">
            <h3>Thiết kế Brochure</h3></div>
        <div class="">
            <img src="assets/images/Brochure_design.jpg" alt="Thiết kế Brochure" class="image" /> 
<p><b>Brochure</b> là ấn phẩm quảng cáo quan trọng mà thông qua nó, người đọc hiểu rõ về công
            ty và các hoạt động của công ty, hình thành nên khái niệm, tâm tư tình cảm ở họ
            đối với công ty và sản phẩm của họ.</p>
        </div>
        <div class="clear">
        </div>
    </div>

<div class="adv">
        <div class="tit">
            <h3>Thiết kế Poster quảng cáo</h3></div>
        <div class="">
            <img src="assets/images/poster_design.jpg" alt="Thiết kế Poster" class="image" /> 
<p><b>Poster</b> thường được thiết kế và in trên khổ lớn và là lựa chọn cuả nhiều nhà quảng
            cáo. Để đạt hiệu quả tốt nhất về truyền thông một quảng cáo Poster cần phải được
            thiết kế bài bản từ khâu ý tưởng, chọn lọc hình ảnh, sắp xếp ngôn từ cho tới khâu
            thi công. Saokimad giúp bạn thực hiện tất cả các công việc trên một cách dễ dàng
            và đơn giản.</p>
        </div>
        <div class="clear">
        </div>
    </div>
<div class="adv">
        <div class="tit">
            <h3>Thiết kế Logo</h3></div>
        <div class="">
            <img src="assets/images/logo_design.jpg" alt="Thiết kế logo" class="image" />
         <p>  Nếu như có một hình ảnh nào đó làm khách hàng dễ dàng liên tưởng tới công ty bạn
            nhiều nhất thì đó chính là logo. Nếu như bạn coi công việc kinh doanh của mình là
            nghiêm túc và chuyên nghiệp, bạn hãy nghĩ đến việc thiết kế logo tương xứng!</p> 
        </div>
        <div class="clear">
        </div>
    </div>
<div class="adv">
        <div class="tit">
            <h3>Thiết kế banner quảng cáo</h3></div>
        <div class="">
          <p>  Dịch vụ <b>thiết kế banner</b> của Tinh Việt giúp bạn có 1 banner quảng cáo chuyên nghiệp,
            bắt mắt và thu hút người xem bấm vào mẫu quảng cáo nhiều nhất.</p>
        </div>
        <div class="clear">
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

