using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UKPI.ValueObject
{
    public class ChinhSachGiaChiTiet
    {
        public string MaChinhSachGia { get; set; }
        public string MedicineID { get; set; }
        public string MedicineName { get; set; }
        public decimal GiaDNMua { get; set; }
        public decimal GiaDNMuaVAT { get; set; }
        public string DienGiai { get; set; }
        public int DonViTinh { get; set; }
        public bool HoatDong { get; set; }

        public string MaThuocYTe { get; set; }

        public string MaThuocYTeHienThi { get; set; }
    }
}
