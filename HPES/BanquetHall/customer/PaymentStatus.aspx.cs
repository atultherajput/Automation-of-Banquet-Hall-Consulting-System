using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_PaymentStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["Login"] == null)
        {
            Response.Redirect("~/Validator.aspx");
        }
        if (Request.Cookies["Booking"] == null)
        {
            Response.Redirect("~/customer/BookHall.aspx");
        }
        if (Request.Cookies["Payment"] == null)
        {
            Response.Redirect("~/customer/Payment.aspx");
        }


        if (Request.QueryString["verifyedcode"]=="1")
        {
            Label2.Text = "Payment Successful and Booking Complete.";
        }
        else
        {
            Label2.Text = "Payment Failed. Please Retry Booking.";
        }
    }
}