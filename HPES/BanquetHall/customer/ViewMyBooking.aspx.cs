using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_ViewMyBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] == null)
        {
            Response.Redirect("~/Validator.aspx");
        }

        

        string SearchQry = "select Booking_Id, Hall_Name, Area, Date, Amount from BOOKING_DETAILS where Cust_Member_Id='" + Request.Cookies["Login"]["profileid"] + "'and Status='" + "Booked" + "' ";
        DataSet sds= BLogic.ReturnDataSet(SearchQry);
        if (sds.Tables[0].Rows.Count>0)
        {
            if (!IsPostBack)
            {
                string getBookingDetailsQry = "select Booking_Id, Hall_Name, Area, Date, Amount from BOOKING_DETAILS where Cust_Member_Id='" + Request.Cookies["Login"]["profileid"] + "'and Status='" + "Booked" + "' ";
                BLogic.FillGrid(getBookingDetailsQry, GridView1);
            }
        }

        else
        {
            Label2.Visible = true;
            GridView1.Visible = false;
            Label2.Text = "No Active Booking Order Found!!!";
        }

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string getBookingDetailsQry = "select Booking_Id, Hall_Name, Area, Date, Amount from BOOKING_DETAILS where Cust_Member_Id='" + Request.Cookies["Login"]["profileid"] + "' and Status='"+"Booked"+"' ";
        BLogic.FillGrid(getBookingDetailsQry, GridView1);
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("cancel"))
        {

            //int id = Convert.ToInt32(GridView1.SelectedRow.ToString());

           Response.Redirect("~/customer/CancelMyBooking.aspx?bookid="+e.CommandArgument);
        }
    }
}