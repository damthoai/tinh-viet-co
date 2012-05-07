using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }

    }

    protected void checkLogin()
    {
        string userName = txtUsername.Text.Trim();
        string passwork = txtPasswork.Text.Trim();
        //Checked user and passwork
        string loginResurt = "";
        if (userName == "damthoai" && passwork == "tienvao2012")
        {
            loginResurt = "";
        }
        else
        {
            loginResurt = "Login false";
        }

        if (loginResurt == "")
        {
            Session["USERNAME"] = userName;
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblerror.Text = loginResurt;
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        checkLogin();
    }
}