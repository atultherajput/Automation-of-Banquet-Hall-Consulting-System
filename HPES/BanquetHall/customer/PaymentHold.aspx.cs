using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_PaymentHold : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] == null)
        {
            Response.Redirect("~/Validator.aspx");
        }
        //if (Request.Cookies["Booking"] == null)
        //{
        //    Response.Redirect("~/customer/BookHall.aspx");
        //}
        //if (Request.Cookies["Payment"] == null)
        //{
        //    Response.Redirect("~/customer/Payment.aspx");
        //}
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Response.Redirect("~/customer/PaymentStatus.aspx?verifyedcode=" + Request.QueryString["authcode"]);
    }
}