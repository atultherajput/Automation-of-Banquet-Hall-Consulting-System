using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_BookHall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] == null)
        {
            Response.Redirect("~/Validator.aspx");
        }

        if (Request.QueryString["hallcode"]==null)
        {
            Response.Redirect("~/customer/CheckHall.aspx");
        }

        LabelHallCode.Text = Request.QueryString["hallcode"];
        LabelHallName.Text = Request.QueryString["hallname"];
        LabelHallArea.Text = Request.QueryString["hallarea"];
        LabelDate.Text = Request.QueryString["halldate"];

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        //if (LabelHallCode.Text != null)
        //{
            ViewState["hallcode"] = LabelHallCode.Text;
        //}

        //else
        //{
        //    //Getting HallCode from Hall Master
        //    string hallQry = "select Hall_Code from BANQUET_HALL_Master where Hall_Name='" + DropDownList1.SelectedItem.Text + "' and Address= '" + DropDownList2.SelectedItem.Text + "' ";
        //    DataSet ds = BLogic.ReturnDataSet(hallQry);
        //    //Storing HallCode
        //    ViewState["hallcode"] = ds.Tables[0].Rows[0][0].ToString();
        //}

                //Checking Hall Availablity in Booking Details
                string findHallQry = "select Booking_Id from BOOKING_DETAILS where Date= '" + LabelDate.Text + "' and Hall_Code= " + ViewState["hallcode"].ToString() + " ";
                DataSet hall = BLogic.ReturnDataSet(findHallQry);

        if (hall.Tables[0].Rows.Count > 0)
        {

            string StatusQry = "select Status from BOOKING_DETAILS where Booking_Id= " + hall.Tables[0].Rows[0][0] + " ";
            DataSet status = BLogic.ReturnDataSet(StatusQry);
            if (status.Tables[0].Rows[0][0].ToString() == "Canceled")
            {
                Label2.Text = "Congratulations. Hall is Available.";


                //Genrate Cookies
                HttpCookie ht = new HttpCookie("Booking");
                ht.Values.Add("hallcode", ViewState["hallcode"].ToString());
                ht.Values.Add("hallname", LabelHallName.Text);
                ht.Values.Add("area", LabelHallArea.Text);
                ht.Values.Add("time", TextBox2.Text);
                ht.Values.Add("date", LabelDate.Text);
                ht.Values.Add("totalperson", TextBox4.Text);
                ht.Values.Add("purpose", DropDownList3.SelectedItem.Text);
                ht.Values.Add("profileid", Request.Cookies["Login"]["profileid"]);
                ht.Values.Add("audio", CheckBox1.Checked.ToString());
                ht.Values.Add("dj", CheckBox2.Checked.ToString());
                ht.Values.Add("light", CheckBox3.Checked.ToString());
                ht.Values.Add("video", CheckBox4.Checked.ToString());
                Response.Cookies.Add(ht);

                //Verifying Cookies Genration
                if (Request.Cookies["Booking"] != null)
                {
                    //Adding Booking Details to DataBase
                    string insertQry = "insert into BOOKING_DETAILS values(" + Request.Cookies["Booking"]["hallcode"] + ",'" + Request.Cookies["Booking"]["hallname"] + "','" + Request.Cookies["Booking"]["area"] + "','" + Request.Cookies["Booking"]["time"] + "','" + Request.Cookies["Booking"]["date"] + "'," + Request.Cookies["Booking"]["totalperson"] + ",'" + Request.Cookies["Booking"]["purpose"] + "'," + Request.Cookies["Booking"]["profileid"] + ",'" + Request.Cookies["Booking"]["audio"] + "','" + Request.Cookies["Booking"]["dj"] + "','" + Request.Cookies["Booking"]["light"] + "','" + Request.Cookies["Booking"]["video"] + "'," + 0 + "," + 0 + ",'" + DateTime.Now.ToString() + "','"+"Booked"+"')";
                    BLogic.ExecuteQuery(insertQry);

                    //Getting Booking Id
                    string bookQry1 = "select Booking_Id from BOOKING_DETAILS where Hall_Code= " + Request.Cookies["Booking"]["hallcode"] + " and Date='" + Request.Cookies["Booking"]["date"] + "'and Time='" + Request.Cookies["Booking"]["time"] + "' ";
                    DataSet bookDs1 = BLogic.ReturnDataSet(bookQry1);

                    //Redirecting
                    Response.Redirect("~/customer/Payment.aspx?bookid=" + bookDs1.Tables[0].Rows[0][0].ToString());
                }
            }

            else
            {
                Label2.Text = " Not Available. Hall is already Booked.";
            }


        }
        else
        {
            Label2.Text = "Congratulations. Hall is Available.";

            //Genrate Cookies
            HttpCookie ht = new HttpCookie("Booking");
            ht.Values.Add("hallcode", ViewState["hallcode"].ToString());
            ht.Values.Add("hallname", LabelHallName.Text);
            ht.Values.Add("area", LabelHallArea.Text);
            ht.Values.Add("time", TextBox2.Text);
            ht.Values.Add("date", LabelDate.Text);
            ht.Values.Add("totalperson", TextBox4.Text);
            ht.Values.Add("purpose", DropDownList3.SelectedItem.Text);
            ht.Values.Add("profileid", Request.Cookies["Login"]["profileid"]);
            ht.Values.Add("audio", CheckBox1.Checked.ToString());
            ht.Values.Add("dj", CheckBox2.Checked.ToString());
            ht.Values.Add("light", CheckBox3.Checked.ToString());
            ht.Values.Add("video", CheckBox4.Checked.ToString());
            Response.Cookies.Add(ht);

            //Verifying Cookies Genration
            if (Request.Cookies["Booking"] != null)
            {
                //Adding Booking Details to DataBase
                string insertQry = "insert into BOOKING_DETAILS values(" + Request.Cookies["Booking"]["hallcode"] + ",'" + Request.Cookies["Booking"]["hallname"] + "','" + Request.Cookies["Booking"]["area"] + "','" + Request.Cookies["Booking"]["time"] + "','" + Request.Cookies["Booking"]["date"] + "'," + Request.Cookies["Booking"]["totalperson"] + ",'" + Request.Cookies["Booking"]["purpose"] + "'," + Request.Cookies["Booking"]["profileid"] + ",'" + Request.Cookies["Booking"]["audio"] + "','" + Request.Cookies["Booking"]["dj"] + "','" + Request.Cookies["Booking"]["light"] + "','" + Request.Cookies["Booking"]["video"] + "'," + 0 + "," + 0 + ",'" + DateTime.Now.ToString() + "','" + "Booked" + "')";
                BLogic.ExecuteQuery(insertQry);

                //Getting Booking Id
                string bookQry2 = "select Booking_Id from BOOKING_DETAILS where Hall_Code= " + Request.Cookies["Booking"]["hallcode"] + " and Date='" + Request.Cookies["Booking"]["date"] + "'and Time='" + Request.Cookies["Booking"]["time"] + "' ";
                DataSet bookDs2 = BLogic.ReturnDataSet(bookQry2);

                //Redirecting
                Response.Redirect("~/customer/Payment.aspx?bookid=" + bookDs2.Tables[0].Rows[0][0].ToString());
            }
           }
        }




    

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox4.Text = "";
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/customer/CheckHall.aspx");
    }
}