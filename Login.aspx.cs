using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Owner\Documents\Visual Studio 2017\My Websites\Coursework\Car Rental\Car Rental\App_Data\Cars.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            //admin login
            if (txtemail.Text == "Support@kamcars.com" && txtpswd.Text == "kamcars123")
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                //customer login query
                string logindetails = "select count (*) from [Customer] where Email = '" + txtemail.Text + "' and Password = '"
                + txtpswd.Text + "' ";
                SqlCommand login = new SqlCommand(logindetails, con);
                con.Open();

                int check = Convert.ToInt32(login.ExecuteScalar().ToString());
                con.Close();

               

                if (check == 1)
                {   
                    //get firstname and save in session
                    string get = "select [First Name] from [Customer] where Email = '" + txtemail.Text + "' ";
                    SqlCommand name = new SqlCommand(get, con);
                    con.Open();

                    string getname = (name.ExecuteScalar().ToString());
                    con.Close();
                    Session["Name"] = getname;

                    Session["email"] = txtemail.Text;

                    //login cookies
                    Response.Cookies["Username"].Value = txtemail.Text;
                    Response.Cookies["Username"].Expires = DateTime.Now.AddMinutes(5);

                    Response.Redirect("Confirm.aspx");
                }
                else
                {
                    lblcreate.Text = "Invalid login details. Please Create an Account";
                }


                
            }

        }
    }
}