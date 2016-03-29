using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // NEED THIS so that server doesnt repopulate the form with data already in the DB when the button is clicked
        {
            populateUserInfo();
        }
    }

    public void populateUserInfo()
    {
        // Session variable containing the Email address of the selected user clicked on from ManageAccounts page is passed in
        string userID = Session["userID"].ToString();
        System.Diagnostics.Debug.WriteLine(Session["userID"].ToString());
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select FirstName, LastName, EmailAddress from dbo.GeneralUser where EmailAddress='" + userID + "'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        DataTable dt = new DataTable(); // create data table for sql query
        adp.Fill(dt);
        string fullName = dt.Rows[0][0].ToString();
        //NEED TO BREAK THIS STRING INTO FIRST AND LAST NAME
        //txtfName.Text = dt.Rows[0][0].ToString();
        //txtlName.Text = dt.Rows[0][1].ToString();
        txtEmail.Text = dt.Rows[0][2].ToString();
        txtEmail.ReadOnly = true; // Set to un-editable since this will violate FK, Admin shouldnt be able to change this anyways?
        // add the rest of the fields here in the same methodology
    }
    protected void btnEditUser_Click(object sender, EventArgs e)
    {
        ViewState["fName"] = txtfName.Text;
        ViewState["lName"] = txtlName.Text;
        string email = txtEmail.Text;
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "update dbo.GeneralUser set FirstName='" + ViewState["fName"] + "', LastName='" + ViewState["lName"] + "' where EmailAddress='" + email + "'";
        System.Diagnostics.Debug.WriteLine(cmdText);
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        Response.Redirect("Admin.ManageAccounts.aspx", false);
    }
}