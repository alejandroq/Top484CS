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
        GenerateTable();

        if (ddlMemberType.SelectedValue.ToString() != "All")
        {
            lblSortBy.Visible = false;
            ddlSortBy.Visible = false;
        }
        else
        {
            lblSortBy.Visible = true;
            ddlSortBy.Visible = true;
        }
    }

    #region Generate DataTable based on DropDown selection
    private DataTable CreateDataTable()
    {
        DataTable dt = new DataTable();
        if (ddlMemberType.SelectedValue.ToString() == "All")
        {
            dt = CreateAllDataTable();
        }
        if (ddlMemberType.SelectedValue.ToString() == "Applicants")
        {
            dt = CreateApplicantDataTable();
        }
        if (ddlMemberType.SelectedValue.ToString() == "Students")
        {
            dt = CreateStudentDataTable();
            // Could potentially add last login, total bucks, or some other fields to query to make this more student specific
        }
        if (ddlMemberType.SelectedValue.ToString() == "Parents")
        {
            dt = CreateParentDataTable();
        }
        if (ddlMemberType.SelectedValue.ToString() == "Instructors / Interns")
        {
            dt = CreateStaffDataTable();
        }
        if (ddlMemberType.SelectedValue.ToString() == "Ciphers")
        {
            dt = CreateCipherDataTable();
        }
        if (ddlMemberType.SelectedValue.ToString() == "Administrators")
        {
            dt = CreateAdminDataTable();
        }

        return dt;
    }

    private DataTable CreateAdminDataTable()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        // need to validate that a user's info doesnt already exist before that info gets put into sql insert statement
        string cmdText = "select (FirstName + ' ' + LastName) as Name, UserType, CellPhone, EmailAddress from dbo.GeneralUser where UserType='Administrator'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    private DataTable CreateCipherDataTable()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select (FirstName + ' ' + LastName) as Name, UserType, CellPhone, EmailAddress from dbo.GeneralUser where UserType='Cipher'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    private DataTable CreateStaffDataTable()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select (FirstName + ' ' + LastName) as Name, UserType, CellPhone, EmailAddress from dbo.GeneralUser where UserType='Staff'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    private DataTable CreateParentDataTable()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select (FirstName + ' ' + LastName) as Name, UserType, CellPhone, EmailAddress from dbo.GeneralUser where UserType='Parent'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    private DataTable CreateStudentDataTable()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select (FirstName + ' ' + LastName) as Name, UserType, CellPhone, EmailAddress from dbo.GeneralUser where UserType='Student'";
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }
    #endregion

    #region Create data table for all users
    private DataTable CreateAllDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Last Name")
        {
            sortBy = "ORDER BY LastName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "First Name")
        {
            sortBy = "ORDER BY FirstName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Member Type")
        {
            sortBy = "ORDER BY UserType";
        }
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select (FirstName + ' ' + LastName) as Name, UserType, CellPhone, EmailAddress from dbo.GeneralUser " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }
    #endregion

    #region Create data table for applicant selection
    private DataTable CreateApplicantDataTable()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        // need to validate that a user's info doesnt already exist before that info gets put into sql insert statement
        string cmdText = "select (FirstName + ' ' + LastName) as Name, UserType, Approved, dbo.GeneralUser.EmailAddress from dbo.GeneralUser Inner JOIN dbo.Applicant ON dbo.GeneralUser.EmailAddress=dbo.Applicant.EmailAddress";
        // ^^convert to new table structure, we will need to edit this insert statement to show ALL general users
        // also edit sql statement to order by approved/not approved
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
        ViewState["excelDataTable"] = (DataTable)dt;
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
            if (dt.Columns[j].ColumnName == "UserType")
            {
                TableHeaderCell memberType = new TableHeaderCell();
                memberType.Text = "Member Type";
                row.Cells.Add(memberType);
            }
            if (dt.Columns[j].ColumnName == "CellPhone")
            {
                TableHeaderCell cellPhone = new TableHeaderCell();
                cellPhone.Text = "Cell Phone # ";
                row.Cells.Add(cellPhone);
            }

        }

        // Only add columns for Edit User / View Profile if user is not an applicant
        // Since these two columns don't come from DB
        if (ddlMemberType.SelectedValue.ToString() != "Applicants")
        {
            TableHeaderCell editHeaderCell = new TableHeaderCell();
            editHeaderCell.Text = "Click to Edit User";
            row.Cells.Add(editHeaderCell);

            TableHeaderCell profileHeaderCell = new TableHeaderCell();
            profileHeaderCell.Text = "Click to View Profile";
            row.Cells.Add(profileHeaderCell);

        }

        // Add the Column Title row to the table
        table.Rows.Add(row);

        //Add each row in the DataTable to the ASP table
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            row = new TableRow();
            // add the column for each row
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                //System.Diagnostics.Debug.WriteLine(dt.Columns[j].ColumnName);
                if (dt.Columns[j].ColumnName == "Name")
                {
                    TableCell textCell = new TableCell();
                    //System.Diagnostics.Debug.WriteLine(dt.Rows[i][j].ToString());
                    textCell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(textCell);
                }
                if (dt.Columns[j].ColumnName == "UserType")
                {
                    TableCell memberCell = new TableCell();
                    memberCell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(memberCell);
                }
                if (dt.Columns[j].ColumnName == "Approved")
                {
                    if (dt.Rows[i][j].ToString() == "False")
                    {
                        LinkButton link = new LinkButton();
                        link.Text = "Needs Approval";
                        link.Click += approval_Click;
                        link.CommandArgument = dt.Rows[i][j + 1].ToString(); // Assign the e-mail address of this row to the arguments passed when the linkbutton is clicked

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
                        string cmdText = "select EmailAddress, DateApproved from dbo.Applicant"; //need to figure out how to show all general users with matching applicant ID's where applicable
                        // How can we replaced "Approved on 'approvalDate'" with black space if theres no matching value in applicant table?
                        SqlCommand cmd = new SqlCommand(cmdText, connection);
                        cmd.ExecuteNonQuery();
                        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
                        adp.Fill(dt2);
                        string approvalDate = dt2.Rows[0][1].ToString(); // this needs to change so not all approved row values show up, only those who were actually approved
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
                if (dt.Columns[j].ColumnName == "CellPhone")
                {
                    TableCell cell = new TableCell();
                    // PUT A LINK BUTTON HERE
                    // For when we figure out how to send text messages, Admin can send a text to any user's cellphone
                    cell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(cell);
                }

            }

            if (ddlMemberType.SelectedValue.ToString() != "Applicants")
            {
                // Populate 1st non-DB column for linking cell to edit user page
                TableCell editCell = new TableCell();
                LinkButton editLink = new LinkButton();
                editLink.Text = "Edit User";
                editLink.CommandArgument = dt.Rows[i][3].ToString();
                System.Diagnostics.Debug.WriteLine(dt.Rows[i][3].ToString());
                editLink.Click += editLink_Click;
                editCell.Controls.Add(editLink);
                row.Cells.Add(editCell);

                // Populate 2nd non-DB column for linking cell to view profile page
                TableCell profileCell = new TableCell();
                LinkButton profileLink = new LinkButton();
                profileLink.Text = "View Profile";
                profileLink.CommandArgument = dt.Rows[i][3].ToString();
                profileLink.Click += profileLink_Click;
                profileCell.Controls.Add(profileLink);
                row.Cells.Add(profileCell);
            }
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
        Response.Redirect("SendEmail.aspx", false);
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

    #region Event Handler for "View Profile" button
    private void profileLink_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("edit user clicked");
        LinkButton btn = (LinkButton)(sender);
        string userID = btn.CommandArgument;
        Session["userID"] = userID;
        // redirect Admin to specific user's profile 
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

    #region Event Handler for "Add New Event" button
    protected void btnAddEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.AddEvent.aspx");
    }
    #endregion

    #region Event Handler for "View Calendar" button
    protected void btnViewCalendar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.ManageEvents.aspx");
    }
    #endregion

    #region Event Handler for "Export to Excel" button




    public void SendToExcel(DataTable dtdata)
    {
        string attach = "attachment;filename=WBLDataTable.xls";
        Response.ClearContent();
        Response.AddHeader("content-disposition", attach);
        Response.ContentType = "application/ms-excel";
        if (dtdata != null)
        {
            foreach (DataColumn dc in dtdata.Columns)
            {
                Response.Write(dc.ColumnName + "\t");
                //sep = ";";
            }
            Response.Write(System.Environment.NewLine);
            foreach (DataRow dr in dtdata.Rows)
            {
                for (int i = 0; i < dtdata.Columns.Count; i++)
                {
                    Response.Write(dr[i].ToString() + "\t");
                }
                Response.Write("\n");
            }
            Response.End();
        }
    }

    
    protected void btnExport_Click(object sender, EventArgs e)
    {
        SendToExcel((DataTable)ViewState["excelDataTable"]);
    }
    #endregion

    protected void btnAddUser_Click(object sender, EventArgs e)
    {

    }
}