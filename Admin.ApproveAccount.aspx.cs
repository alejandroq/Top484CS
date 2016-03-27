using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ApproveAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        populateApplication();
    }

    public void populateApplication()
    {
        string applicantID = Session["applicantID"].ToString();

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select FirstName, LastName, EmailAddress from dbo.GeneralUser where EmailAddress='" + applicantID + "'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        DataTable dt = new DataTable(); // create data table for sql query
        adp.Fill(dt);
        txtfName.Text = dt.Rows[0][0].ToString();
        txtfName.ReadOnly = true;
        txtlName.Text = dt.Rows[0][1].ToString();
        txtlName.ReadOnly = true;
        txtEmail.Text = dt.Rows[0][2].ToString();
        txtEmail.ReadOnly = true;
   
    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        string applicantID = Session["applicantID"].ToString();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "update dbo.Applicant set Approved = 'True' where EmailAddress='" + applicantID + "'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        DateTime approvalDate = new DateTime();
        approvalDate = DateTime.Now;
        cmdText = "update dbo.Applicant set DateApproved = '" + approvalDate + "'";
        SqlCommand cmd2 = new SqlCommand(cmdText, connection);
        cmd2.ExecuteNonQuery();
        sendActivationEmail(Session["applicantID"].ToString());
        Response.Redirect("Admin.ManageAccounts.aspx");
    }

    #region Event Handler for "Deny" button
    protected void btnDeny_Click(object sender, EventArgs e)
    {
        string applicantID = Session["applicantID"].ToString();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "delete from dbo.Applicant where AppEmailAddress='" + applicantID + "'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
    }
    #endregion

    #region Method for sending activation email to newly approved users

    public void sendActivationEmail(string email)
    {
        // Setting up an e-mail message, establishing the credentials for the email address it is coming from and the email address it is going to
        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        string userActivation = "http://localhost:62112/UserActivation.aspx?email=" + email; // TODO: change this to WBL admin email

        message.From = new MailAddress("ryan.michael.leee@gmail.com"); // where activation email is being sent FROM
        message.To.Add(email); // where activation email is sent to user-supplied email address.
        // TODO: ^^ validate this textbox is in E-mail format
        message.Subject = "Account Activation"; // Subject of activation email
        message.Body = "Hello! </br></br>Your Words Beats and Life profile has now been approved. Your account activation link is here: </br></br> <a href = '" + userActivation + "'> Activate your account now to join the community!";
        message.IsBodyHtml = true; // message contained in html body
        client.EnableSsl = true; // secure connection
        client.UseDefaultCredentials = true; // have to set up credentials as true
        client.Credentials = new System.Net.NetworkCredential("ryan.michael.leee@gmail.com", "ryancatie2"); // user and PW for some client, replace this with user-supplied email/pw
        client.Send(message);
    }

    #endregion

}