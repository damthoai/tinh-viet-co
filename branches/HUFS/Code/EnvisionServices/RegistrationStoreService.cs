using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UKPI.Core;
using UKPI.ImportRegistration;
using System.IO;
using System.Text.RegularExpressions;

namespace EnvisionServices
{
    public class RegistrationStoreService : IScheduler
    {
        RegistrationImporter importer;
        #region IScheduler Members

        protected LongTimer timer = new LongTimer();

        public string ImportFolder { get; set; }
        public string PendingFolder { get; set; }
        public string BackupFolder { get; set; }
        public string ConnectionString { get; set; }
        public string ImportFileMask { get; set; }
        public string FileFilter { get; set; }
        public string PasswordToken { get; set; }
        public int TokenHashLen { get; set; }
        public bool LogSuccess { get; set; }
        public string RejectFolder { get; set; }

        public SendMail EmailSender { get; set; }

        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(RegistrationStoreService));

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

        public RegistrationStoreService()
        {
            timer.AutoReset = true;
            timer.Elapsed += new System.Timers.ElapsedEventHandler(timer_Elapsed);
        }

        void timer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            Process();
        }

        public void Start()
        {
            importer = new RegistrationImporter(ConnectionString);
            importer.BackupFolder = BackupFolder;
            importer.RejectFolder = RejectFolder;
            importer.PasswordToken = PasswordToken;
            importer.MaxTokenLen = TokenHashLen;
            importer.PendingFolder = PendingFolder;
            importer.ConfigurationFolder = System.AppDomain.CurrentDomain.BaseDirectory;
            importer.LogSuccess = LogSuccess;
            importer.EmailSender = this.EmailSender;
            timer.Start();
        }

        public void Process()
        {
            List<string> csvFiles = FindFiles(ImportFolder, FileFilter);
            foreach (string filename in csvFiles)
            {
                log.Info("Process file: " + filename);
                string name = Path.GetFileName(filename).ToUpper();
                Match d = Regex.Match(name, ImportFileMask.ToUpper());
                if (d.Success)
                {
                    importer.ImportZip(filename);
                }
            }
        }

        public void Stop()
        {
            timer.Stop();
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
        #endregion
    }
}
