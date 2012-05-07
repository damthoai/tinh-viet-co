using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class chi_tiet_tin_tuc : System.Web.UI.Page
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
        int Id = Convert.ToInt32(Request.QueryString["Id"]);

        News item = new News();
        item.Id = Id;
        DataTable tb = NewsController.SelectOneNews(item);

        if (tb.Rows.Count > 0)
        {
            frmDetail.DataSource = tb;
            frmDetail.DataBind();
        }

    }
}