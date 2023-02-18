using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PASSENGER_CONFIRMBOOKING : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER"] != null)
        {
            lblUSERNAME.Text = Session["USER"].ToString();
        }
        //string strpreviouspage = "";
        //if (Request.UrlReferrer != null)
        //{
        //    strpreviouspage = Request.UrlReferrer.Segments[Request.UrlReferrer.Segments.Length - 1];
        //}
        //if (strpreviouspage == "")
        //{
        //    Response.Redirect("~/GENERAL/HOMEPAGE.aspx");
        //}

        if (Session["DEST"] != null)
        {
            lblOrigin.Text = Session["DEST"].ToString();
        }

        if (Session["ARR"] != null)
        {
            lbldestination.Text = Session["ARR"].ToString();
        }

        if (Session["TRIP"] != null)
        {
            lbltrip.Text= Session["TRIP"].ToString();
        }

        if (Session["DEP"] != null)
        {
            lbldeprt.Text = Session["DEP"].ToString();
        }

        if (Session["ARV"] != null)
        {
            lblarrv.Text = Session["ARV"].ToString();
        }

        if (Session["SEAT"] != null)
        {
            lblseat.Text = Session["SEAT"].ToString();
        }


        //string strpreviouspage = "";
        //if (Request.UrlReferrer != null)
        //{
        //    strpreviouspage = Request.UrlReferrer.Segments[Request.UrlReferrer.Segments.Length - 1];
        //}
        //if (strpreviouspage == "")
        //{
        //    Response.Redirect("~/GENERAL/LOGIN.aspx");
        //}

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["uiadata"].ToString();
        // con.ConnectionString = ConfigurationManager.ConnectionStrings["uadb"].ToString();

        con.Open();

        SqlCommand cmd = new SqlCommand("getcustomer", con);
        cmd.CommandType = CommandType.StoredProcedure;


        cmd.Parameters.AddWithValue("@name", lblfullname.Text.ToString());
        cmd.Parameters.AddWithValue("@id", lblUSERNAME.Text.ToString());
        cmd.Parameters.AddWithValue("@nation", lblnation.Text.ToString());
        cmd.Parameters.AddWithValue("@dob", lbldob.Text.ToString());
        cmd.Parameters.AddWithValue("@email", lblemail.Text.ToString());
        cmd.Parameters.AddWithValue("@ic", lblic.Text.ToString());
        cmd.Parameters.AddWithValue("@address", lbladdress.Text.ToString());
        cmd.Parameters.AddWithValue("@contact", lblcontact.Text.ToString());

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            lblfullname.Text = dr["Pass_Name"].ToString();
            lblnation.Text = dr["Pass_Nationality"].ToString();
            lbldob.Text = dr["Passenger_DOB"].ToString();
            lblemail.Text = dr["Pass_Email"].ToString();
            lblic.Text = dr["Pass_IC"].ToString();
            lbladdress.Text = dr["Pass_Address"].ToString();
            lblcontact.Text = dr["Pass_Contact"].ToString();


        }
        con.Close();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["uiadata"].ToString();
        //con.ConnectionString = ConfigurationManager.ConnectionStrings["uadb"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand("payment", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@name",lblfullname.Text.ToString());
        cmd.Parameters.AddWithValue("@ic", lblic.Text.ToString());
        cmd.Parameters.AddWithValue("@origin", lblOrigin.Text.ToString());
        cmd.Parameters.AddWithValue("@arrival", lbldestination.Text.ToString());
        cmd.Parameters.AddWithValue("@trip", lbltrip.Text.ToString());
        cmd.Parameters.AddWithValue("@deptdate", lbldeprt.Text.ToString());
        cmd.Parameters.AddWithValue("@arrvdate", lblarrv.Text.ToString() );
        cmd.Parameters.AddWithValue("@cardtype", cmbCardType.Text.ToString());
        cmd.Parameters.AddWithValue("@cardnumber", txtCardNumber.Text.ToString() );
        cmd.Parameters.AddWithValue("@cvv", txtCVV.Text.ToString() );
        cmd.Parameters.AddWithValue("@expmonth",cmbEXPMO.Text.ToString() );
        cmd.Parameters.AddWithValue("@expyear", cmbEXPYE.Text.ToString());


        int j = cmd.ExecuteNonQuery();
        if (j != 0)
        {
            Server.Transfer("~/PASSENGER/PURCHASEDPAGE.aspx");

        }



    }
}
