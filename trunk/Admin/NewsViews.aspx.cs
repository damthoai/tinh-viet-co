using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_NewsViews : System.Web.UI.Page
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
        GridNews.DataSource = tb;
        GridNews.DataBind();

        Session[sessionBindData()] = sessionBindData();
        Session[sessionFindData()] = null;
     }

    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewsEdit.aspx");
    }
    protected void GridNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridNews.PageIndex = e.NewPageIndex;
        if (Session[sessionBindData()] != null)
        {
            BindData();
        }
        else
        {
            searchDataNews();
        }
    }

    public string sessionBindData()
    {
        return "BindData";
    }
    public string sessionFindData()
    {
        return "FindData";
    }
    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        searchDataNews();

        Session[sessionBindData()] = null;
        Session[sessionFindData()] = sessionFindData();
    }

    private void searchDataNews()
    {
        string param = txtSearch.Text;
        DataTable tb = NewsController.SearchNews(param);
        GridNews.DataSource = tb;
        GridNews.DataBind();
    }
    protected void btnView_Click(object sender, EventArgs e)
    {

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {

    }
}