using System;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class Confirm : System.Web.UI.Page
{
    string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Owner\Documents\Visual Studio 2017\My Websites\Coursework\Car Rental\Car Rental\App_Data\Cars.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Name"] != null)
            {
                lbluser.Text = Session["Name"].ToString();

            }
        }

        if (!Request.IsSecureConnection)
        {
            string url = "https:"
                + ConfigurationManager.AppSettings["SecureAppPath"]
                + "Confirm.aspx";
            Response.Redirect(url);


        }

    }
    private void ExpireAllCookies()
    {
        if (Response.Cookies ["Username"]!= null)
        {
            Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
          //  HttpContext.Current.Response.Cookies.Add(expiredCookie); // overwrite it
                    HttpContext.Current.Session.Remove("email");
                    HttpContext.Current.Session.Abandon();
                
            

            // clear cookies server side
            HttpContext.Current.Request.Cookies.Clear();
        }
    }



    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            //customer rent query
            string rentcheck = "select count (*) from [Rents] where Email = '" + Session["email"].ToString() + "' ";
            SqlCommand rent = new SqlCommand(rentcheck, con);
            con.Open();

            int check = Convert.ToInt32(rent.ExecuteScalar().ToString());
            con.Close();

            if (check == 1)
            {
                lbltxt0.Text = "Drivers can rent only a Car at a time."; 
            }
            else
            {
                con.Open();
                SqlCommand CmdAdd = new SqlCommand("BookingsAdd", con);
                CmdAdd.CommandType = System.Data.CommandType.StoredProcedure;
                CmdAdd.Parameters.AddWithValue("@Name", lbluser.Text);
                CmdAdd.Parameters.AddWithValue("@Email", Session["email"].ToString());
                CmdAdd.Parameters.AddWithValue("@CarID", Session["key"].ToString());
                CmdAdd.Parameters.AddWithValue("@PickUpDate", Session["Pudate"].ToString());
                CmdAdd.Parameters.AddWithValue("@DropOffDate", Session["dodate"].ToString());

                CmdAdd.ExecuteNonQuery();

                //Send Email

                var fromSender = new MailAddress("********@gmail.com", "KamCars");

                var toReceiver = new MailAddress("********@gmail.com", Session["Name"].ToString());

                const string Password = "*********";

                const string subject = "Car Reservation";

                string body = "Thank you for your Reservation " + Session["name"].ToString() + ". Your Pick-up  & Drop-off dates are " +
                    "" + Session["Pudate"].ToString() + " " + Session["putime"].ToString() + " & " + Session["dodate"].ToString() + " " +
                    "" + Session["dotime"].ToString() + " respectively. Total amount is: £" + Session["price"].ToString() +
                    " ";



                var smtp = new SmtpClient

                {

                    Host = "smtp.gmail.com",

                    Port = 587,

                    EnableSsl = true,

                    DeliveryMethod = SmtpDeliveryMethod.Network,

                    //UseDefaultCredentials = false,

                    Credentials = new NetworkCredential(fromSender.Address, Password)

                };

                using (var message = new MailMessage(fromSender, toReceiver)

                {

                    Subject = subject,

                    Body = body

                })

                {

                    smtp.Send(message);

                }


                LinkButton1.Visible = true;
                lbltxt.Text = "Your Booking Confirmation has been sent to your E-mail, Thank you for choosing kamCars! ";
            }
        }
       

    }

    protected void btnchange_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("Home.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("survey.aspx");
    }
}