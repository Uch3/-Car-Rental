using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Survey : System.Web.UI.Page
{
    string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Owner\Documents\Visual Studio 2017\My Websites\Coursework\Car Rental\Car Rental\App_Data\Cars.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        lblsuccess.Text = "Thank you for your feedback.";
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            string rating = "Insert into Feedback values ('" + DropDownList1.SelectedValue + "') ";
            SqlCommand get = new SqlCommand(rating, con);
            con.Open();

            get.ExecuteNonQuery();
            con.Close();
            
        }
    }
}