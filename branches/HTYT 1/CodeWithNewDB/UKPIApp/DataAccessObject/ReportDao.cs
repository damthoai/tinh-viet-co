
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
    public class ReportDao : clsBaseDAO
    {
        private static readonly ILog Log = log4net.LogManager.GetLogger(typeof(ReportDao));

        private const string pInToaThuoc = "intoathuoc";

        private const string pInToaThuocBh = "p_Intoathuocbaohiem";


        public DataTable GetToaThuoc(string maKhamBenh)
        {
            try
            {
                var sqlParams = new SqlParameter[1];
                sqlParams[0] = new SqlParameter("@MaKhamBenh", maKhamBenh);

                return DataServices.ExecuteDataTable(CommandType.StoredProcedure, pInToaThuoc, sqlParams);

            }
            catch (Exception ex)
            {
                Log.Error(ex.Message, ex);
                return  new DataTable();
            }

        }

        public DataTable GetToaThuocBh(string maKhamBenh)
        {
            try
            {
                var sqlParams = new SqlParameter[1];
                sqlParams[0] = new SqlParameter("@MaKhamBenh", maKhamBenh);

                return DataServices.ExecuteDataTable(CommandType.StoredProcedure, pInToaThuocBh, sqlParams);

            }
            catch (Exception ex)
            {
                Log.Error(ex.Message, ex);
                return new DataTable();
            }

        }
    }
}
