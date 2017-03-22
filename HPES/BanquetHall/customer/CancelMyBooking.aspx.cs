using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_CancelMyBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] == null)
        {
            Response.Redirect("~/Validator.aspx");
        }

        if (Request.QueryString["bookid"]==null)
        {
            Response.Redirect("~/customer/ViewMyBooking.aspx");
        }

        //Booking Id
        Label2.Text = Request.QueryString["bookid"];

        //Geting Data
        string selectQry = "select Hall_Name, Area, Date, Purpose, Amount, Trans_Id, Status from BOOKING_DETAILS where Booking_Id="+Label2.Text+" ";
        DataSet bookingDetails = BLogic.ReturnDataSet(selectQry);
        Label3.Text = bookingDetails.Tables[0].Rows[0][0].ToString();
        Label4.Text = bookingDetails.Tables[0].Rows[0][1].ToString();
        Label5.Text = bookingDetails.Tables[0].Rows[0][2].ToString();
        Label6.Text = bookingDetails.Tables[0].Rows[0][3].ToString();
        Label7.Text = bookingDetails.Tables[0].Rows[0][4].ToString();
        Label8.Text = bookingDetails.Tables[0].Rows[0][5].ToString();
        Label9.Text = bookingDetails.Tables[0].Rows[0][6].ToString();

        if (Label9.Text=="Canceled")
        {
            Button1.Visible = false;
            Label10.Text = "Booking is already Canceled!!!";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Canceling Booking
        string updateQry = "update BOOKING_DETAILS set Status='"+"Canceled"+"' where Booking_Id=" + Label2.Text + " ";
        BLogic.ExecuteQuery(updateQry);

        //Updating Status Field
        string fieldQry = "select Status from BOOKING_DETAILS where Booking_Id=" + Label2.Text + " ";
        DataSet updateDetails = BLogic.ReturnDataSet(fieldQry);
        Label9.Text = updateDetails.Tables[0].Rows[0][0].ToString();
        Label10.Text = "Booking Canceled!!!";
        Button1.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/customer/ViewMyBooking.aspx");
    }
}