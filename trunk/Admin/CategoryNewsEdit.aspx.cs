using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_CategoryNewsEdit : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
    private void BindData()
    {

        CategoryNews catNew = new CategoryNews();
        int PId = Convert.ToInt32(Request.QueryString["Id"].ToString());
        catNew.Id = PId;
        DataTable tb = CategoryNewsController.SelectOneCategoryNews(catNew);
        if (tb.Rows.Count > 0)
        {
            txtName.Text = tb.Rows[0]["Name"].ToString();
            txtCatCode.Text = tb.Rows[0]["Code"].ToString();
            txtCreateAt.Text = Utilitys.parse_datetime_server(tb.Rows[0]["CreateAt"].ToString());
            txtCreateBy.Text = tb.Rows[0]["CreateBy"].ToString();
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
        CategoryNews catNew = new CategoryNews();
        int result = 0;
        catNew.Name = txtName.Text;
        catNew.Code = txtCatCode.Text;
        catNew.CreateAt = Utilitys.get_date_server(txtCreateAt.Text);
        catNew.CreateBy = txtCreateBy.Text;
        if (PId != 0)
        {
            catNew.Id = PId;
            result = CategoryNewsController.UpdateCategoryNews(catNew);
        }
        else
        {
            result = CategoryNewsController.InsertCategoryNews(catNew);
        }
        if (result == 0)
        {
            lblResult.Text = "Can not save infomation!!!";
        }
        else
        {
            Response.Redirect("CategoryNewsView.aspx");
        }

    }
    protected void btnGoback_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryNewsView.aspx");
    }

}