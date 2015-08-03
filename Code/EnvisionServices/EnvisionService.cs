using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading;
using UKPI.Core;
using System.Configuration;
using System.IO;

namespace EnvisionServices
{
    public partial class EnvisionService : ServiceBase
    {
        private IList<Thread> schedulerThreads = new List<Thread>();
        private IList<IScheduler> schedulers = new List<IScheduler>();
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(EnvisionService));

        public EnvisionService()
        {
            InitializeComponent();
            this.ServiceName = "EnvisionService";
        }

        public void StartDebug()
        {
            OnStart(new string[0]);
        }

        public void StopDebug()
        {
            OnStop();
        }

        protected override void OnStart(string[] args)
        {
            System.IO.Directory.SetCurrentDirectory(System.AppDomain.CurrentDomain.BaseDirectory);
            log.Info("STARTING SERVICE");
            try
            {
                LoadAppConfig();
                InitSchedulers();
                InitThreads();
                StartThread();
                Thread.Sleep(0);
            }
            catch (Exception e)
            {
                log.Error(e);
                throw e;
            }
            finally
            {
                log.Info("SERVICE STARTED.");
            }
        }

        protected override void OnStop()
        {
            log.Info("STOPPING SERVICE...");
            try
            {
                AbortThreads();
                JoinThreads();
            }
            catch (Exception e)
            {
                log.Error(e);
                throw e;
            }
            finally
            {
                log.Info("SERVICE STOPPED.");
            }
        }

        private void LoadAppConfig()
        {
            string msgPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ConfigurationManager.AppSettings["Resources.Messages.EN"]);
            string titlePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ConfigurationManager.AppSettings["Resources.Titles.EN"]);
            TextResources.Init("EN", msgPath, titlePath);
        }

        /// <summary>
        /// Initialize and add scheduler to schedulers list
        /// </summary>
        private void InitSchedulers()
        {
            AuditResultService auditResult = new AuditResultService();
            auditResult.ImportFolder = ConfigurationManager.AppSettings["Audit.ImportFolder"];
            auditResult.RejectFolder = ConfigurationManager.AppSettings["Audit.RejectFolder"];
            auditResult.BackupFolder = ConfigurationManager.AppSettings["Audit.BackupFolder"];
            auditResult.InfoFileMask = ConfigurationManager.AppSettings["Audit.InfoFile"];
            auditResult.DetailFileMask = ConfigurationManager.AppSettings["Audit.DetailFile"];
            auditResult.FileFilter = ConfigurationManager.AppSettings["Audit.FileFilter"];
            auditResult.ConnectionString = ConfigurationManager.AppSettings["ConnectionString"];
            auditResult.Interval = 10;
            try
            {
                auditResult.Interval = int.Parse(ConfigurationManager.AppSettings["Audit.Interval"]);
            }
            catch { }
            schedulers.Add(auditResult);

            RegistrationStoreService regStoreservice = new RegistrationStoreService();
            regStoreservice.ImportFolder = ConfigurationManager.AppSettings["RegStore.ImportFolder"];
            regStoreservice.PendingFolder = ConfigurationManager.AppSettings["RegStore.PendingFolder"];
            regStoreservice.BackupFolder = ConfigurationManager.AppSettings["RegStore.BackupFolder"];
            regStoreservice.RejectFolder = ConfigurationManager.AppSettings["RegStore.RejectFolder"];
            regStoreservice.ImportFileMask = ConfigurationManager.AppSettings["RegStore.ImportFile"];
            regStoreservice.FileFilter = ConfigurationManager.AppSettings["RegStore.FileFilter"];
            regStoreservice.ConnectionString = ConfigurationManager.AppSettings["ConnectionString"];
            regStoreservice.Interval = 10;
            try
            {
                regStoreservice.Interval = int.Parse(ConfigurationManager.AppSettings["RegStore.Interval"]);
            }
            catch { }
            regStoreservice.PasswordToken = ConfigurationManager.AppSettings["RegStore.PasswordToken"]; ;
            regStoreservice.TokenHashLen = 0;
            try
            {
                regStoreservice.TokenHashLen = int.Parse(ConfigurationManager.AppSettings["RegStore.TokenHashLen"]);
            }
            catch { }
            regStoreservice.LogSuccess = false;
            try
            {
                regStoreservice.LogSuccess = bool.Parse(ConfigurationManager.AppSettings["RegStore.LogSuccess"]);
            }
            catch { }

            // Email
            SendMail emailSender = new SendMail();
            emailSender.SmtpServer = ConfigurationManager.AppSettings["SmtpServer"];
            emailSender.SmtpServerPort = 25;
            try { emailSender.SmtpServerPort = int.Parse(ConfigurationManager.AppSettings["SmtpServerPort"]); }
            catch { }
            emailSender.SendUsing = 2;
            try { emailSender.SendUsing = int.Parse(ConfigurationManager.AppSettings["SendUsing"]); }
            catch { }
            emailSender.SmtpAuthenticate = 1;
            try { emailSender.SmtpAuthenticate = int.Parse(ConfigurationManager.AppSettings["SmtpAuthenticate"]); }
            catch { }
            emailSender.SendUsername = ConfigurationManager.AppSettings["SendUsername"];
            emailSender.SendPassword = ConfigurationManager.AppSettings["SendPassword"];
            emailSender.From = ConfigurationManager.AppSettings["From"];
            emailSender.Subject = ConfigurationManager.AppSettings["Subject"];
            emailSender.ContentHeaderLine1 = ConfigurationManager.AppSettings["ContentHeaderLine1"];
            emailSender.ContentHeaderLine2 = ConfigurationManager.AppSettings["ContentHeaderLine2"];
            emailSender.ContentHeaderLine3 = ConfigurationManager.AppSettings["ContentHeaderLine3"];
            emailSender.ContentDetailRejectList = ConfigurationManager.AppSettings["ContentDetailRejectList"];
            emailSender.ContentDetailPendingList = ConfigurationManager.AppSettings["ContentDetailPendingList"];
            emailSender.ContentDetailFooterLine1 = ConfigurationManager.AppSettings["ContentDetailFooterLine1"];
            emailSender.ContentDetailFooterLine2 = ConfigurationManager.AppSettings["ContentDetailFooterLine2"];

            regStoreservice.EmailSender = emailSender;

            schedulers.Add(regStoreservice);

            // Add AuditResultExportService
            AuditResultExportService auditResultExportService = new AuditResultExportService();
            auditResultExportService.ConnectionString = ConfigurationManager.AppSettings["ConnectionString"];
            auditResultExportService.AuditResultExportFolder = ConfigurationManager.AppSettings["DFTOutbox"];
            auditResultExportService.FilenameConvention = ConfigurationManager.AppSettings["AuditResultExport.AuditResultFileName"];
            auditResultExportService.PasswordToken = ConfigurationManager.AppSettings["AuditResultExport.PasswordToken"];
            try
            {
                auditResultExportService.MaxLengthFile = int.Parse(ConfigurationManager.AppSettings["AuditResultExport.MaxLenFile"]);
            }
            catch { }

            auditResultExportService.Interval = 10;
            try
            {
                auditResultExportService.Interval = int.Parse(ConfigurationManager.AppSettings["AuditResultExport.Interval"]);
            }
            catch { }

            schedulers.Add(auditResultExportService);
        }

        /// <summary>
        /// Initialize thread for each scheduler
        /// </summary>
        private void InitThreads()
        {
            if (schedulerThreads.Count > 0)
            {
                AbortThreads();
                JoinThreads();
            }
            schedulerThreads.Clear();
            foreach (IScheduler sc in schedulers)
            {
                Thread t = new Thread(new ThreadStart(sc.Start));
                schedulerThreads.Add(t);
            }
        }

        private void StartThread()
        {
            foreach (Thread t in schedulerThreads)
            {
                try
                {
                    t.Start();
                }
                catch (Exception e)
                {
                    log.Error(e);
                }
            }
        }

        private void AbortThreads()
        {
            foreach (Thread t in schedulerThreads)
            {
                try
                {
                    if (t.IsAlive)
                    {
                        t.Abort();
                    }
                }
                catch (Exception e)
                {
                    log.Error(e);
                }
            }
        }

        private void JoinThreads()
        {
            foreach (Thread t in schedulerThreads)
            {
                try
                {
                    t.Join();
                }
                catch (Exception e)
                {
                    log.Error(e);
                }
            }
        }
    }
}
