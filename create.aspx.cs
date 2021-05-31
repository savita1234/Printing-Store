using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class create : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\register.mdf;Integrated Security=True;User Instance=True");
    


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex >= 0)
        {
            lbltext1.Text = TextBox2.Text;
            lbltext1.Font.Name = DropDownList1.Text;
        }
        if (DropDownList1.SelectedIndex >= 0)
        {
            lbltext2.Text = TextBox3.Text;
            lbltext2.Font.Name = DropDownList1.Text;
        }


    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex >= 0)
        {
            lbltext1.Text = TextBox2.Text;
            lbltext1.Font.Size = Convert.ToInt32(DropDownList2.Text);
        }
        if (DropDownList2.SelectedIndex >= 0)
        {
            lbltext2.Text = TextBox3.Text;
            lbltext2.Font.Size = Convert.ToInt32(DropDownList2.Text);
        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbltext1.Text = TextBox2.Text;
        lbltext1.ForeColor = System.Drawing.Color.FromName(DropDownList3.SelectedItem.Text.ToString());
        lbltext2.Text = TextBox3.Text;
        lbltext2.ForeColor = System.Drawing.Color.FromName(DropDownList3.SelectedItem.Text.ToString());

    }
    
    protected void btn1_Click(object sender, EventArgs e)
    {
        string ins = "Insert into [CREATE5]( frontsidetext, backsidetext, font, fontsize, fontcolor, tshirtcolor, instruction, small, medium, large, xlarge, tshirttype, totalquantity, price, total) values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "','" + DropDownList3.SelectedItem.Value + "','" + DropDownList4.SelectedItem.Value + "','" + TextBox8.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList5.SelectedItem.Value + "','" + TextBox1.Text + "','" + TextBox9.Text + "','" + Convert.ToInt64(TextBox1.Text) * Convert.ToInt64(TextBox9.Text) + "')";
       
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        int num1, num2, res;
        num1 = 300;
        num2 = Convert.ToInt32(TextBox1.Text);
        res = num1 * num2;
        TextBox10.Text = Convert.ToString(res);

        
    }
    
   




    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("PayMent.aspx?totalquantity=" +TextBox1.Text );
  
  
    }
    }

      