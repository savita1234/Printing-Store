using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }

    }



    protected void uid_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {

        con.Open();

        string check = "Select*from Register1 where name=@name";
        SqlCommand com = new SqlCommand(check, con);

        com.Parameters.AddWithValue("@name", uid.Text);
        SqlDataReader reader = com.ExecuteReader();

        String db_name = "";
        string db_pass = "";

        if (reader.Read())
        {
            db_name = reader.GetValue(0).ToString();
            db_pass = reader.GetValue(2).ToString();
        }
        if (pass.Text == db_pass)
        {
            Session["name"] = db_name;
            Response.Redirect("home.aspx");
        
        }
        else
        {
            Response.Write("error");
        }
        reader.Close();
        string username = uid.Text;
        string password = pass.Text;

        if ((this.uid.Text == "Admin") && (this.pass.Text == "admin1234"))
        {

            Response.Redirect("AdminUpload.aspx");

        }
        else
        {
            Label1.Text = ("invalid name and password");

        }

        con.Close();
    }
   
        
    
}





