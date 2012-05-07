using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_NewsDisplay : System.Web.UI.Page
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
        int PId = Convert.ToInt32(Request.QueryString["Id"].ToString());
        News news = new News();
        news.Id = PId;
        DataTable tb = NewsController.SelectOneNews(news);
        if (tb.Rows.Count > 0)
        {
            lblId.Text = PId.ToString();
            lblCatName.Text = tb.Rows[0]["CateNewName"].ToString();
            lblTitle.Text = tb.Rows[0]["Title"].ToString();
            lblDetail.Text = tb.Rows[0]["Detail"].ToString();
            lblCreateAt.Text = Utilitys.parse_datetime_server(tb.Rows[0]["CreateAt"].ToString());
            lblCreateBy.Text = tb.Rows[0]["CreateBy"].ToString();
            lblContent.Text = tb.Rows[0]["Contents"].ToString();
            imgImages.ImageUrl = tb.Rows[0]["Images"].ToString();
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewsEdit.aspx?Id=" + Request.QueryString["Id"].ToString());
    }
    protected void btnGoback_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewsViews.aspx");
    }
}