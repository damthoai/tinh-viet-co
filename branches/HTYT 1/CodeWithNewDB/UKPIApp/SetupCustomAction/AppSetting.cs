using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Collections;
using System.Reflection;
using System.Xml;
using System.Management;
using SetupCustomAction.Common;

namespace SetupCustomAction
{
    public partial class AppSetting : Form
    {
        private readonly ArrayList labels = new ArrayList();
        private readonly ArrayList textboxes = new ArrayList();

        private string configureFile;
        public string ConfigureFile
        {
            get { return Path.Combine(TargetDir, "UKPI.exe.config"); }
            set { configureFile = value; }
        }

        private string targetDir = string.Empty;
        public string TargetDir
        {
            get
            {
                if (targetDir == String.Empty)
                {
                    targetDir = Assembly.GetExecutingAssembly().Location;
                    targetDir = targetDir.Substring(0, targetDir.LastIndexOf(@"\"));
                }
                return targetDir;
            }
            set { targetDir = value; }
        }

        public AppSetting()
        {
            InitializeComponent();
        }

        private void AppSetting_Load(object sender, EventArgs e)
        {
            GenerateControl();
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            MappingControl(this);
            this.Close();
        }

        private void GenerateControl()
        {
            try
            {
                XmlDocument doc = XmlUtility.XmlConfigDocument(ConfigureFile);
                XmlNode node = doc.SelectSingleNode("/configuration/appSettings");
                int i = 0;
                List<string> keys = new List<string>();
                keys.Add("CONNECTIONSTRING");
                keys.Add("STOREIMPORTFOLDERPATH");
                keys.Add("KPIEXPORTFOLDERPATH");

                foreach (XmlNode elem in node.ChildNodes)
                {
                    if (elem != null && elem.Name.ToUpper() == "ADD")
                    {
                        if (keys.Contains(elem.Attributes["key"].Value.ToUpper()))
                        {
                            string key = elem.Attributes["key"].Value;
                            string value = elem.Attributes["value"].Value;

                            //if (key.ToUpper().Equals("PASSWORD"))
                            //{
                            //    value = CryptUtil.Decrypt(value, true);
                            //}
                            labels.Add(new Label());
                            ((Label)labels[i]).Location = new Point(25, 40 + i * 25);
                            ((Label)labels[i]).Name = string.Format("lbl{0}", key);
                            ((Label)labels[i]).Size = new Size(184, 25);
                            ((Label)labels[i]).Text = key.Replace("_", " ");
                            Controls.Add(((Label)labels[i]));

                            textboxes.Add(new TextBox());
                            ((TextBox)textboxes[i]).Location = new Point(225, 40 + i * 25);
                            ((TextBox)textboxes[i]).Name = key;
                            ((TextBox)textboxes[i]).Size = new Size(400, 25);
                            ((TextBox)textboxes[i]).TabIndex = i;
                            ((TextBox)textboxes[i]).Text = value;

                            //if (key.ToUpper().Equals("PASSWORD"))
                            //{
                            //    ((TextBox)textboxes[i]).PasswordChar = '*';
                            //}
                            Controls.Add(((TextBox)textboxes[i]));
                            i++;
                        }
                    }
                }
                btnNext.Location = new Point(645, 40 + i * 25);
                Size = new Size(Width, 60 + (i + 2) * 25);
                node = null;
                doc = null;
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

        private void MappingControl(Control parentControl)
        {
            List<string> autoCreateFolderList = new List<string>();
            autoCreateFolderList.Add("STOREIMPORTFOLDERPATH");

            //AUTO SHARE FOLDER
            //------------------------------------------
            //string autoShareFolder = string.Empty;
            //string autoShareName = string.Empty;
            //------------------------------------------

            foreach (Control childControl in parentControl.Controls)
            {
                // Find a Particular Control by its Type
                if (childControl.GetType().ToString().Equals("System.Windows.Forms.TextBox"))
                {
                    SetValueConfigure((childControl).Name, (childControl).Text);

                    try
                    {
                        //Auto create folder
                        if (autoCreateFolderList.Contains((childControl).Name.ToUpper()))
                        {
                            if (!Directory.Exists((childControl).Text))
                            {
                                //Directory.CreateDirectory((childControl).Text);
                                if (!CreateFullFolder((childControl).Text))
                                {
                                    MessageBox.Show("Cannot create folder: '" + (childControl).Text + "'");
                                }
                            }
                        }

                        //AUTO SHARE FOLDER
                        //------------------------------------------
                        //if ((childControl).Name.ToUpper() == autoShareFolder)
                        //{
                        //    if (Directory.Exists((childControl).Text))
                        //    {
                        //        ShareFolder((childControl).Text, autoShareName, autoShareName);
                        //    }
                        //}
                        //------------------------------------------
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

                if (childControl.HasChildren)
                {
                    MappingControl(childControl);
                }
            }
        }


        private void SetValueConfigure(string key, string value)
        {
            try
            {
                //if (key.ToUpper().Equals("PASSWORD"))
                //{
                //    value = CryptUtil.Encrypt(value, true);
                //}
                XmlDocument doc = XmlUtility.XmlConfigDocument(ConfigureFile);
                XmlNode node = doc.SelectSingleNode("/configuration/appSettings");
                XmlElement elem = (XmlElement)node.SelectSingleNode(string.Format("//add[@key='{0}']", key));
                if (elem != null)
                {
                    elem.SetAttribute("value", value);
                }

                //if (key.ToUpper().Equals("WEBSYNCDOMAIN"))
                //{
                //    // config service
                //    XmlNodeList nodeList = doc.SelectNodes("/configuration/system.serviceModel/client/endpoint");
                //    foreach (XmlNode item in nodeList)
                //    {
                //        if (item.Name.ToUpper() == "ENDPOINT")
                //        {
                //            if (item.Attributes["name"].Value.ToUpper() == "DOWNLOADSYNCSERVICE")
                //            {
                //                item.Attributes["address"].Value =
                //                    string.Format("{0}/DownloadSyncService.svc", value);
                //            }
                //            else if (item.Attributes["name"].Value.ToUpper() == "UPLOADSYNCSERVICE")
                //            {
                //                item.Attributes["address"].Value =
                //                    string.Format("{0}/UploadSyncService.svc", value);
                //            }
                //            else if (item.Attributes["name"].Value.ToUpper() == "UTILITYSERVICE")
                //            {
                //                item.Attributes["address"].Value =
                //                    string.Format("{0}/UtilityService.svc", value);
                //            }
                //        }
                //    }
                //}
                doc.Save(ConfigureFile);
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

        private void ShareFolder(string folderPath, string shareName, string description)
        {
            // Create a ManagementClass object
            ManagementClass managementClass = new ManagementClass("Win32_Share");

            // Create ManagementBaseObjects for in and out parameters
            ManagementBaseObject inParams = managementClass.GetMethodParameters("Create");
            ManagementBaseObject outParams;

            // Set the input parameters
            inParams["Description"] = description;
            inParams["Name"] = shareName;
            inParams["Path"] = folderPath;
            inParams["Type"] = 0x0; // Disk Drive

            //Another Type:
            // DISK_DRIVE = 0x0
            // PRINT_QUEUE = 0x1
            // DEVICE = 0x2
            // IPC = 0x3
            // DISK_DRIVE_ADMIN = 0x80000000
            // PRINT_QUEUE_ADMIN = 0x80000001
            // DEVICE_ADMIN = 0x80000002
            // IPC_ADMIN = 0x8000003
            //inParams["MaximumAllowed"] = int maxConnectionsNum;
            // Invoke the method on the ManagementClass object

            outParams = managementClass.InvokeMethod("Create", inParams, null);

            // Check to see if the method invocation was successful
            if ((uint)(outParams.Properties["ReturnValue"].Value) != 0)
            {
                throw new Exception("Unable to share directory '" + folderPath + "'.");
            }
        }

        private bool CreateFullFolder(string folderPath)
        {
            if (!Directory.Exists(folderPath))
            {
                string parentFolderPath = Path.GetDirectoryName(folderPath);

                if (!string.IsNullOrEmpty(parentFolderPath))
                {
                    bool isParentCreated = CreateFullFolder(parentFolderPath);

                    if (!isParentCreated)
                    {
                        return false;
                    }
                }

                try
                {
                    Directory.CreateDirectory(folderPath);
                }
                catch
                {
                    return false;
                }
            }

            return true;
        }
    }
}