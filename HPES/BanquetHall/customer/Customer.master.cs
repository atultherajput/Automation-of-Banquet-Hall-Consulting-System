using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_Customer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.Cookies["Login"]["name"];
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Cookies["Login"].Expires = DateTime.Now.AddMilliseconds(-1);
        Response.Redirect("~/Validator.aspx");
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
