using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Productinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {

            SqlConnection conn = new SqlConnection();

            string productid = Request.QueryString["productid"];
            conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
            conn.Open();
            String getProductDataQuery = "SELECT productname, tshirtcolor, tshirtstyle, price, image FROM Product7 WHERE productid = @productid";
            SqlCommand cmd = new SqlCommand(getProductDataQuery, conn);
            cmd.Parameters.AddWithValue("productid", productid.ToString());




            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    Image1.ImageUrl = rdr.GetString(4);
                    name.Text = rdr.GetString(0);
                    color.Text = rdr.GetString(1);
                    style.Text = rdr.GetString(2);
                    price.Text = rdr.GetString(3);


                }
            }
            conn.Close();
       
            SqlConnection con = new SqlConnection();
            con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            string ins = "select*from Register1";
            SqlCommand cmd1 = new SqlCommand(ins, con);
            using (SqlDataReader rdr = cmd1.ExecuteReader())
            {
                while (rdr.Read())
                {

                    TextBox1.Text = rdr.GetString(0);
                }
            }
            con.Close();


        }
    }
        
        


    protected void Button1_Click(object sender, EventArgs e)
    {
        int num1, num2, res;
        num1 = Convert.ToInt32(price.Text);
        num2 = Convert.ToInt32(text5.Text);
        res = num1 * num2;
        txt1.Text = Convert.ToString(res);
       
       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");

        string ins = "Insert into [information](tname, color, price, small, medium, large, xlarge, totalquantity, total) values('" + name.Text + "','" + color.Text + "','" + price.Text + "','" + text1.Text + "','" + text2.Text + "','" + text3.Text + "','" + text4.Text + "','" + text5.Text + "','" + txt1.Text + "')";

        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("PayMent.aspx?totalquantity=" + text5.Text);
       
       
    }
}
