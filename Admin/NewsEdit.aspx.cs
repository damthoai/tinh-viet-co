using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_NewsEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategoryNews();
            int PId = 0;
            try
            {
                PId = Convert.ToInt32(Request.QueryString["Id"].ToString());
            }
            catch (Exception)
            {
            }

            if (PId != 0)
            {
                BindData();

            }
            else
            {
                txtCreateAt.Text = DateTime.Now.ToString("dd/MM/yyyy");
                txtCreateBy.Text = Session["UserName"].ToString();
            }
        }
    }
    private void BindCategoryNews()
    {
        DataTable tb = CategoryNewsController.SelectAllCategoryNews();
        cmbCatNews.DataSource = tb;
        cmbCatNews.DataTextField = "Name";
        cmbCatNews.DataValueField = "Id";
        cmbCatNews.DataBind();
        cmbCatNews.Items.Insert(0, new ListItem("Choose Category News"));
    }
    private void BindData()
    {
        int PId = 0;
        try
        {
            PId = Convert.ToInt32(Request.QueryString["Id"].ToString());
        }
        catch (Exception)
        {

        }
        News news = new News();
        news.Id = PId;
        DataTable tb = NewsController.SelectOneNews(news);
        if (tb.Rows.Count > 0)
        {
            cmbCatNews.SelectedValue = tb.Rows[0]["CatId"].ToString();
            txtTitle.Text = tb.Rows[0]["Title"].ToString();
            editor1.Text = tb.Rows[0]["Detail"].ToString();
            editor2.Text = tb.Rows[0]["Content"].ToString();
            txtCreateAt.Text = Utilitys.parse_datetime_server(tb.Rows[0]["CreateAt"].ToString());
            txtCreateBy.Text = tb.Rows[0]["CreateBy"].ToString();
            imgImages.ImageUrl = tb.Rows[0]["Images"].ToString();
            imgImages.Visible = true;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        int PId = 0;
        try
        {
            PId = Convert.ToInt32(Request.QueryString["Id"].ToString());
        }
        catch (Exception)
        {

        }
        int result = 0;
        News news = new News();
        news.CatId = cmbCatNews.SelectedValue.ToString();
        news.Title = txtTitle.Text;
        news.Detail = editor1.Text;
        news.Contents = editor2.Text;
        news.Images = imgImages.ImageUrl;
        news.CreateAt = Utilitys.get_date_server(txtCreateAt.Text);
        news.CreateBy = txtCreateBy.Text;

        if (PId != 0)
        {
            news.Id = PId;
            result = NewsController.UpdateNews(news);
        }
        else
        {
            result = NewsController.InsertNews(news);
        }
        if (result != 0)
        {
            Response.Redirect("NewsViews.aspx");
        }
        else
        {
            lblResult.Text = "Update info false!!!";
        }

    }
    protected void btnGoback_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewsViews.aspx");
    }
    protected void btnUploadImages_Click(object sender, EventArgs e)
    {
        if (fupImages.HasFile)
        {
            try
            {
                string filename = fupImages.FileName;
                fupImages.SaveAs(Server.MapPath("~/assets/images/") + filename);
                imgImages.ImageUrl = "~/assets/images/" + filename;
                imgImages.Visible = true;
                lblResult.Text = "";
            }
            catch (Exception ex)
            {
                lblResult.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }
}