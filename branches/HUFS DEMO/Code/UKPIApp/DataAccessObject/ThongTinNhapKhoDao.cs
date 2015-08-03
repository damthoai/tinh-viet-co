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
    public class ThongTinNhapKhoDao : clsBaseDAO
    {
        private static readonly ILog log = log4net.LogManager.GetLogger(typeof(ThongTinNhapKhoDao));
        private const string p_HUFS_GetMaxMaNhapKho = "p_HUFS_GetMaxMaNhapKho";
        private const string p_HUFS_SearchXuatKho = "p_HUFS_SearchXuatKho";
        public string GetMaxMaNhapKho()
        {

            try
            {
                string maxMaKhamBenh = "";
                var dtResult = DataServices.ExecuteDataTable(CommandType.StoredProcedure, p_HUFS_GetMaxMaNhapKho);
                foreach (DataRow dr in dtResult.Rows)
                {
                    maxMaKhamBenh = dr["MaxMaNhapKho"].ToString();
                    break;
                }
                return maxMaKhamBenh;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return "";
            }
        }
        public string GenerateNewMaNhapKho()
        {
            string currentMaxMaNhapKho = GetMaxMaNhapKho();
            //MKB000000000040
            int lenght = currentMaxMaNhapKho.Length;
            int prefixLenght = KeyPrefix.MaNhapKho.Length;

            string currentNumber = currentMaxMaNhapKho.Remove(0, prefixLenght);
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
            newKey = KeyPrefix.MaNhapKho + paddingKey + keyNumber.ToString();
            return newKey;
        }
        public DataTable LoadThongTinXuatKho(string maThuoc)
        {
            try
            {
                SqlParameter[] Params = new SqlParameter[1];
                Params[0] = new SqlParameter("@maThuoc", maThuoc);
                var dtResult = DataServices.ExecuteDataTable(CommandType.StoredProcedure, p_HUFS_SearchXuatKho, Params);
                return dtResult;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message, ex);
                return null;
            }
        }
        public bool SaveThongTinNhapKho(ThongTinNhapKho thongTinNhapKho,List<ThongTinNhapKhoDetail> listThongTinNhapKhoDetail)
        {
            string conStr = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                SqlTransaction transaction = con.BeginTransaction();
                try
                {
                    if (thongTinNhapKho == null)
                        return false;
                    else
                    {
                        //create temporay list for bulk insert
                        List<ThongTinNhapKho> listThongTinNhapKho = new List<ThongTinNhapKho>();
                        listThongTinNhapKho.Add(thongTinNhapKho);
                        this.BulkInsert(ConvertToDataTable(listThongTinNhapKho), "HUFS_NHAPKHO_HEADER");
                        if (listThongTinNhapKhoDetail != null && listThongTinNhapKhoDetail.Count > 0)
                        {
                            this.BulkInsert(ConvertToDataTable(listThongTinNhapKhoDetail), "HUFS_NHAPKHO_DETAIL");
                        }
                    }
                    transaction.Commit();
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    log.Error(ex.Message, ex);
                    return false;
                }
                finally
                {
                    con.Close();
                }
            }
            return true;
        }
    }
}
