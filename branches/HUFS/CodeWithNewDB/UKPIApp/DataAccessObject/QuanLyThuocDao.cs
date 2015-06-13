﻿using log4net;
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
        private const string p_HUFS_GetAllChinhSachGia = "p_HUFS_GetAllChinhSachGiaNew";
        private const string p_HUFS_GetMaxMaChinhSachGia = "p_HUFS_GetMaxMaChinhSachGia";
        private const string p_HUFS_UpdateChinhSachGia = "p_HUFS_UpdateChinhSachGia";
        private const string HUFS_GetChinhSachGiaChiTiet = "HUFS_GetChinhSachGiaChiTiet";
        private const string HUFS_ChinhSachGiaChiTiet = "HUFS_ChinhSachGiaChiTiet";
        private readonly ShareEntityDao _shareEntityDao = new ShareEntityDao();
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

        public string GetMaxMaChinhSachGia()
        {

            try
            {
                string maxMaChinhSachGia = "";
                var dtResult = DataServices.ExecuteDataTable(CommandType.StoredProcedure, p_HUFS_GetMaxMaChinhSachGia);
                foreach (DataRow dr in dtResult.Rows)
                {
                    maxMaChinhSachGia = dr["MaxMaChinhSachGia"].ToString();
                    break;
                }
                return maxMaChinhSachGia;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return "";
            }
        }
        public List<ChinhSachGiaChiTiet> GetChinhSachGiaChiTiet(string maChinhSachGia)
        {

            try
            {
                SqlParameter[] Params = new SqlParameter[1];
                Params[0] = new SqlParameter("@MaChinhSachGia", maChinhSachGia);
                var dtResult = DataServices.ExecuteDataTable(CommandType.StoredProcedure, HUFS_GetChinhSachGiaChiTiet, Params);
                return this.ConvertDataTableToList<ChinhSachGiaChiTiet>(dtResult);
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return null;
            }
        }
        public bool UpdateChinhGiaChiTiet(List<ChinhSachGiaChiTiet> listChinhSachGiaChiTiet)
        {
            try
            {
                for (int i = 0; i < listChinhSachGiaChiTiet.Count; i++)
                {
                    SqlParameter[] Params = new SqlParameter[8];
                    Params[0] = new SqlParameter("@MaChinhSachGia", listChinhSachGiaChiTiet[i].MaChinhSachGia);
                    Params[1] = new SqlParameter("@TenThuoc", listChinhSachGiaChiTiet[i].MedicineName);
                    Params[2] = new SqlParameter("@MaThuoc", listChinhSachGiaChiTiet[i].MedicineID);
                    Params[3] = new SqlParameter("@GiaDNMua", listChinhSachGiaChiTiet[i].GiaDNMua);
                    Params[4] = new SqlParameter("@GiaDNMuaVAT", listChinhSachGiaChiTiet[i].GiaDNMuaVAT);
                    Params[5] = new SqlParameter("@DonViTinh", listChinhSachGiaChiTiet[i].DonViTinh);
                    Params[6] = new SqlParameter("@DienGiai", listChinhSachGiaChiTiet[i].DienGiai);
                    Params[7] = new SqlParameter("@HoatDong", listChinhSachGiaChiTiet[i].HoatDong);
                    DataServices.ExecuteStoredProcedure(CommandType.StoredProcedure, HUFS_ChinhSachGiaChiTiet, Params);
                }
                return true;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return false;
            }
        }
        public bool SaveChinhSachGia(ChinhSachGiaDT chinhSachGia)
        {
            try
            {
                List<ChinhSachGiaDT> listChinhSachGiaDT = new List<ChinhSachGiaDT>();
                listChinhSachGiaDT.Add(chinhSachGia);
                this.BulkInsert(ConvertToDataTable(listChinhSachGiaDT), "HUFS_CHINHSACH_HEADER");
                return true;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return false;
            }
        }
        public bool UpdateChinhSachGia(ChinhSachGiaDT chinhSachGia)
        {
            try
            {
                SqlParameter[] Params = new SqlParameter[8];
                Params[0] = new SqlParameter("@MaChinhSachGia", chinhSachGia.MaChinhSachGia);
                Params[1] = new SqlParameter("@TenChinhSachGia", chinhSachGia.TenChinhSachGia);
                Params[2] = new SqlParameter("@ThoiGianBatDau", chinhSachGia.ThoiGianBatDau);
                Params[3] = new SqlParameter("@ThoiGianKetThuc", chinhSachGia.ThoiGianKetThuc);
                Params[4] = new SqlParameter("@HoatDong", chinhSachGia.HoatDong);
                Params[5] = new SqlParameter("@NgayNgungHoatDong", chinhSachGia.NgayNgungHoatDong);
                Params[6] = new SqlParameter("@LastUpdatedDate", chinhSachGia.LastUpdatedDate);
                Params[7] = new SqlParameter("@LastUpdatedBy", chinhSachGia.LastUpdatedBy);
                DataServices.ExecuteStoredProcedure(CommandType.StoredProcedure, p_HUFS_UpdateChinhSachGia, Params);
                return true;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return false;
            }
        }
        public string GenerateNewMaChinhSachGia()
        {
            string currentMaxMaChinhSachGia = GetMaxMaChinhSachGia();
            //MKB000000000040
            int lenght = currentMaxMaChinhSachGia.Length;
            int prefixLenght = KeyPrefix.MaChinhSachGia.Length;

            string currentNumber = !string.IsNullOrEmpty(currentMaxMaChinhSachGia) ? currentMaxMaChinhSachGia.Remove(0, prefixLenght):"0";
            long keyNumber = 0;
            try
            {
                keyNumber = long.Parse(currentNumber);
            }
            catch
            {

            }
            keyNumber += 1;

            int newNumberLenght = keyNumber.ToString().Length;
            string paddingKey = "";
            for (int i = 0; i < lenght - (prefixLenght + newNumberLenght); i++)
            {
                paddingKey += "0";
            }

            string newKey = "";
            newKey = KeyPrefix.MaChinhSachGia + paddingKey + keyNumber.ToString();
            return newKey;
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
            Dictionary<CustomKey, string> dic = _shareEntityDao.BuildTuDienThuoc();
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
