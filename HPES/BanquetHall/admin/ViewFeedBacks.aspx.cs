using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ViewFeedBacks : System.Web.UI.Page
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

        string SearchQry = "select Complain_No from FEEDBACK";
        DataSet sds = BLogic.ReturnDataSet(SearchQry);
        if (sds.Tables[0].Rows.Count>0)
        {
            Label2.Visible = false;
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "No Feedback Found!!!";
        }

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chk_row = GridView1.Rows[i].Cells[0].FindControl("CheckBox1") as CheckBox;
            if (chk_row.Checked)
            {
                string qry = "delete from FEEDBACK where Complain_No=" + GridView1.Rows[i].Cells[1].Text + "";
                BLogic.ExecuteQuery(qry);
                Response.Redirect("~/admin/ViewFeedBacks.aspx");
            }
        }
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk_header = GridView1.HeaderRow.FindControl("CheckBox2") as CheckBox;
        if (chk_header.Checked)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chk_row = GridView1.Rows[i].Cells[0].FindControl("CheckBox1") as CheckBox;
                if (!chk_row.Checked)
                {
                    chk_row.Checked = true;
                }
            }
        }
        else
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chk_row = GridView1.Rows[i].Cells[0].FindControl("CheckBox1") as CheckBox;
                if (chk_row.Checked)
                {
                    chk_row.Checked = false;
                }
            }
        }
    }
}