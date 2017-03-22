using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Validator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] != null)
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


        



    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex += 1;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex += 1;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex -= 1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex -= 1;
    }

    protected void TextBoxFullName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownListOccupation_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxOfficePhone_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxMobile_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxAccountNumber_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxAddress_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxCity_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownListState_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxPin_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxUserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxLogUser_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxLogPassword_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ViewState["pass"] = TextBoxPassword.Text;
        string insertQry = "insert into CLIENT_REGISTRATION_DETAILS values('" + TextBoxUserName.Text + "','" + TextBoxPassword.Text + "','" + TextBoxFullName.Text + "','" + TextBoxAddress.Text + "','" + TextBoxCity.Text + "','" + DropDownListState.SelectedItem.Text + "','" + LabelCountry.Text + "'," + TextBoxPin.Text + ",'" + TextBoxEmail.Text + "','" + TextBoxDOB.Text + "','" + DropDownListOccupation.SelectedItem.Text + "'," + TextBoxOfficePhone.Text + "," + TextBoxMobile.Text + "," + TextBoxAccountNumber.Text + ","+0+")";
       string res = BLogic.ExecuteQuery(insertQry).ToString();
        if (res == "1")
        {

            string authQry = "select Cust_Member_Id from CLIENT_REGISTRATION_DETAILS where Login_Name='" + TextBoxUserName.Text + "' and Password= '" + TextBoxPassword.Text + "'";
            DataSet ds = BLogic.ReturnDataSet(authQry);


            MultiView2.ActiveViewIndex += 1;
        }
        else
        {
            Label2.Text = "Registration Failed...";
        }

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string authQry = "select * from CLIENT_REGISTRATION_DETAILS where Login_Name='" + TextBoxLogUser.Text + "' and Password= '" + TextBoxLogPassword.Text + "'";
        DataSet ds = BLogic.ReturnDataSet(authQry);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HttpCookie ht = new HttpCookie("Login");
            ht.Values.Add("profileid", ds.Tables[0].Rows[0][0].ToString());
            ht.Values.Add("username", ds.Tables[0].Rows[0][1].ToString());
            ht.Values.Add("name", ds.Tables[0].Rows[0][3].ToString());
            ht.Values.Add("admin", ds.Tables[0].Rows[0][15].ToString());

            if (CheckBoxRem.Checked)
            {
                ht.Expires = DateTime.Now.AddDays(20);
            }

            Response.Cookies.Add(ht);
            
            if (ds.Tables[0].Rows[0][15].ToString()=="1")
            {
                Response.Redirect("admin/Admin.aspx");
            }
            else
            {
                Response.Redirect("customer/Customer.aspx");
            }
        }
        else
        {
           Label3.Text= "Invalid Username & Password";
        }
        
    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUploadImage.HasFile)
        {
            string proidQry = "select Cust_Member_Id from CLIENT_REGISTRATION_DETAILS where Login_Name='" + TextBoxUserName.Text + "' and Password='"+ViewState["pass"]+"' ";
            DataSet pid = BLogic.ReturnDataSet(proidQry);
            ViewState["profileid"] = pid.Tables[0].Rows[0][0].ToString();
            if (FileUploadImage.PostedFile.ContentType == "image/jpeg")
            {
                string path = Server.MapPath("~/customer/profileimage");
                string destination = path + "/" + pid.Tables[0].Rows[0][0].ToString() + ".jpg";
                FileUploadImage.PostedFile.SaveAs(destination);
                Label4.Text = "Picture Picture Uploaded Sucessfully!!!";
                
            }
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Label4.Text = "Registration Process Complete. Please Login to Access Your Account!";
    }
}