using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class Men : System.Web.UI.Page
{

 
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
        conn.Open();
        String getProductDataQuery = "SELECT* FROM Product7 WHERE category = 'men'";
        SqlCommand cmd = new SqlCommand(getProductDataQuery, conn);

        using (SqlDataReader rdr = cmd.ExecuteReader())
        {
            while (rdr.Read())
            {
                var img = new ImageButton();
                img.ImageUrl += rdr.GetString(5);
                img.ID = rdr["productid"].ToString();
                img.Click += new ImageClickEventHandler(test_Click);
                img.CssClass = "product";
                

                this.ProductPanel.Controls.Add(img);
                    
            }
        }
           }



    protected void test_Click(object sender, ImageClickEventArgs e)
    {
        String productid = "";

        ImageButton button = sender as ImageButton;
        if (button != null)
        {
            productid = button.ID;
        }
        Response.Redirect("Productinfo.aspx?productid="+productid);
    }
}
    


    
