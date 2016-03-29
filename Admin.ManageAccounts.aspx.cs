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

public partial class Admin_ManageAccounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       GenerateTable(); // no isPostBack here since table needs to regenerate to pass session variables 
    }


    #region Generate SQL Server Database Table
    private DataTable CreateDataTable()
    {

        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        // need to validate that a user's info doesnt already exist before that info gets put into sql insert statement
        string cmdText = "select (FirstName + ' ' + LastName) as Name, Approved, dbo.GeneralUser.EmailAddress from dbo.GeneralUser FULL JOIN dbo.Applicant ON dbo.GeneralUser.EmailAddress=dbo.Applicant.EmailAddress";
        // ^^convert to new table structure, we will need to edit this insert statement to show ALL general users
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);

        return dt;
    }
    #endregion

    #region Generate ASP Table dynamically from Database Table
    private void GenerateTable()
    {
        DataTable dt = CreateDataTable();
        Table table = new Table();
        GridView grid = new GridView();
        TableRow row = null;
        table.CellSpacing = 20;
        table.CellPadding = 10;
        table.GridLines = GridLines.Vertical;
        
        
        //Add the Headers
        row = new TableRow();
        for (int j = 0; j < dt.Columns.Count; j++)
        {
            if (dt.Columns[j].ColumnName == "Approved")
            {
                TableHeaderCell approvalStatus = new TableHeaderCell();
                approvalStatus.Text = "Approval Status";
                row.Cells.Add(approvalStatus);
            }
            if (dt.Columns[j].ColumnName == "EmailAddress")
            {
                TableHeaderCell clickToEmail = new TableHeaderCell();
                clickToEmail.Text = "Click to send e-mail";
                row.Cells.Add(clickToEmail);
            }
            if (dt.Columns[j].ColumnName == "Name")
            {
                TableHeaderCell headerCell = new TableHeaderCell();
                headerCell.Text = dt.Columns[j].ColumnName;
                row.Cells.Add(headerCell);
            }
        }
        // This last table header is added after the loop since it does not come from database
        TableHeaderCell editHeaderCell = new TableHeaderCell();
        editHeaderCell.Text = "Click to edit specific user";
        row.Cells.Add(editHeaderCell);
        table.Rows.Add(row);

        //Add each row in the DataTable
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            row = new TableRow();
            // add the column for each row
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                System.Diagnostics.Debug.WriteLine(dt.Columns[j].ColumnName);
                if (dt.Columns[j].ColumnName == "Name")
                {
                    TableCell textCell = new TableCell();
                    System.Diagnostics.Debug.WriteLine(dt.Rows[i][j].ToString());
                    textCell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(textCell);

                }
                if (dt.Columns[j].ColumnName == "Approved")
                {
                    if (dt.Rows[i][j].ToString() == "False")
                    {
                        LinkButton link = new LinkButton();
                        link.Text = "Needs Approval";
                        link.Click += approval_Click; // assign event action, approval_click method below
                        link.CommandArgument = dt.Rows[i][j+1].ToString(); // Assign the e-mail address of this row to the arguments passed when the linkbutton is clicked
                        
                        TableCell applicant = new TableCell();
                        applicant.Text = dt.Rows[i][j].ToString();
                        applicant.Controls.Add(link);
                        
                        row.Cells.Add(applicant);
                    }
                    else
                    {
                        DataTable dt2 = new DataTable();
                        // Second data table to indicate date and time approved once Admin clicks through approval
                        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
                        connection.Open();
                        string cmdText = "select EmailAddress, DateApproved from dbo.Applicant";
                        SqlCommand cmd = new SqlCommand(cmdText, connection);
                        cmd.ExecuteNonQuery();
                        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
                        adp.Fill(dt2);
                        string approvalDate = dt2.Rows[0][1].ToString(); // grab the date approved from the query
                        TableCell approved = new TableCell();
                        approved.Text = "Approved on " + approvalDate; 
                        row.Cells.Add(approved);
                    }
                }
                if (dt.Columns[j].ColumnName == "EmailAddress")
                {
                    TableCell cell = new TableCell();
                    LinkButton link = new LinkButton();
                    link.Text = dt.Rows[i][j].ToString();
                    link.Click += email_Click; // assign event action, link_click method below
                    link.CommandArgument = dt.Rows[i][j].ToString(); // Assign the e-mail address of this row to the arguments passed when the linkbutton is clicked
                    cell.Controls.Add(link);
                    row.Cells.Add(cell);
                }
                
            }
            TableCell editCell = new TableCell();
            LinkButton editLink = new LinkButton();
            editLink.Text = "Edit User";
            editLink.CommandArgument = dt.Rows[i][2].ToString();
            //System.Diagnostics.Debug.WriteLine(dt.Rows[i][1].ToString());
            editLink.Click += editLink_Click;
            editCell.Controls.Add(editLink);
            row.Cells.Add(editCell);
             

            // Add the TableRow to the Table
            table.Rows.Add(row);
        }
        // Add the the Table in the Form
        form1.Controls.Add(table);
    }
    #endregion

    #region Event Handler for sending Email to specific user
    private void email_Click(object sender, EventArgs e)
    {

        System.Diagnostics.Debug.WriteLine("send email clicked");
        LinkButton btn = (LinkButton)(sender);
        string userID = btn.CommandArgument;
        Session["userID"] = userID;
        System.Diagnostics.Debug.WriteLine(Session["userID"].ToString());
        Response.Redirect("SendUserEmail.aspx", false);
    }
    #endregion

    #region Event Handler for "Edit User" button
    protected void editLink_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("edit user clicked");
        LinkButton btn = (LinkButton)(sender);
        string userID = btn.CommandArgument;
        Session["userID"] = userID;
        Response.Redirect("Admin.EditUser.aspx", false);
    }
    #endregion

    #region Event Handler for "Needs Approval" button
    protected void approval_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("clicked");
        LinkButton btn = (LinkButton)(sender);
        string applicantID = btn.CommandArgument;
        System.Diagnostics.Debug.WriteLine(applicantID);
        Session["applicantID"] = applicantID;
        Response.Redirect("Admin.ApproveAccount.aspx", false);
    }
    #endregion

    #region Event Handler for "Add User" button
    protected void btnAddUser_Click(object sender, EventArgs e)
    {

    }
    #endregion

    #region Event Handler for "Add New Event" button
    protected void btnAddEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.AddEvent.aspx");
    }
    #endregion

    #region Event Handler for "View Calendar" button
    protected void btnViewCalendar_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCalendar.aspx");
    }
    #endregion
}