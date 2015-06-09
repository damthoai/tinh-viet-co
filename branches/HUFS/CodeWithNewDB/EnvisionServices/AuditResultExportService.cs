using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data;

using UKPI.AuditResult;
using UKPI.Core;
using FPT.Component.ExcelPlus;

namespace EnvisionServices
{
    public class AuditResultExportService: IScheduler
    {
        protected LongTimer timer = new LongTimer();
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(AuditResultService));

        public string ConnectionString { get; set; }

        public string AuditResultExportFolder { get; set; }

        public string FilenameConvention { get; set; }

        public string PasswordToken { get; set; }

        public int MaxLengthFile { get; set; }

        public AuditResultExportService()
        {
            timer.AutoReset = true;
            timer.Elapsed += new System.Timers.ElapsedEventHandler(timer_Elapsed);
        }

        void timer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            this.ExportAuditResultToDMS();
        }

        private void ExportAuditResultToDMS()
        {
            Cryptography crypt = new Cryptography();
            AuditResultExportDAO dao = new AuditResultExportDAO(this.ConnectionString);

            Dictionary<string, DataTable> tables = this.GetAuditResultForExport();

            // Export audit result as .zip file by ShipToCode
            foreach (string shipToCode in tables.Keys)
            {
                DataSet export = new DataSet("AuditedResult");
                export.Tables.Add(tables[shipToCode]);
                export.Tables[0].TableName = "AuditedStore";

                // Get SalesOrg
                string strSaleOrg = dao.GetSalesOrgByShipTo(shipToCode);

                // Get Filename
                string fileName = string.Format(this.FilenameConvention, strSaleOrg, shipToCode, DateTime.Now.ToString("yyyyMMddhhmmss"));
                string zipFilePath = Path.ChangeExtension(fileName, ".zip");

                string password = crypt.GenPWDByFilename(zipFilePath, this.MaxLengthFile, this.PasswordToken);

                // Export audit result as .zip file
                zipFilePath = Path.Combine(this.AuditResultExportFolder, zipFilePath);
                using (MemoryStream ms = new MemoryStream())
                {
                    export.WriteXml(ms);
                    ms.Flush();
                    Zipper.ZipFiles(ms, fileName, zipFilePath, password);
                }
            }

            // Mark as sent
            dao.MarkAsSent();
        }

        private Dictionary<string, DataTable> GetAuditResultForExport()
        {
            AuditResultExportDAO dao = new AuditResultExportDAO(this.ConnectionString);

            Dictionary<string, DataTable> result = new Dictionary<string, DataTable>();
            DataTable tmp = dao.GetAuditResultForExport();
            DataTable template = tmp.Clone();

            template.Columns.Remove("ShipToCode");
            
            // Split result by ShipToCode
            if (tmp != null)
            {
                var value = from x in tmp.AsEnumerable()
                            group x by x.Field<string>("ShipToCode") into g
                            select g;
                foreach (var item in value)
                {
                    if (!result.ContainsKey(item.Key))
                    {
                        result.Add(item.Key, template.Clone());
                    }
                    foreach (var row in item)
                    {
                        Utility.InsertToDataTable(row, result[item.Key]);
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Interval value (minutes) for exporting.
        /// </summary>
        public int Interval
        {
            set
            {
                log.Info("Setting audit result exporter interval: " + value.ToString());
                timer.Interval = new TimeSpan(0, value, 0);
            }
        }

        #region IScheduler Members

        public void Start()
        {
            log.Info("Start audit result exporter service");
            timer.Start();
        }

        public void Stop()
        {
            timer.Stop();
        }

        #endregion
    }
}
