using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UKPI.AuditResult;
using UKPI.Core;
using System.IO;
using System.Text.RegularExpressions;

namespace EnvisionServices
{
    public class AuditResultService : IScheduler
    {
        const string XML_DETAIL_TEMPLATE = "AuditResultDetail.xml";
        const string MSG_DUPLICATE = "AuditValidate.Duplicate";
        const string MSG_INVALID_COORDINATE = "AuditValidate.InvalidCoordinate";
        const string MSG_INVALID_DATE_FORMAT = "AuditValidate.InvalidDateFormat";
        const string MSG_INVALID_PERIOD = "AuditValidate.InvalidPeriod";
        const string MSG_INVALID_STORE = "AuditValidate.InvalidStore";
        const string MSG_OUT_OF_RANGE = "AuditValidate.OutOfRange";
        const string MSG_PS_DEPENDENCY = "AuditValidate.PsDependency";
        const string MSG_INVALID_CATEGORY = "AuditValidate.InvalidAuditCategory";
        const string MSG_INVALID_DISPLAY_SET = "AuditValidate.InvalidAuditDisplaySet";

        const string XML_INFO_TEMPLATE = "AuditResultInformation.xml";
        const string MSG_UNDEFINE_AUDITRESULT = "AuditValidate.UndefineAuditStatus";
        const string MSG_REQUIRE_VALUE = "AuditValidate.RequireValue";
        const string TL_TOTAL_CAT_TEXT = "AudiConfig.TotalCategoryText";

        protected LongTimer timer = new LongTimer();
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(AuditResultService));

        public string ImportFolder { get; set; }
        public string RejectFolder { get; set; }
        public string BackupFolder { get; set; }
        public string ConnectionString { get; set; }
        public string DetailFileMask { get; set; }
        public string InfoFileMask { get; set; }
        public string FileFilter { get; set; }

        /// <summary>
        /// Interval value (minutes) for scanning.
        /// </summary>
        public int Interval
        {
            set
            {
                log.Info("Setting audit result importer interval: " + value.ToString());
                timer.Interval = new TimeSpan(0, value, 0);
            }
        }

        public AuditResultService()
        {
            timer.AutoReset = true;
            timer.Elapsed += new System.Timers.ElapsedEventHandler(timer_Elapsed);
        }

        void timer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            Import();
        }

        public void Import()
        {
            AuditResultImporter importer = new AuditResultImporter(ConnectionString);
            importer.MsgDuplicate = TextResources.GetMessage(MSG_DUPLICATE);
            importer.MsgInvalidCoordinate = TextResources.GetMessage(MSG_INVALID_COORDINATE);
            importer.MsgInvalidDateFormat = TextResources.GetMessage(MSG_INVALID_DATE_FORMAT);
            importer.MsgInvalidPeriod = TextResources.GetMessage(MSG_INVALID_PERIOD);
            importer.MsgInvalidStore = TextResources.GetMessage(MSG_INVALID_STORE);
            importer.MsgOutOfRange = TextResources.GetMessage(MSG_OUT_OF_RANGE);
            importer.MsgPSDependency = TextResources.GetMessage(MSG_PS_DEPENDENCY);
            importer.MsgUndefineStatus = TextResources.GetMessage(MSG_UNDEFINE_AUDITRESULT);
            importer.MsgRequiredValue = TextResources.GetMessage(MSG_REQUIRE_VALUE);
            importer.MsgInvalidCategory = TextResources.GetMessage(MSG_INVALID_CATEGORY);
            importer.MsgInvalidDiplaySet = TextResources.GetMessage(MSG_INVALID_DISPLAY_SET);
            importer.TotalText = TextResources.GetTitle(TL_TOTAL_CAT_TEXT);

            string detailXmlTemplate = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, XML_DETAIL_TEMPLATE);
            string infoXmlTemplate = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, XML_INFO_TEMPLATE);

            List<string> csvFiles = FindFiles(ImportFolder, FileFilter);
            foreach (string filename in csvFiles)
            {
                log.Info("Process file: " + filename);
                string name = Path.GetFileName(filename).ToUpper();
                Match d = Regex.Match(name, DetailFileMask.ToUpper());
                Match i = Regex.Match(name, InfoFileMask.ToUpper());
                if (d.Success)
                {
                    string period = d.Groups["DP"].Value;
                    ValidateTableResult dresult = importer.ImportAuditResultDetail(filename, detailXmlTemplate, period);
                    if (dresult.Success)
                    {
                        importer.SaveAuditDetail(dresult.Table, period);
                        BackupFile(filename);
                    }
                    else
                    {
                        RejectResult(filename, dresult.Table);
                    }
                }
                else if (i.Success)
                {
                    string period = i.Groups["DP"].Value;
                    ValidateTableResult iresult = importer.ImportAuditResultInfo(filename, infoXmlTemplate, period);
                    if (iresult.Success)
                    {
                        importer.SaveAuditInfo(iresult.Table, period);
                        BackupFile(filename);
                    }
                    else
                    {
                        RejectResult(filename, iresult.Table);
                    }
                }
            }
        }

        protected void RejectResult(string filePath, System.Data.DataTable table)
        {
            MoveFile(filePath, RejectFolder);
            if (!Directory.Exists(RejectFolder)) Directory.CreateDirectory(RejectFolder);
            string resultFile = Path.Combine(RejectFolder, Path.GetFileName(filePath));
            resultFile = Path.ChangeExtension(resultFile, ".xlsx");
            FPT.Component.ExcelPlus.Utility.SaveToExcelFile(table, resultFile, true);
        }

        protected void RejectFile(string filePath)
        {
            MoveFile(filePath, RejectFolder);
        }

        protected void BackupFile(string filePath)
        {
            MoveFile(filePath, BackupFolder);
        }

        protected void MoveFile(string filePath, string desFolder)
        {
            try
            {
                if (!Directory.Exists(desFolder)) Directory.CreateDirectory(desFolder);
                string desFilePath = Path.Combine(desFolder, Path.GetFileName(filePath));
                if (File.Exists(desFilePath))
                {
                    Utilities.TryRenameBackupFile(desFilePath);
                }
                File.Move(filePath, desFilePath);
            }
            catch (Exception ex)
            {
                log.Error(ex);
            }

        }

        protected List<string> FindFiles(string folder, string fileMask)
        {
            List<string> result = new List<string>();
            try
            {
                string[] files = Directory.GetFiles(folder, fileMask);
                if (files != null)
                {
                    result.AddRange(files);
                }
            }
            catch (Exception ex)
            {
                log.Info(ex.Message);
            }

            return result;
        }

        #region IScheduler Members

        public void Start()
        {
            log.Info("Start importer service");
            timer.Start();
        }

        public void Stop()
        {
            timer.Stop();
        }

        #endregion
    }
}
