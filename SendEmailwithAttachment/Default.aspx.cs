using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SbtBtn_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("your_email@gmail.com", "Sanduni Malsha");
        mail.Subject = "Hello test email with attachment";
        mail.Body = "<p>Hello,<br/> This is a test email for checking uploaded attachment in mail.</p>";
        mail.IsBodyHtml = true;

        mail.To.Add(new MailAddress(txttoEmail.Text));

        if (FileUpload1.HasFile)
        {
            mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
        }

        SmtpClient smtp = new SmtpClient();
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.UseDefaultCredentials = false;
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new NetworkCredential("your_email@gmail.com", "your_app_password");
        smtp.Send(mail);
        lblMsg.Text = "Email Sent Successfully" ;
        lblMsg.ForeColor = System.Drawing.Color.Green;
    }
}