using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_CategoryNewsDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDate();
        }       
    }
    private void BindDate()
    {
        int PId = Convert.ToInt32( Request.QueryString["Id"].ToString());
        CategoryNews CateNew = new CategoryNews();
        CateNew.Id = PId;
        DataTable tb = CategoryNewsController.SelectOneCategoryNews(CateNew);
        if (tb.Rows.Count > 0)
        {
            lblCatName.Text = tb.Rows[0]["Name"].ToString();
            lblCatCode.Text = tb.Rows[0]["Code"].ToString();
            lblCreateAt.Text = Utilitys.parse_datetime_server(tb.Rows[0]["CreateAt"].ToString());
            lblCreateBy.Text = tb.Rows[0]["CreateBy"].ToString();
        }

    }
    protected void btnGoback_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryNewsView.aspx");
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryNewsView.aspx?Id=" + Request.QueryString["Id"].ToString());
    }
  
}