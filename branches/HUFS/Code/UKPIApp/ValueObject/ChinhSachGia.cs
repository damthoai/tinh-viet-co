using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UKPI.ValueObject
{
    public class ChinhSachGia
    {
          public string MaChinhSachGia {get;set;}
		  public string TenChinhSachGia {get;set;}
		  public string ThoiGianBatDau {get;set;}
          public DateTime ThoiGianBatDauDT { get; set; }
          public DateTime ThoiGianKetThucDT { get; set; }
          public string ThoiGianKetThuc { get; set; }
		  public bool HoatDong {get;set;}
          public DateTime NgayNgungHoatDongDT { get; set; }
          public string NgayNgungHoatDong { get; set; }
          public DateTime CreatedDate { get; set; }
		  public string CreatedBy {get;set;}
          public DateTime LastUpdatedDate { get; set; }
          public string LastUpdatedBy { get; set; }
          public bool IsCheck { get; set; }
    }
}
