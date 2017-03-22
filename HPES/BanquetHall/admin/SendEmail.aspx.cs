using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Data;

public partial class admin_SendEmail : System.Web.UI.Page
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


        if (Request.QueryString["bookid"]!=null)
        {
            string searchCustId = "select Cust_Member_Id from BOOKING_DETAILS where Booking_Id=" + Request.QueryString["bookid"] + "";
            DataSet cid = BLogic.ReturnDataSet(searchCustId);
            string searchEmail = "select Email from CLIENT_REGISTRATION_DETAILS where Cust_Member_Id=" + cid.Tables[0].Rows[0][0].ToString() + "";
            DataSet email = BLogic.ReturnDataSet(searchEmail);
            TextBoxTo.Text = email.Tables[0].Rows[0][0].ToString();
            TextBoxSubject.Text = "Confirmation mail from DE LUXE BANQUET HALL for Booking ID " + Request.QueryString["bookid"];
            TextBoxBody.Text = "Your Booking is Sucessful against your payment. ";
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MailMessage mm = new MailMessage("atul.krishan1994@gmail.com", TextBoxTo.Text))
        {
            mm.Subject = TextBoxSubject.Text;
            mm.Body = TextBoxBody.Text;
            if (FileUploadAttachment.HasFile)
            {
                string FileName = Path.GetFileName(FileUploadAttachment.PostedFile.FileName);
                mm.Attachments.Add(new Attachment(FileUploadAttachment.PostedFile.InputStream, FileName));
            }
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("atul.krishan1994@gmail.com", "qdrkrfhxjugijgno");//email and app password (if 2 secure login is enable)
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxTo.Text ="";
        TextBoxSubject.Text ="";
        TextBoxBody.Text = "";
    }
}