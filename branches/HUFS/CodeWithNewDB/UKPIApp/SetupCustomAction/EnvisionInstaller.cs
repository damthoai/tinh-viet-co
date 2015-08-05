using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Windows.Forms;

namespace SetupCustomAction
{
    [RunInstaller(true)]
    public partial class EnvisionInstaller : Installer
    {
        public EnvisionInstaller()
        {
            InitializeComponent();
        }

        public override void Install(System.Collections.IDictionary stateSaver)
        {
            base.Install(stateSaver);

            try
            {
                string targetDir = Context.Parameters["TDIR"];

                AppSetting myForm = new AppSetting();
                //myForm.ConfigureFile = string.Format(@"{0}\UPPCLocalSync.exe.config", targetDir);
                myForm.ShowDialog();

            }
            catch (Exception ex)
            {
                string message = ex.Message + "\r\n" + ex.StackTrace;
                if (ex.InnerException != null)
                {
                    message += "\r\n" + ex.InnerException.Message;
                    message += "\r\n" + ex.InnerException.StackTrace;
                }
                MessageBox.Show(message, "System Configuration", MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
            }
        }
    }
}