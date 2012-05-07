using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

public partial class domain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCheckDomain_Click(object sender, EventArgs e)
    {
        string domainName = txtDomainName.Text.Trim();
        string ext = "";

        List<string> list = new List<string>();
        if (chkLstExt_biz.Checked) list.Add(domainName + ".biz");
        if (chkLstExt_BizVn.Checked) list.Add(domainName + ".biz.vn");
        if (chkLstExt_Com.Checked) list.Add(domainName + ".com");
        if (chkLstExt_vn.Checked) list.Add(domainName + ".vn");
        if (chkLstExt_net.Checked) list.Add(domainName + ".net");
        if (chkLstExt_ComVn.Checked) list.Add(domainName + ".com.vn");
        if (chkLstExt_org.Checked) list.Add(domainName + ".org");
        if (chkLstExt_OrgVn.Checked) list.Add(domainName + ".org.vn");
        if (chkLstExt_Org1Vn.Checked) list.Add(domainName + ".org.vn");
        if (chkLstExt_info.Checked) list.Add(domainName + ".info");
        if (chkLstExt_InfoVn.Checked) list.Add(domainName + ".info.vn");
        if (chkLstExt_EduVn.Checked) list.Add(domainName + ".edu.vn");
        if (chkLstExt_GovVn.Checked) list.Add(domainName + ".gov.vn");
        if (chkLstExt_HealthVn.Checked) list.Add(domainName + ".health.vn");
        if (chkLstExt_NameVn.Checked) list.Add(domainName + ".name.vn");


        string resutl = "";
        if (list.Count > 0)
        {
            foreach (string item in list)
            {
                resutl += checkDomain(item);
            }
        }
        lblResult.Text = resutl;
    }

    private static string checkDomain(string domainName)
    {
        string resutl = "";
        string url = "http://www." + domainName;

        WebResponse response = null;

        string data = string.Empty;

        try
        {

            WebRequest request = WebRequest.Create(url);

            response = request.GetResponse();

            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {

                data = reader.ReadToEnd();

            }

            // domain exists, this is valid domain

            resutl = "<b>Tên miền " + domainName + " đã tồn tại !</b></br>";

        }

        catch (WebException ee)
        {

            // return false, most likely this domain doesn't exists

            resutl = "<br /><b>Tên miền " + domainName + " chưa tồn tại bạn có thể đăng ký.</b> <br />";

        }

        catch (Exception ee)
        {

            // Some error occured, the domain might exists

            resutl = "<b> Xin lỗi hiện thời không kiểm tra được tên miền " + domainName + ", vui lòng kiểm tra sau </b></br> ";

        }

        finally
        {

            if (response != null) response.Close();

        }
        return resutl;
    }
}