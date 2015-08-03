using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Xml;
using System.IO;

namespace SetupCustomAction.Common
{
    public static class XmlUtility
    {
        #region Public Methods

        /// <summary>
        /// Get App Setting Key
        /// </summary>
        /// <returns></returns>
        public static string GetAppSetting(XmlDocument doc, string keyName)
        {
            if (doc == null)
            {
                return string.Empty;
            }
            XmlNode node = doc.SelectSingleNode("/configuration/appSettings");
            XmlElement elem = (XmlElement)node.SelectSingleNode(string.Format("//add[@key='{0}']", keyName));
            if (elem != null)
            {
                return elem.GetAttribute("value");
            }
            else
            {
                return string.Empty;
            }
        }

        public static XmlDocument XmlConfigDocument(string configFile)
        {
            XmlDocument doc = new XmlDocument();
            if (File.Exists(configFile))
            {
                doc.Load(configFile);
            }
            return doc;
        }

        #endregion Public Methods
    }
}
