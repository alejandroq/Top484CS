using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail; // for e-mail activation
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        parentAdditions.Style.Add("display", "none");
        parentBlock.Style.Add("display", "none");


    }




    #region Sign Up New User
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        // Creates password and sends activation email
        /* string pw1 = txtPassword.Text;
         string pw2 = txtPassword2.Text;
         if (pw1 == pw2)
         {
             string passwordHashNew = SimpleHash.ComputeHash(pw1, "MD5", null);
             SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
             connection.Open();
             // need to validate that a user's info doesnt already exist before that info gets put into sql insert statement
             string cmdText = "insert into dbo.testTable values ('" + txtfName.Text + "','" + txtlName.Text + "','" + txtEmail.Text + "','" + passwordHashNew + "',0)";
             SqlCommand cmd = new SqlCommand(cmdText, connection);
             System.Diagnostics.Debug.WriteLine(cmdText);
             int no = cmd.ExecuteNonQuery();
             if (no > 0) // if more than zero values executed and returned
             {
                 sendActivationEmail(); // send activation email after user info successfully inserted into DB
                 Response.Write("Profile Created!");
             }
             else
             {
                 Response.Write("Error: Profile Not Created");
             }
         }
         else
         {
             Response.Write("Error: Password mismatch");
         }
         */


        // General user database input statements

        string userType = Session["userType"].ToString();
        if (userType.Equals("parent"))
        {
            parentAdditions.Style.Add("display", "inline");
            parentBlock.Style.Add("display", "inline");
            allInfo.Style.Add("display", "none");



        }
        else if (userType.Equals("student"))
        {
            allInfo.Style.Add("display", "none");
         //   sEmergencyInfo.Style.Add("display", "inline");
         //   sAdditionalInformation.Style.Add("display", "inline");
         //   sHealthInfo.Style.Add("display", "inline");
        }
        else
        {
            // send cipher data to the database
        }
    }
    #endregion

    #region Send Activation Email to newly registered users
    // Method for sending activation email to newly created user
    public void sendActivationEmail()
    {
        // Setting up an e-mail message, establishing the credentials for the email address it is coming from and the email address it is going to
        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        string userActivation = "http://localhost:62112/UserActivation.aspx?email=" + txtEmail.Text; // TODO: change this to WBL admin email

        message.From = new MailAddress("top484.wordsbeatslifeproject@gmail.com"); // where activation email is being sent FROM
        message.To.Add(txtEmail.Text); // where activation email is sent to user-supplied email address.
        // TODO: ^^ validate this textbox is in E-mail format
        message.Subject = "Account Activation"; // Subject of activation email
        message.Body = "Hi " + txtfName.Text + ", Your account activation link is here: </br></br> <a href = '" + userActivation + "'> Activate your account!";
        message.IsBodyHtml = true; // message contained in html body
        client.EnableSsl = true; // secure connection
        client.UseDefaultCredentials = true; // have to set up credentials as true
        client.Credentials = new System.Net.NetworkCredential("top484.wordsbeatslifeproject@gmail.com", "wordsbeatslife"); // user and PW for some client, replace this with user-supplied email/pw
        client.Send(message);
    }
    #endregion

    protected void parentStudentConfirmation_Click(object sender, EventArgs e)
    {

    }

}