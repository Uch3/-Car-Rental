using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Owner\Documents\Visual Studio 2017\My Websites\Coursework\Car Rental\Car Rental\App_Data\Cars.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


        }
    }
    protected void Datalist1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       // string price = String.Empty;

        string keyField = Convert.ToString(DataList1.DataKeys[e.Item.ItemIndex]);
        Session["key"] = keyField;
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            //getprice
            string priceget = "select UnitPrice from [Cars] where CarID = '" + keyField + "' ";
            SqlCommand get = new SqlCommand(priceget, con);
            con.Open();

            string getprice = (get.ExecuteScalar().ToString());
            con.Close();
            decimal price = (Convert.ToDecimal(getprice) * Convert.ToDecimal(Session["Days"]));
            Session["price"] = price;
        }
            if (Session["email"] != null)
            {
                Response.Redirect("Confirm.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            

    }
}    