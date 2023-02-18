using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GENERAL_LOGIN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }


    }

    protected void bntlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["uiadata"].ToString();
       // con.ConnectionString = ConfigurationManager.ConnectionStrings["uadb"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand("loginaccess", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@id", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtPASS.Text.ToString());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read() == true)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('LOGIN SUCCESSFULL !')</script>");
            Session["USER"] = txtEmail.Text;
            Response.Redirect("~/PASSENGER/HOMEPAGEPASSENGER.aspx");
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('LOGIN UNSECCESSFULL ! CHECK YOUR USERNAME OR PASSWORD')</script>");
        }
    }
}