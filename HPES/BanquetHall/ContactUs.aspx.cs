using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] != null)
        {
            MultiView1.ActiveViewIndex = 1;
            Label2.Text = Request.Cookies["Login"]["profileid"];
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string insertQry = "insert into FEEDBACK values(" + Label2.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now.Date + "')";
        string res = BLogic.ExecuteQuery(insertQry).ToString();

        if (res == "1")
        {
            Label3.Text = "Message Sent!!!";
        }
        else
        {
            Label3.Text = "Message Failed!!!";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}