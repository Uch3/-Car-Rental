using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update : System.Web.UI.Page
{
    string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Owner\Documents\Visual Studio 2017\My Websites\Coursework\Car Rental\Car Rental\App_Data\Cars.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                SqlCommand CmdAdd = new SqlCommand("CustomerUpdate", con);
                CmdAdd.CommandType = System.Data.CommandType.StoredProcedure;
                CmdAdd.Parameters.AddWithValue("@Firstname", fname.Text);
                CmdAdd.Parameters.AddWithValue("@Lastname", txtlname.Text);
                CmdAdd.Parameters.AddWithValue("@DriversLicenseno", txtdlno.Text);
                CmdAdd.Parameters.AddWithValue("@Email", Session["email"].ToString());
                CmdAdd.Parameters.AddWithValue("@Telephone", txtphone.Text);
                CmdAdd.Parameters.AddWithValue("@Password", txtpwd.Text);
                CmdAdd.ExecuteNonQuery();
            }
        lblsuccess.Text = "Update Successful!";
    }
}