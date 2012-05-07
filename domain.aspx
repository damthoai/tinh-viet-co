<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
CodeFile="domain.aspx.cs" Inherits="domain" %>

<%@ Register src="uc/menu.ascx" tagname="menu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        set_Active_Menu('domain');
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="container_12">
<div class="grid_8 page-1-col-1">
<h2 style="margin: 0;">
ĐĂNG KÝ TÊN MIỀN - KIỂM TRA TÊN MIỀN
</h2>
<div align="center">
<table width="100%">
<tbody>
<tr>
<td align="right" style="width: 450px">
www. 
<asp:TextBox runat="server" ID="txtDomainName" CssClass="input-text"></asp:TextBox>

<asp:Button runat="server" Text="Kiểm tra"  CssClass="btn-bc button" 
        ID="btnCheckDomain" onclick="btnCheckDomain_Click"
        />
</td>
<td align="left">
<div style="display: none;" id="ctl00_cphContent_UpdateProgress1">
<img class="vam" src="assets/images/ajax-loader3.gif" alt="">
Đang tải dữ liệu ...
</div>
</td>
</tr>
</tbody>
</table>
<table border="0" style="width: 350px; text-align: left; margin-top: 10px;" cellpadding="10"
cellspacing="20" class="domainext" id="chklstExt">
<tbody>
<tr>
<td>

<asp:CheckBox runat="server" ID="chkLstExt_Com" />
<label
for="ctl00_cphContent_chklstExt_0">.com</label>
</td>
<td>

<asp:CheckBox runat="server" ID="chkLstExt_net" /><label
for="ctl00_cphContent_chklstExt_1">.net</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_org" />
<label
for="ctl00_cphContent_chklstExt_2">.org</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_info" />
<label
for="ctl00_cphContent_chklstExt_3">.info</label>
</td>
</tr>
<tr>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_biz" />
<label
for="ctl00_cphContent_chklstExt_4">.biz</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_vn" />
<label
for="ctl00_cphContent_chklstExt_5">.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_ComVn" />
<label
for="ctl00_cphContent_chklstExt_6">.com.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_NetVn" />
<label
for="ctl00_cphContent_chklstExt_7">.net.vn</label>
</td>
</tr>
<tr>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_OrgVn" />
<label
for="ctl00_cphContent_chklstExt_8">.org.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_BizVn" />
<label
for="ctl00_cphContent_chklstExt_9">.biz.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_InfoVn" />
<label
for="ctl00_cphContent_chklstExt_10">.info.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_Org1Vn" />
<label
for="ctl00_cphContent_chklstExt_11">.org.vn</label>
</td>
</tr>
<tr>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_GovVn" />
<label
for="ctl00_cphContent_chklstExt_12">.gov.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_NameVn" />
<label
for="ctl00_cphContent_chklstExt_13">.name.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_EduVn" />
<label
for="ctl00_cphContent_chklstExt_14">.edu.vn</label>
</td>
<td>
<asp:CheckBox runat="server" ID="chkLstExt_HealthVn" />
<label
for="ctl00_cphContent_chklstExt_15">.health.vn</label>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<asp:Label runat="server" ForeColor="Red" ID="lblResult"></asp:Label></p>
<div style="margin-top: 20px">
<table class="gtc" width="100%">
<tbody>
<tr>
<td class="sub" colspan="4">
<div style="background-color: #fbfbfb; color: #FFF; font-weight: bold; text-align: center;">
<h2 style="margin: 0;">
Bảng giá tên miền quốc tế</h2>
</div>

</td>
</tr>
<tr>
<td>
<b>Tên miền</b>
</td>
<td>
<b>Phí cài đặt</b>
</td>
<td>
<b>Phí duy trì</b>
</td>
<td>
<b>Ghi chú</b>
</td>
</tr>
<tr>
<td>
.com
</td>
<td>
Miễn phí
</td>
<td>
240.000 VNĐ/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.net
</td>
<td>
Miễn phí
</td>
<td>
240.000 VNĐ/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.org
</td>
<td>
Miễn phí
</td>
<td>
240.000 VNĐ/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.biz
</td>
<td>
Miễn phí
</td>
<td>
240.000 VNĐ/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.info
</td>
<td>
Miễn phí
</td>
<td>
240.000 VNĐ/năm
</td>
<td>
</td>
</tr>
</tbody>
</table>
<div class="h10" style="margin-top:20px;">
</div>
<table class="gtc" width="100%">
<tbody>
<tr>
<td class="sub" colspan="4">
<div style="background-color: #fbfbfb; color: #FFF; font-weight: bold; text-align: center;">
<h2 style="margin: 0;">
Bảng giá tên miền Việt Nam</h2>
</div>

</td>
</tr>
<tr>
<td>
<b>Tên miền</b>
</td>
<td>
<b>Phí cài đặt</b>
</td>
<td>
<b>Phí duy trì</b>
</td>
<td>
<b>Ghi chú</b>
</td>
</tr>
<tr>
<td>
.com.vn
</td>
<td>
350.000 đồng
</td>
<td>
350.000 đồng/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.net.vn
</td>
<td>
350.000 đồng
</td>
<td>
350.000 đồng/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.biz.vn
</td>
<td>
350.000 đồng
</td>
<td>
350.000 đồng/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.info.vn
</td>
<td>
200.000 đồng
</td>
<td>
200.000 đồng/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.org.vn
</td>
<td>
200.000 đồng
</td>
<td>
200.000 đồng/năm
</td>
<td>
</td>
</tr>
<tr>
<td>
.gov.vn
</td>
<td>
200.000 đồng
</td>
<td>
200.000 đồng/năm
</td>
<td>
*
</td>
</tr>
<tr>
<td>
.name.vn
</td>
<td>
450.000 đồng
</td>
<td>
480.000 đồng/năm
</td>
<td>
**
</td>
</tr>
<tr>
<td>
.edu.vn
</td>
<td>
200.000 đồng
</td>
<td>
200.000 đồng/năm
</td>
<td>
**
</td>
</tr>
<tr>
<td>
.health.vn
</td>
<td>
200.000 đồng
</td>
<td>
200.000 đồng/năm
</td>
<td>
**
</td>
</tr>
<tr>
<td>
.vn
</td>
<td>
350.000 đồng
</td>
<td>
480.000 đồng/năm
</td>
<td>
***
</td>
</tr>
</tbody>
</table>

<div style="padding: 20px">
        <b>Ghi chú</b>: Cá nhân cũng có thể đăng ký tên miền quốc gia
        <br>
        * Chỉ dành cho các cơ quan quản lý hành chính nhà nước, địa phương.
        <br>
        ** Đã được phép cấp cho cá nhân
        <br>
        *** Đã được phép cấp cho cá nhân, doanh nghiệp, tổ chức
        <br>
        <br>
        
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
