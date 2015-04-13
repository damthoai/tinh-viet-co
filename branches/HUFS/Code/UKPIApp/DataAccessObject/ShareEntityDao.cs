using log4net;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using UKPI.Utils;
using UKPI.ValueObject;


namespace UKPI.DataAccessObject
{
    public  class ShareEntityDao :clsBaseDAO
    {
        private static readonly ILog log = log4net.LogManager.GetLogger(typeof(ShareEntityDao));
        private static string m_strConn = clsCommon.GetConnectionString();
        public  List<PhongKham> LoadDanhSachPhongKham()
        {
            List<PhongKham> arrs = new List<PhongKham>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT  RoomID,RoomName FROM HUFS_ROOM_CLINIC", con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    PhongKham pk = new PhongKham();
                    pk.RoomID = (string)reader[0];
                    pk.RoomName = (string)reader[1];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<GioiTinh> LoadGioiTinh()
        {
            List<GioiTinh> arrs = new List<GioiTinh>();
            arrs.Add(new GioiTinh { Name = "Nam"});
            arrs.Add(new GioiTinh { Name = "Nữ" });
            return arrs;
        }

        public List<BoPhan> LoadDanhSachBoPhan()
        {
            List<BoPhan> arrs = new List<BoPhan>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT  MaBoPhan,TenBoPhan FROM HUFS_BOPHAN", con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    BoPhan pk = new BoPhan();
                    pk.MaBoPhan = (int)reader[0];
                    pk.TenBoPhan = (string)reader[1];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<KhuVuc> LoadDanhSachKhuVuc()
        {
            List<KhuVuc> arrs = new List<KhuVuc>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT  MaKhuVuc,TenKhuVuc FROM HUFS_KHUVUC", con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    KhuVuc pk = new KhuVuc();
                    pk.MaKhuVuc = (int)reader[0];
                    pk.TenKhuVuc = (string)reader[1];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<NhomBenh> LoadDanhSachNhomBenh()
        {
            List<NhomBenh> arrs = new List<NhomBenh>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT  MaNhomBenh,TenNhomBenh, ChuanDoan FROM HUFS_NHOMBENH", con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    NhomBenh pk = new NhomBenh();
                    pk.MaNhomBenh = (int)reader[0];
                    pk.TenNhomBenh = (string)reader[1];
                    pk.ChuanDoan = (string)reader[2];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<MaICD> LoadDanhSachMaICD()
        {
            List<MaICD> arrs = new List<MaICD>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT MaICD,DienGiai FROM HUFS_ICD", con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MaICD pk = new MaICD();
                    pk.Ma = (string)reader[0];
                    pk.DienGiai = (string)reader[1];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<ThongTinThuoc> LoadThongTinThuoc()
        {
            List<ThongTinThuoc> arrs = new List<ThongTinThuoc>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT MedicineID,MedicineName,Description,Status,KhuyenMai,"+
                                    " GiaDNMua ,GiaDNMuaVAT,GiaThucMua,GiaKMMua,GiaDNBan,GiaThucBan, "+
                                    " MaKM,BaoHiem,MaChinhSachGia,DienGiai,STTTheoDMTCuaBYT,TenThanhPhanThuoc,HamLuong "+
                                    ",SoDKHoacGPKD,DangBaoCheDuongUong,NhaSanXuat,QuocGia,DonViTinh,HoatDong,CachUong,Flag,GiaDNBanVAT,TenDonViTinh,CachUongThuoc " +
                                    " FROM HUFS_MEDICINE "+
                                    " INNER JOIN HUFS_DONVITINH ON HUFS_MEDICINE.DonViTinh = HUFS_DONVITINH.MaDonViTinh " +
                                    " INNER JOIN HUFS_CACHUONGTHUOC ON HUFS_MEDICINE.CachUong = HUFS_CACHUONGTHUOC.MaUongThuoc"
                                    , con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    ThongTinThuoc pk = new ThongTinThuoc();
                    pk.MedicineID = (string)reader[0];
                    pk.MedicineName = (string)reader[1];
                    pk.Description = (string)reader[2];
                    pk.Status = (bool)reader[3];
                    pk.KhuyenMai = (bool)reader[4];
                    pk.GiaDNMua = (double)reader[5];
                    pk.GiaDNMuaVAT = (double)reader[6];
                    pk.GiaThucMua = (double)reader[7];
                    pk.GiaKMMua = (double)reader[8];
                    pk.GiaDNBanVAT = (double)reader[9];
                    pk.GiaThucBan = (double)reader[10];
                 //   pk.MaKM = (string)reader[11];
                    pk.BaoHiem = (bool)reader[12];
                    pk.MaChinhSachGia = (string)reader[13];
                    pk.DienGiai = (string)reader[14];
                    pk.STTTheoDMTCuaBYT = (string)reader[15];
                    pk.TenThanhPhanThuoc = (string)reader[16];
                    pk.HamLuong = (string)reader[17];
                    pk.SoDKHoacGPKD = (string)reader[18];
                    pk.DangBaoCheDuongUong = (string)reader[19];
                    pk.NhaSanXuat = (string)reader[20];
                    pk.QuocGia = (string)reader[21];
                    pk.DonViTinh = (int)reader[22];
                    pk.HoatDong = (bool)reader[23];
                    pk.CachUong = (int)reader[24];
                    pk.Flag = (int)reader[25];
                    pk.GiaDNBan = (double)reader[26];
                    pk.TenDonViTinh = (string)reader[27];
                    pk.CachUongThuoc = (string)reader[28];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<CachUongThuoc> LoadThongTinCachUongThuoc()
        {
            List<CachUongThuoc> arrs = new List<CachUongThuoc>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT MaUongThuoc,CachUongThuoc FROM HUFS_CACHUONGTHUOC", con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    CachUongThuoc pk = new CachUongThuoc();
                    pk.MaUongThuoc = (int)reader[0];
                    pk.CachUong = (string)reader[1];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<LyDo> LoadLyDo()
        {
            List<LyDo> arrs = new List<LyDo>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT  ReasonID,ReasonName FROM HUFS_REASON", con);

                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    LyDo pk = new LyDo();
                    pk.ReasonID = (int)reader[0];
                    pk.ReasonName = (string)reader[1];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        public List<LyDoChiTiet> LoadLyDoChiTiet(int reasonId)
        {
            List<LyDoChiTiet> arrs = new List<LyDoChiTiet>();
            SqlConnection con = Connection;
            SqlDataReader reader = null;
            SqlCommand cmd = null;

            try
            {
                cmd = new SqlCommand("SELECT  ReasonDetailID,ReasonID,ReasonDetailName FROM HUFS_REASON_DETAIL WHERE ReasonID = @ReasonID", con);
                cmd.Parameters.Add("@ReasonID", SqlDbType.Int).Value = reasonId;
                if (con.State != ConnectionState.Open)
                    con.Open();

                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    LyDoChiTiet pk = new LyDoChiTiet();
                    pk.ReasonDetailID = (int)reader[0];
                    pk.ReasonID = (int)reader[1];
                    pk.ReasonDetailName = (string)reader[2];
                    arrs.Add(pk);
                }

                reader.Close();
                return arrs;
            }
            catch (SqlException ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }
    }

}
