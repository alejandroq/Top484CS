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
    protected void btnCreateProfile_Click(object sender, EventArgs e)
    {
        string pw1 = txtPassword.Text;
        string pw2 = txtPassword2.Text;
        if (pw1 == pw2)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            connection.Open();
            // need to validate that a user's info doesnt already exist before that info gets put into sql insert statement
            string cmdText = "insert into dbo.testTable values ('" + txtfName.Text + "','" + txtlName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "',0)";
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
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string QueryUserDetails = "Select password, activated from dbo.testTable where email = '" + txtUserName.Text + "'"; //substitute passwordHash for password to do hashing
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString); // connection string is in web config
        connection.Open();
        SqlCommand cmd = new SqlCommand(QueryUserDetails, connection);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        int no = dt.Rows.Count; // number of rows in data table
        
        
            if (no > 0) // if more than zero values executed and returned (rows)
            {
                if (dt.Rows[0][0].ToString() == txtPW.Text) // if password from data table matches password entered on form
                // will need to retrieve passwordHash using DataReader instead of DataAdapter, then use:
                // bool verify = simpleHash.VerifyHash(password, "MD5", passwordHash); --> see SimpleHash class from zip
                // e.Authenticated = verify;
                {
                    if (dt.Rows[0][1].ToString() == "True") // if the account's activated column is equal to true (or 1??)
                    {
                        Response.Redirect("profile.aspx"); // if all details match up, user is redirected to their profile page
                    }
                    else
                    {
                        Response.Write("Error: Account is not activated");
                    }
                }
                else
                {
                    Response.Write("Error: Account details invalid");
                }
            }
            else
            {
                Response.Write("Error: That e-mail does not exist");
            }
    }

    // Method for sending activation email to newly created user
    public void sendActivationEmail()
    {
        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        string userActivation = "http://localhost:62112/UserActivation.aspx?email=" + txtEmail.Text; // need to change this to WBL admin email

        message.From = new MailAddress("ryan.michael.leee@gmail.com"); // where activation email is being sent FROM
        message.To.Add(txtEmail.Text); // where activation email is sent to user-supplied email address
        message.Subject = "Account Activation"; // Subject of activation email
        message.Body = "Hi " + txtfName.Text + ", Your account activation link is here: </br></br> <a href = '" + userActivation + "'> Activate your account!";
        message.IsBodyHtml = true; // message contained in html body
        client.EnableSsl = true; // secure connection
        client.UseDefaultCredentials = true; // have to set up credentials as true
        client.Credentials = new System.Net.NetworkCredential("ryan.michael.leee@gmail.com", "ryancatie2"); // user and PW for some client, replace this with user-supplied email/pw
        client.Send(message);
    }
}









