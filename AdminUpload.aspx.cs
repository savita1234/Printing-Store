using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class AdminUpload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/product/") + Path.GetFileName(FileUpload1.FileName));
        string link = "product/" + Path.GetFileName(FileUpload1.FileName);
        string ins = "Insert into [Product7](productid, productname, tshirtcolor, tshirtstyle,price, image, category) values('" + TxtBox1.Text + "','" + TxtBox2.Text + "','" + TxtBox3.Text + "','" + TxtBox4.Text + "','" + TxtBox5.Text + "','" + link + "','" + TextBox6.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        upload.Text = "your product uploaded succesfully";
    }
    }
