using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PASSENGER_HOMEPAGEPASSENGER : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER"] != null)
        {
            lblUSERNAME.Text = Session["USER"].ToString();
        }
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
}