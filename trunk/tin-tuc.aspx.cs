using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class tin_tuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    private void BindData()
    {
        DataTable tb = NewsController.SelectAllNews();
        listNews.DataSource = tb;
        listNews.DataBind();
        
    }
    protected void lst_bds_moinhat_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
}