using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GENERAL_LOGOUT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string strpreviouspage = "";
        if (Request.UrlReferrer != null)
        {
            strpreviouspage = Request.UrlReferrer.Segments[Request.UrlReferrer.Segments.Length - 1];
        }
        if (strpreviouspage == "")
        {
            Response.Redirect("~/GENERAL/HOMEPAGE.aspx");
        }
    }

    protected void btnPRCD_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/GENERAL/HOMEPAGE.aspx");
    }
}