using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;


public partial class ImageUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
    
     
       
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        int num3, num4, res;
        num3 = 300;
        num4 = Convert.ToInt32(TextBox5.Text);
        res = num3 * num4;
        TextBox10.Text = Convert.ToString(res);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/imagesupl/") + Path.GetFileName(FileUpload1.FileName));
        string link = "imagesupl/" + Path.GetFileName(FileUpload1.FileName);
        string ins = "Insert into [UPLOAD1](area, place, text, color, image, small, medium, large, xlarge, totalquantity, total) values('" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "','" + TextBox2.Text + "','" + DropDownList3.SelectedItem.Value + "','" + link + "','" + Txtbox1.Text + "','" + Txtbox2.Text + "','" + Txtbox3.Text + "','" + Txtbox4.Text + "','" + TextBox5.Text + "','" + Convert.ToInt64(TextBox5.Text) * Convert.ToInt64(TextBox9.Text) + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Label1.Text = "your image uploaded succesfully";

        Response.Redirect("PayMent.aspx?totalquantity=" + TextBox5.Text);
  
    }
}  