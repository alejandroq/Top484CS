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