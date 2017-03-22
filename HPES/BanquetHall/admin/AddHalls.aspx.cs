using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_BanquetHall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] != null)
        {
            if (Request.Cookies["Login"]["admin"] == "0")
            {
                Response.Redirect("~/customer/Customer.aspx");
            }
        }
        else
        {
            Response.Redirect("~/Validator.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string selectQry = "select Hall_Code from BANQUET_HALL_Master where Hall_Name='" + DropDownList1.SelectedItem.Text + "' and Address='" + TextBox4.Text + "'";
        DataSet ds = BLogic.ReturnDataSet(selectQry);
        if (ds.Tables[0].Rows.Count>0)
        {
            Label2.Text = "Hall already exist.";
        }
        else
        {

        

            string insertQry = "insert into BANQUET_HALL_Master values('" + DropDownList1.SelectedItem.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")";
            string res = BLogic.ExecuteQuery(insertQry).ToString();

            if (res == "1")
            {
                Label2.Text = "Hall Added!!!";
            }
            else
            {
                Label2.Text = "Hall Not Added!!!";
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Label2.Text = "";
    }


    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}