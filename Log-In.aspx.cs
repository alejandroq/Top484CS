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

public partial class Log_In : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    #region Authenticate Login
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string user = Login1.UserName;
        string password = Login1.Password;

        e.Authenticated = false;

        string QueryUserDetails = "Select PasswordHash, ActivatedBool, UserPermission from dbo.GeneralUser where EmailAddress = '" + user +"'"; // This query returns the password hash and the boolean for whether or not the profile is activated
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString); // connection string is in web config
        connection.Open();
        SqlCommand cmd = new SqlCommand(QueryUserDetails, connection); // execute select statement
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        DataTable dt = new DataTable(); // create data table for sql query
        adp.Fill(dt); // populate datatable with query results
        int no = dt.Rows.Count; // number of rows in data table
        string activated = dt.Rows[0][1].ToString();
        string permission = dt.Rows[0][2].ToString();

        if (no > 0) // if the query finds the user-entered Email (username)
        {
            // Get the PasswordHash from DB, verify the hash matches the user-entered password
            string pwHash = dt.Rows[0][0].ToString();
            bool verify = SimpleHash.VerifyHash(password, "MD5", pwHash);
            System.Diagnostics.Debug.WriteLine(verify);
            e.Authenticated = verify;
            Session["loggedIn"] = e.Authenticated.ToString();

            // Create permissions session variable
            Session["permission"] = permission.ToString();

            // If the log-in credentials are verified
            if (verify)
            {
                // Verify that the user has activated their profile
                if (activated == "True") // if the account's activated column is equal to true
                {
                    // Redirect user to their profile based on their permission
                    if (permission == "5")
                    {
                        Session["UserID"] = user;
                        Response.Redirect("Admin.Dashboard.aspx"); // if all details match up, user is redirected to their profile page. TODO: Code profile page, figure out if statements for directing user to their appropriate profile type
                        
                    }
                    if (permission == "4")
                    {
                        // redirect to staff/instructor/intern profile/// Community Wall
                        Session["UserID"] = user;
                        Response.Redirect("Wall.aspx");
                    }
                    if (permission == "3")
                    {
                        // redirect to student profile
                        Session["UserID"] = user;
                        Response.Redirect("Wall.aspx");
                    }
                    if (permission == "2")
                    {
                        // parent permission
                        Response.Redirect("Wall.aspx"); 
                        Session["UserID"] = user;
                    }
                    if (permission == "1")
                    {
                        // redirect to cipher profile
                        Session["UserID"] = user;
                        Response.Redirect("Wall.aspx");
                    }
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


    protected void lnkSignUp_Click(object sender, EventArgs e)
    {
        //Session["UserID"] = "";
        Response.Redirect("SignUpDescriptions.aspx");
    }
    
}