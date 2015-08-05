using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using UKPI.DataAccessObject;
using UKPI.Utils;
using UKPI.ValueObject;

namespace UKPI.BusinessObject
{
    public class ReportBo
    {
        private ReportDao _reportDao = new ReportDao();
        private clsCommon _common = new clsCommon();

        
        public DataTable GetToaThuoc(string maKhamBenh)
        {
            return _reportDao.GetToaThuoc(maKhamBenh);
        }

        public DataTable GetToaThuocBh(string maKhamBenh)
        {
            return _reportDao.GetToaThuocBh(maKhamBenh);
        }
    }
}
