using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_CheckHall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] == null)
        {
            Response.Redirect("~/Validator.aspx");
        }
        Label2.Text = "";
        Button2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Getting HallCode
        string hallQry = "select Hall_Code from BANQUET_HALL_Master where Hall_Name='" + DropDownList1.SelectedItem.Text + "' and Address= '" + DropDownList2.SelectedItem.Text + "' ";
        DataSet ds = BLogic.ReturnDataSet(hallQry);
        
        if (ds.Tables[0].Rows.Count>0)
        {
            //Storing HallCode
            string hallcode = ds.Tables[0].Rows[0][0].ToString();
            

            //Checking Hall Availablity
            string findHallQry = "select Booking_Id from BOOKING_DETAILS where Hall_Name='" + DropDownList1.SelectedItem.Text + "' and Area= '" + DropDownList2.SelectedItem.Text + "' and Date= '" + TextBox2.Text + "' and Hall_Code= '" + hallcode + "' ";
            DataSet hall = BLogic.ReturnDataSet(findHallQry);

            if (hall.Tables[0].Rows.Count > 0)
            {

                string StatusQry = "select Status from BOOKING_DETAILS where Booking_Id= '" + hall.Tables[0].Rows[0][0] + "' ";
                DataSet status = BLogic.ReturnDataSet(StatusQry);
                if (status.Tables[0].Rows[0][0].ToString()=="Canceled")
                {
                    Label2.Text = "Congratulations. Hall is Available.";
                    Button2.Visible = true;
                    ViewState["hallcode"] = hallcode;
                    ViewState["hallname"] = DropDownList1.SelectedItem.Text;
                    ViewState["hallarea"] = DropDownList2.SelectedItem.Text;
                    ViewState["halldate"] = TextBox2.Text;
                }

                else
                {
                       Label2.Text = " Not Available. Hall is already Booked.";
                    Button2.Visible = false;
                }
            }

            else
            {
                Label2.Text = "Congratulations. Hall is Available.";
                Button2.Visible = true;
                ViewState["hallcode"] = hallcode;
                ViewState["hallname"] = DropDownList1.SelectedItem.Text;
                ViewState["hallarea"] = DropDownList2.SelectedItem.Text;
                ViewState["halldate"] = TextBox2.Text;
            }

        }
        else
        {
            Label2.Text = "Sorry We don't have Hall at that Area.";
            Button2.Visible = false;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/customer/BookHall.aspx?hallcode="+ViewState["hallcode"].ToString()+"&hallname="+ ViewState["hallname"].ToString()+ "&hallarea=" + ViewState["hallarea"].ToString() + "&halldate=" + ViewState["halldate"].ToString());
    }
}