using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CheckUserLogin();
           
        }
    }
    protected void CheckUserLogin()
    {
        if (Session["USERNAME"] == null )
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            lblUsername.Text = Session["USERNAME"].ToString().ToUpper();
        }
    }
}
