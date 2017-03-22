using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_Payment : System.Web.UI.Page
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

        if (Request.QueryString["bookid"] == null)
        {
            Response.Redirect("~/customer/BookHall.aspx");
        }

        int amount = 10000;

        if (Request.Cookies["Booking"]["audio"].Equals("True"))
        {
            amount = amount + 1000;
        }

        if (Request.Cookies["Booking"]["dj"].Equals("True"))
        {
            amount = amount + 1500;
        }

        if (Request.Cookies["Booking"]["light"].Equals("True"))
        {
            amount = amount + 500;
        }

        if (Request.Cookies["Booking"]["video"].Equals("True"))
        {
            amount = amount + 2000;
        }

        Label6.Text = Request.Cookies["Booking"]["hallname"] + " " + Request.Cookies["Booking"]["area"];
        Label3.Text = DateTime.Now.Date.ToString();
        Label2.Text = Request.Cookies["Booking"]["profileid"];
        Label7.Text = amount.ToString();
        Label8.Text = Request.QueryString["bookid"];


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        //insert payment details
        string insertQry = "insert into PAYMENT values(" + TextBox2.Text + ",'" + DropDownList1.SelectedItem.Text + "'," + TextBox1.Text + ",'" + Label3.Text + "'," + Label2.Text + "," + Label7.Text + "," + Label8.Text + ")";
        string res = BLogic.ExecuteQuery(insertQry).ToString();


        //Getting Transaction Id
        string transQry = "select Trans_Id from PAYMENT where Booking_Id= " + Label8.Text + " ";
        DataSet transDs = BLogic.ReturnDataSet(transQry);

        //update booking database
        string updateQry = "update BOOKING_DETAILS set Amount='" + Label7.Text + "', Trans_Id='" + transDs.Tables[0].Rows[0][0].ToString() + "' where Booking_Id='" + Label8.Text + "'";
        BLogic.ExecuteQuery(updateQry);

        //Creating Cookie for Transaction Id
        HttpCookie ht = new HttpCookie("Payment");
        ht.Values.Add("transid", transDs.Tables[0].Rows[0][0].ToString());
        ht.Values.Add("bookid", Label8.Text);
        Response.Cookies.Add(ht);

        //Redirect
        Response.Redirect("~/customer/PaymentHold.aspx?authcode="+1);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}