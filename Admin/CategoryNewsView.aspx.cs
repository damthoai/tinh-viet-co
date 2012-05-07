using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_CategoryNewsView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        DataTable tb = CategoryNewsController.SelectAllCategoryNews();
        GridCategoryNews.DataSource = tb;
        GridCategoryNews.DataBind();
        Session[GetSessionView()] = GetSessionView();
        Session[GetSessionSearch()] = null;
    }
    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        SearchCategoryNews();
    }

    private void SearchCategoryNews()
    {
        string param = txtSearch.Text;
        DataTable tb = CategoryNewsController.SearchCategoryNews(param);
        GridCategoryNews.DataSource = tb;
        GridCategoryNews.DataBind();

        Session[GetSessionView()] = null;
        Session[GetSessionSearch()] = GetSessionSearch();
    }

    protected void GridCategoryNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridCategoryNews.PageIndex = e.NewPageIndex;
        if (Session[GetSessionView()] != null)
        {
            BindData();
        }
        else
        {
            SearchCategoryNews();
        }
    }

    private string GetSessionView()
    {
        return "SessionView"; 
    }
    private string GetSessionSearch()
    {
        return "SessionView";
    }
    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryNewsEdit.aspx");
    }
}