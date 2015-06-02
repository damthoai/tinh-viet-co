using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UKPI.ValueObject
{
    public class ThongTinThuoc
    {
        public string MedicineID { get; set; }
        public string MedicineName { get; set; }
        public string Description { get; set; }
        public string CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public string LastUpdatedDate { get; set; }
        public string LastUpdatedBy { get; set; }
        public bool Status { get; set; }
        public bool KhuyenMai { get; set; }
        public double GiaDNMua { get; set; }
        public double GiaDNMuaVAT { get; set; }
        public double GiaThucMua { get; set; }
        public double GiaKMMua { get; set; }
        public double GiaDNBan { get; set; }
        public double GiaDNBanVAT { get; set; }
        public double GiaThucBan { get; set; }
        public string MaKM { get; set; }
        public bool BaoHiem { get; set; }
        public string MaChinhSachGia { get; set; }
        public string DienGiai { get; set; }
        public string STTTheoDMTCuaBYT { get; set; }
        public string TenThanhPhanThuoc { get; set; }
        public string HamLuong { get; set; }
        public string SoDKHoacGPKD { get; set; }
        public string DangBaoCheDuongUong { get; set; }
        public string NhaSanXuat { get; set; }
        public string QuocGia { get; set; }
        public int DonViTinh { get; set; }
        public bool HoatDong { get; set; }
        public int CachUong { get; set; }
        public int Flag { get; set; }
        public string TenDonViTinh { get; set; }
        public string CachUongThuoc { get; set; }
        public string MaThuocYTe { get; set; }
        public string MaThuocYTeHienThi { get; set; }
    }
}
