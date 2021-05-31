using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class PayMent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            SqlConnection conn = new SqlConnection();
            string totalquantity = Request.QueryString["totalquantity"];


            conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
            conn.Open();
            String getProductDataQuery = "SELECT*FROM CREATE5 WHERE totalquantity = @totalquantity";
            SqlCommand cmd = new SqlCommand(getProductDataQuery, conn);
            cmd.Parameters.AddWithValue("totalquantity", totalquantity.ToString());
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    Total.Text = rdr.GetString(15);


                }
            }
            conn.Close();
        }
        {
            SqlConnection conn = new SqlConnection();
            string totalquantity = Request.QueryString["totalquantity"];


            conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
            conn.Open();
            String getProductDataQuery = "SELECT*FROM UPLOAD1 WHERE totalquantity = @totalquantity";
            SqlCommand cmd = new SqlCommand(getProductDataQuery, conn);
            cmd.Parameters.AddWithValue("totalquantity", totalquantity.ToString());
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    Total.Text = rdr.GetString(11);


                }
            }
            conn.Close();
        }
        {
            SqlConnection conn = new SqlConnection();
            string totalquantity = Request.QueryString["totalquantity"];


            conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
            conn.Open();
            String getProductDataQuery = "SELECT*FROM information1 WHERE totalquantity = @totalquantity";
            SqlCommand cmd = new SqlCommand(getProductDataQuery, conn);
            cmd.Parameters.AddWithValue("totalquantity", totalquantity.ToString());
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    Total.Text = rdr.GetString(9);


                }
            }
            conn.Close();
        }
    }
    

    
     protected void Button1_Click(object sender, EventArgs e)
     {
         SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
        
         string ins = "Insert into [Payment](total, name, mobile, pincode, state, address, locality, city) values('" + Total.Text + "','" + txtbox1.Text + "','" + txtbox2.Text + "','" + txtbox3.Text + "','" + txtbox4.Text + "','" + txtbox5.Text + "','" + txtbox6.Text + "','" + txtbox7.Text +  "')";
         SqlCommand com = new SqlCommand(ins, con);
         con.Open();
         com.ExecuteNonQuery();
         con.Close();

     }
    

}