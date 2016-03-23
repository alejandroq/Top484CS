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

    }

    #region Sign Up New User
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        string pw1 = txtPassword.Text;
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

        message.From = new MailAddress("ryan.michael.leee@gmail.com"); // where activation email is being sent FROM
        message.To.Add(txtEmail.Text); // where activation email is sent to user-supplied email address.
        // TODO: ^^ validate this textbox is in E-mail format
        message.Subject = "Account Activation"; // Subject of activation email
        message.Body = "Hi " + txtfName.Text + ", Your account activation link is here: </br></br> <a href = '" + userActivation + "'> Activate your account!";
        message.IsBodyHtml = true; // message contained in html body
        client.EnableSsl = true; // secure connection
        client.UseDefaultCredentials = true; // have to set up credentials as true
        client.Credentials = new System.Net.NetworkCredential("ryan.michael.leee@gmail.com", "ryancatie2"); // user and PW for some client, replace this with user-supplied email/pw
        client.Send(message);
    }
    #endregion

    #region Authenticate Login
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string user = Login1.UserName;
        string password = Login1.Password;

        e.Authenticated = false;

        string QueryUserDetails = "Select password, activated from dbo.testTable where email = '" + user +"'"; // This query returns the password hash and the boolean for whether or not the profile is activated
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString); // connection string is in web config
        connection.Open();
        SqlCommand cmd = new SqlCommand(QueryUserDetails, connection); // execute select statement
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        DataTable dt = new DataTable(); // create data table for sql query
        adp.Fill(dt); // populate datatable with query results
        int no = dt.Rows.Count; // number of rows in data table

        if (no > 0) // if the query finds the user-entered Email (username)
        {
            // Get the PasswordHash from DB, verify the hash matches the user-entered password
            string pwHash = dt.Rows[0][0].ToString();
            bool verify = SimpleHash.VerifyHash(password, "MD5", pwHash);
            e.Authenticated = verify;
            Session["loggedIn"] = e.Authenticated.ToString();
            if (verify)
            {
                // Verify that the user has activated their profile
                if (dt.Rows[0][1].ToString() == "True") // if the account's activated column is equal to true
                {
                    System.Diagnostics.Debug.WriteLine("Account activated, user logged in");
                    Response.Redirect("profile.aspx"); // if all details match up, user is redirected to their profile page. TODO: Code profile page, figure out if statements for directing user to their appropriate profile type
                }
                else
                {
                    Response.Write("Error: Account is not activated");
                }
            }
        }
        else
        {
            Response.Write("Error: That e-mail does not exist");
        }
    }
    #endregion
}









