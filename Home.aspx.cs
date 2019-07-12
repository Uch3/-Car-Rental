using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
         Pudate.Text = DateTime.Today.ToShortDateString();
         // DODate.Text = DateTime.Now.AddDays(1).ToShortDateString();

        if (!Request.IsSecureConnection)
        {
            string url = "https:"
                + ConfigurationManager.AppSettings["SecureAppPath"]
                + "Home.aspx";
            Response.Redirect(url);
            

        }


    }
    public static DateTime DateUS(string date)
    {
        date = date.Trim();
        return DateTime.Parse(date, new System.Globalization.CultureInfo("en-GB"));
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {      //drop off session
        if (Dropoffcb.Checked == true)
        {
            Session["dropoff"] = ddlpickup.SelectedValue;
        }
        else
        {
            Session["dropoff"] = ddldropoff.SelectedValue;
        }
        Session["PUlocation"] = ddlpickup.SelectedValue;
        Session["Pudate"] = Pudate.Text;
        Session["putime"] = ddlputime.SelectedValue;
        Session["dodate"] = DODate.Text;
        Session["dotime"] = ddldotime.SelectedValue;
        //Number of days
        int diff = (DateUS(DODate.Text) - DateUS(Pudate.Text)).Days;
        Session["Days"] = diff;

        if (Agecb.Checked == true)
        {
            Response.Redirect("Cars.aspx");
        }
        else
        {
            Label4.Text = "Driver must be aged between 25-70";
        }
        
    }

    protected void Dropoffcb_CheckedChanged(object sender, EventArgs e)
    {
        ddldropoff.Visible = false;
    }
}