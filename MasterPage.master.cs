using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            if ((TextBox1.Text == "tshirt for mens") || (TextBox1.Text == "tshirt") || (TextBox1.Text == "tshirts"))
                Response.Redirect("Men.aspx");

            if ((TextBox1.Text == "tshirt for women") || (TextBox1.Text == "women") || (TextBox1.Text == "women section"))
                Response.Redirect("Women.aspx");

            if ((TextBox1.Text == "hoodies for men") || (TextBox1.Text == "hoodies"))
                Response.Redirect("HoddieMen.aspx");
        }

       
    }
}
