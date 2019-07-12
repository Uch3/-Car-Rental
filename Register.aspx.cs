using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Owner\Documents\Visual Studio 2017\My Websites\Coursework\Car Rental\Car Rental\App_Data\Cars.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


    }

    protected void btnregister_click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            con.Open();
            SqlCommand CmdAdd = new SqlCommand("CustomerAdd", con);
            CmdAdd.CommandType = System.Data.CommandType.StoredProcedure;
            CmdAdd.Parameters.AddWithValue("@Firstname", txtFname.Text);
            CmdAdd.Parameters.AddWithValue("@Lastname", txtlname.Text);
            CmdAdd.Parameters.AddWithValue("@DriversLicenseno", txtDL.Text);
            CmdAdd.Parameters.AddWithValue("@Email", txtemail.Text);
            CmdAdd.Parameters.AddWithValue("@Telephone", txtphone.Text);
            CmdAdd.Parameters.AddWithValue("@Password", pswd1.Text);
            CmdAdd.ExecuteNonQuery();
        }
        lblsuccess.Text = "Registration Successful!";

        if (Session["Pudate"] == null && Session["dodate"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");

        }
    }
}