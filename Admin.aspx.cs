using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin : System.Web.UI.Page
{
    string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Owner\Documents\Visual Studio 2017\My Websites\Coursework\Car Rental\Car Rental\App_Data\Cars.mdf;Integrated Security=True;Connect Timeout=30;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string filename = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(filename);
        int fileSize = postedFile.ContentLength;

        if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
            || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
        {
            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                SqlCommand CmdAdd = new SqlCommand("CarAdd", con);
                CmdAdd.CommandType = System.Data.CommandType.StoredProcedure;
                CmdAdd.Parameters.AddWithValue("@Name", txtcarname.Text);
                CmdAdd.Parameters.AddWithValue("@Mileage", txtmileage.Text);
                CmdAdd.Parameters.AddWithValue("@CarID", txtcarid.Text);
                CmdAdd.Parameters.AddWithValue("@ImageFile", "Images/" + FileUpload1.FileName);
                CmdAdd.Parameters.AddWithValue("@FuelPolicy", txtfuelpolicy.Text);
                CmdAdd.Parameters.AddWithValue("@UnitPrice", txtprice.Text);
                CmdAdd.Parameters.AddWithValue("@CategoryID", txtcategory.Text);

                CmdAdd.ExecuteNonQuery();
            }

            lblsuccess.Text = "Item added Successfully!";

        }
    }
}