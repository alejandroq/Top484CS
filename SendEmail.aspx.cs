using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string userID = Session["userID"].ToString();
            txtRecipient.Text = userID;
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        string recipientEmail = txtRecipient.Text;
        sendUserEmail(recipientEmail);
    }

    private void sendUserEmail(string recipientEmail)
    {
        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        message.From = new MailAddress("top484.wordsbeatslifeproject@gmail.com"); // where activation email is being sent FROM
        // TODO: ^^ change this line to send email from a user's individual email?
        message.To.Add(recipientEmail); // where activation email is sent to user-supplied email address.
        // TODO: ^^ validate this textbox is in E-mail format
        message.Subject = txtSubject.Text; // Subject of activation email
        message.Body = txtMessage.Text;
        message.IsBodyHtml = true; // message contained in html body
        client.EnableSsl = true; // secure connection
        client.UseDefaultCredentials = true; // have to set up credentials as true
        client.Credentials = new System.Net.NetworkCredential("top484.wordsbeatslifeproject@gmail.com", "wordsbeatslife"); // user and PW for some client, replace this with user-supplied email/pw
        client.Send(message);
        Response.Redirect("Admin.ManageAccounts.aspx");
    }
}