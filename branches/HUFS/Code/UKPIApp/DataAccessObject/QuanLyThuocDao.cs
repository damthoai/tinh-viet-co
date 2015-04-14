using log4net;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using UKPI.Utils;
using UKPI.ValueObject;

namespace UKPI.DataAccessObject
{
    public class QuanLyThuocDao : clsBaseDAO
    {
        private static readonly ILog log = log4net.LogManager.GetLogger(typeof(QuanLyThuocDao));
        private const string HUFS_SelectDanhMucThuoc = "HUFS_SelectDanhMucThuoc";
        private const string HUFS_DanhMucThuoc = "HUFS_DanhMucThuoc";
        private const string p_HUFS_GetAllChinhSachGia = "p_HUFS_GetAllChinhSachGia";
        public DataTable LoadDanhMucThuoc()
        {
            try
            {
                var dtResult = DataServices.ExecuteDataTable(CommandType.StoredProcedure, HUFS_SelectDanhMucThuoc);
                return dtResult;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return null;
            }
        }

        public DataTable LoadChinhSachGia()
        {
            try
            {
                var dtResult = DataServices.ExecuteDataTable(CommandType.StoredProcedure, p_HUFS_GetAllChinhSachGia);
                return dtResult;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return null;
            }
        }
        
        public bool LuuThongTinDanhMucThuoc(DataTable tblDanhMucThuoc)
        {
            List<DanhMucThuoc> listDanhMucThuoc = ConvertDataTableToList<DanhMucThuoc>(tblDanhMucThuoc);
            try
            {
                for (int i = 0; i < listDanhMucThuoc.Count; i++)
                {
                    DanhMucThuoc danhMucThuoc = listDanhMucThuoc[i];
                    SqlParameter[] Params = new SqlParameter[11];
                    Params[0] = new SqlParameter("@TenThuoc", danhMucThuoc.MedicineName);
                    Params[1] = new SqlParameter("@MaThuoc", danhMucThuoc.MedicineID);
                    Params[2] = new SqlParameter("@STTTheoDMTCuaBYT", danhMucThuoc.STTTheoDMTCuaBYT);
                    Params[3] = new SqlParameter("@TenThanhPhanThuoc", danhMucThuoc.TenThanhPhanThuoc);
                    Params[4] = new SqlParameter("@HamLuong", danhMucThuoc.HamLuong);
                    Params[5] = new SqlParameter("@SoDKHoacGPKD", danhMucThuoc.SoDKHoacGPKD);
                    Params[6] = new SqlParameter("@DangBaoCheDuongUong", danhMucThuoc.DangBaoCheDuongUong);
                    Params[7] = new SqlParameter("@NhaSanXuat", danhMucThuoc.NhaSanXuat);
                    Params[8] = new SqlParameter("@QuocGia", danhMucThuoc.QuocGia);
                    Params[9] = new SqlParameter("@DonViTinh", danhMucThuoc.DonViTinh);
                    Params[10] = new SqlParameter("@HoatDong", danhMucThuoc.HoatDong);
                    DataServices.ExecuteStoredProcedure(CommandType.StoredProcedure, HUFS_DanhMucThuoc, Params);
                }
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return false;
            }
            return true;
        }
    }
}
