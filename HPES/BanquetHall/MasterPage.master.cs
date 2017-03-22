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
        if (Request.Cookies["Login"]!=null)
        {
            LinkButton1.Text = "Sign Out";
            LinkButton2.Visible = true;
            LinkButton2.Text = Request.Cookies["Login"]["name"];
            Label1.Text = "";
            Label1.Visible = false;
            //Response.Cookies["Login"].Expires = DateTime.Now.AddMilliseconds(-1);


        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text=="Sign Out")
        {
            LinkButton1.Text = "Register/Sign In";
            Response.Cookies["Login"].Expires = DateTime.Now.AddMilliseconds(-1);
            Response.Redirect("~/Validator.aspx");
        }
        else
        {
            Response.Redirect("~/Validator.aspx");
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedItem.Selected)
        {
            if (Request.Cookies["Login"]!=null)
            {
                if (Request.Cookies["Login"]["admin"] == "1")
                {
                    Response.Redirect("~/admin/Admin.aspx");
                }
                else
                {
                    Response.Redirect("~/customer/Customer.aspx");
                } 
            }
            else
            {
                Response.Redirect("~/Validator.aspx");
            }
        }
    }
}
