﻿using System;
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
        if (!IsPostBack)
        {
            populateUserInfo();
        }
    }

    public void populateUserInfo()
    {
        //change back
        // Session variable containing the Email address of the selected user clicked on from ManageAccounts page is passed in
        string userID = Session["userID"].ToString();
        //String userID = "testAdmin@WBL.org";

        //change back
        System.Diagnostics.Debug.WriteLine(Session["userID"].ToString());
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select FirstName, LastName, EmailAddress from dbo.GeneralUser where EmailAddress='" + userID + "'";
        System.Diagnostics.Debug.WriteLine(cmdText);
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
        string cmdText = "update dbo.GeneralUser set FirstName = @FirstName, LastName = @LastName where EmailAddress = @EmailAddress";
        System.Diagnostics.Debug.WriteLine(cmdText);
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.Parameters.AddWithValue("@FirstName", ViewState["fName"]);
        cmd.Parameters.AddWithValue("@LastName", ViewState["lName"]);
        cmd.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("Admin.ManageAccounts.aspx", false);
    }
}