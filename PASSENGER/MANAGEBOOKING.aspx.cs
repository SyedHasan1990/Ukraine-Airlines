using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PASSENGER_MANAGEBOOKING : System.Web.UI.Page
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

        //SqlConnection con = new SqlConnection();
        //con.ConnectionString = ConfigurationManager.ConnectionStrings["uadb"].ToString();

        //con.Open();

        //SqlCommand cmd = new SqlCommand("getrecords", con);
        //cmd.CommandType = CommandType.StoredProcedure;

        //cmd.Parameters.AddWithValue("@name", lblUSERNAME.Text.ToString());

        //SqlDataReader dr = cmd.ExecuteReader();

        //recordview.DataSource = dr;
        //recordview.DataBind();
        //dr.Close();
        //con.Close();



    }
}