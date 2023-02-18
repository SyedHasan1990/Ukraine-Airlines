using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class GENERAL_REGISTRATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void bntregister_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["uiadata"].ToString();
       // con.ConnectionString = ConfigurationManager.ConnectionStrings["uadb"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand("createpassenger", con);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlCommand cmd1 = new SqlCommand("login", con);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@id", txtUsername.Text.ToString());
        cmd1.Parameters.AddWithValue("@password", txtPASS.Text.ToString());

        cmd.Parameters.AddWithValue("@name", txtName.Text.ToString());
        cmd.Parameters.AddWithValue("@id", txtUsername.Text.ToString());
        cmd.Parameters.AddWithValue("@nation", cmbNation.Text.ToString());
        cmd.Parameters.AddWithValue("@dob",txtDate.Text.ToString());
        cmd.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@answer", txtanswer.Text.ToString());
        cmd.Parameters.AddWithValue("@ic", txtIC.Text.ToString());
        cmd.Parameters.AddWithValue("@address", txtAddress.Text.ToString());
        cmd.Parameters.AddWithValue("@contact", txtContact.Text.ToString());

       
        int j = cmd.ExecuteNonQuery();
        if (j != 0)
        {
           
           
                Response.Write("<script LANGUAGE='JavaScript' >alert('YOUR ACCOUNT HAS BEEN CREATED SUCCESSFULLY !')</script>");
           
        }

        int k = cmd1.ExecuteNonQuery();
        if (k != 0)
        {


            Response.Write("<script LANGUAGE='JavaScript' >alert('YOU CAN LOGIN TO YOUR ACCOUNT !')</script>");

        }



    }
}