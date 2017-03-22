using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Admin : System.Web.UI.Page
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

        if (Request.Cookies["Login"]["profileid"] != null)
        {



            String profileQry = "select * from CLIENT_REGISTRATION_DETAILS where Cust_Member_Id=" + Request.Cookies["Login"]["profileid"] + "";
            DataSet pds = BLogic.ReturnDataSet(profileQry);
            Label1.Text = pds.Tables[0].Rows[0][0].ToString();
            Label2.Text = pds.Tables[0].Rows[0][1].ToString();
            Label3.Text = pds.Tables[0].Rows[0][2].ToString();
            Label4.Text = pds.Tables[0].Rows[0][3].ToString();
            Label5.Text = pds.Tables[0].Rows[0][4].ToString();
            Label6.Text = pds.Tables[0].Rows[0][5].ToString();
            Label7.Text = pds.Tables[0].Rows[0][6].ToString();
            Label8.Text = pds.Tables[0].Rows[0][7].ToString();
            Label9.Text = pds.Tables[0].Rows[0][8].ToString();
            Label10.Text = pds.Tables[0].Rows[0][9].ToString();
            Label11.Text = pds.Tables[0].Rows[0][10].ToString();
            Label12.Text = pds.Tables[0].Rows[0][11].ToString();
            Label13.Text = pds.Tables[0].Rows[0][12].ToString();
            Label14.Text = pds.Tables[0].Rows[0][13].ToString();
            Label15.Text = pds.Tables[0].Rows[0][14].ToString();


            Image2.ImageUrl = "~/customer/profileimage/" + Request.Cookies["Login"]["profileid"] + ".jpg";

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        Label12.Visible = false;
        Label13.Visible = false;
        Label14.Visible = false;
        Label15.Visible = false;

        //Visble Edit Box
        FileUploadImage.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;

        LabelCustId.Visible = true;
        LabelUserName.Visible = true;
        TextBoxPassword.Visible = true;
        TextBoxFullName.Visible = true;
        TextBoxAddress.Visible = true;
        TextBoxCity.Visible = true;
        DropDownListState.Visible = true;
        LabelCountry.Visible = true;
        TextBoxPin.Visible = true;
        TextBoxEmail.Visible = true;
        TextBoxDOB.Visible = true;
        DropDownListOccupation.Visible = true;
        TextBoxOfficePhone.Visible = true;
        TextBoxMobile.Visible = true;
        TextBoxAccountNumber.Visible = true;

        //Assinging Default Values

        String profileeditQry = "select * from CLIENT_REGISTRATION_DETAILS where Cust_Member_Id='" + Request.Cookies["Login"]["profileid"] + "'";
        DataSet peds = BLogic.ReturnDataSet(profileeditQry);
        LabelCustId.Text = peds.Tables[0].Rows[0][0].ToString();
        LabelUserName.Text = peds.Tables[0].Rows[0][1].ToString();
        TextBoxPassword.Text = peds.Tables[0].Rows[0][2].ToString();
        TextBoxFullName.Text = peds.Tables[0].Rows[0][3].ToString();
        TextBoxAddress.Text = peds.Tables[0].Rows[0][4].ToString();
        TextBoxCity.Text = peds.Tables[0].Rows[0][5].ToString();
        //Label7.Text = peds.Tables[0].Rows[0][6].ToString();
        LabelCountry.Text = peds.Tables[0].Rows[0][7].ToString();
        TextBoxPin.Text = peds.Tables[0].Rows[0][8].ToString();
        TextBoxEmail.Text = peds.Tables[0].Rows[0][9].ToString();
        TextBoxDOB.Text = peds.Tables[0].Rows[0][10].ToString();
        //Label12.Text = peds.Tables[0].Rows[0][11].ToString();
        TextBoxOfficePhone.Text = peds.Tables[0].Rows[0][12].ToString();
        TextBoxMobile.Text = peds.Tables[0].Rows[0][13].ToString();
        TextBoxAccountNumber.Text = peds.Tables[0].Rows[0][14].ToString();

        Button1.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string updateQry = "update CLIENT_REGISTRATION_DETAILS set Password='" + TextBoxPassword.Text + "', Cus_Name='" + TextBoxFullName.Text + "', Address='" + TextBoxAddress.Text + "', City='" + TextBoxCity.Text + "', State='" + DropDownListState.Text + "', Pin=" + TextBoxPin.Text + ", Email='" + TextBoxEmail.Text + "', Dob='" + TextBoxDOB.Text + "', Occupation='" + DropDownListOccupation.Text + "', Phone_Office=" + TextBoxOfficePhone.Text + ", Mobile_No=" + TextBoxMobile.Text + ", Account_No=" + TextBoxAccountNumber.Text + " where Cust_Member_Id=" + Request.Cookies["Login"]["profileid"] + " ";
        int res = BLogic.ExecuteQuery(updateQry);
        if (res > 0)
        {
            Label16.Text = "Profile Update Sucessful!";
        }
        else
        {
            Label16.Text = "Profile is not updated.";
        }


        if (FileUploadImage.HasFile)
        {

            if (FileUploadImage.PostedFile.ContentType == "image/jpeg")
            {
                string path = Server.MapPath("~/customer/profileimage");
                string destination = path + "/" + Request.Cookies["Login"]["profileid"] + ".jpg";
                FileUploadImage.PostedFile.SaveAs(destination);
            }
        }

        Response.Redirect("~/admin/Admin.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Admin.aspx");
    }

    protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxFullName_TextChanged(object sender, EventArgs e)
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
}