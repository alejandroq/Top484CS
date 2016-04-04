using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_ClassSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GenerateTable();
    }

    private void GenerateTable()
    {
        DataTable dt = CreateDataTable();
        ViewState["dt"] = (DataTable)dt;
        Table table = new Table();
        GridView grid = new GridView();
        TableRow row = null;
        table.CellSpacing = 20;
        table.CellPadding = 10;
        table.GridLines = GridLines.Vertical;

        // Add Row for column header
        row = new TableRow();
        for (int j = 0; j < dt.Columns.Count; j++)
        {
            // Assign desired Table Names to query table resultset
            if (dt.Columns[j].ColumnName == "CourseName")
            {
                TableHeaderCell className = new TableHeaderCell();
                className.Text = "Class Name";
                row.Cells.Add(className);
            }
            if (dt.Columns[j].ColumnName == "CourseElement")
            {
                TableHeaderCell courseElement = new TableHeaderCell();
                courseElement.Text = "Hip-Hop Element";
                row.Cells.Add(courseElement);
            }
            if (dt.Columns[j].ColumnName == "CourseDate")
            {
                TableHeaderCell courseDate = new TableHeaderCell();
                courseDate.Text = "Start Date";
                row.Cells.Add(courseDate);
            }
            if (dt.Columns[j].ColumnName == "CourseLocation")
            {
                TableHeaderCell courseLocation = new TableHeaderCell();
                courseLocation.Text = "Class Location";
                row.Cells.Add(courseLocation);
            }
            if (dt.Columns[j].ColumnName == "CourseTime")
            {
                TableHeaderCell courseLocation = new TableHeaderCell();
                courseLocation.Text = "Start Time";
                row.Cells.Add(courseLocation);
            }
        }
        // Add Title row with column headers to the table
        table.Rows.Add(row);

        //Add each row in the DataTable
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            row = new TableRow();
            // add the column for each row
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                //System.Diagnostics.Debug.WriteLine(dt.Columns[j].ColumnName);
                if (dt.Columns[j].ColumnName == "CourseName")
                {
                    TableCell nameCell = new TableCell();
                    nameCell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(nameCell);

                }
                if (dt.Columns[j].ColumnName == "CourseElement")
                {
                    TableCell elementCell = new TableCell();
                    elementCell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(elementCell);
                }
                if (dt.Columns[j].ColumnName == "CourseDate")
                {
                    TableCell startDate = new TableCell();
                    startDate.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(startDate);
                }
                if (dt.Columns[j].ColumnName == "CourseTime")
                {
                    TableCell courseTime = new TableCell();
                    courseTime.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(courseTime);
                }
                if (dt.Columns[j].ColumnName == "CourseLocation")
                {
                    TableCell courseLoc = new TableCell();
                    courseLoc.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(courseLoc);
                }

            }
            
            table.Rows.Add(row);
            form1.Controls.Add(table);

        }
    }

    private DataTable CreateDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Name")
        {
            sortBy = "ORDER BY CourseName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Date (Soonest)")
        {
            sortBy = "ORDER BY CourseDate";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Location")
        {
            sortBy = "ORDER BY CourseLocation";
        }
        //string studentID = Session["userID"].ToString();
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select Course.CourseID, CourseName, CourseDate, CourseLocation, CourseTime, EmailAddress from dbo.Course left join dbo.Attendance ON EmailAddress='testStud@WBL.org' WHERE Course.CourseID=Attendance.CourseID " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    // ondayrender for each day (e.cell) as calendar is being constructed
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        e.Cell.Attributes.Add("OnClick", e.SelectUrl);
        if (e.Day.IsToday)
        {
            // Outline today's date cell
            e.Cell.BorderColor = System.Drawing.Color.Black;
            e.Cell.BackColor = System.Drawing.Color.LightGoldenrodYellow;
            e.Cell.BorderStyle = BorderStyle.Solid;
            e.Cell.BorderWidth = 2;
        }

        if (ViewState["dt"] != null)
        {
            // get datatable from page load
            DataTable dt = (DataTable)ViewState["dt"];

            for (int i = 0; i < dt.Rows.Count; i++)
            {

                // If an EventDate from our datatable is equal to each day's date as its being rendered
                if (Convert.ToDateTime(dt.Rows[i][2]).ToString("dd-MM-yyyy") == e.Day.Date.ToString("dd-MM-yyyy"))
                {
                    // DateTime variable to recognize each day that has an event
                    DateTime thisDay = e.Day.Date;
                    // break line to place text under datecell number
                    Literal ltrl = new Literal();
                    ltrl.Text = "<BR />";
                    e.Cell.Controls.Add(ltrl);

                    // outline the datecell where an event is taking place
                    e.Cell.BorderColor = System.Drawing.Color.Aqua;
                    e.Cell.BackColor = System.Drawing.Color.LightGray;
                    e.Cell.BorderStyle = BorderStyle.Solid;
                    e.Cell.BorderWidth = 2;

                    // Label for going to a specific event to view or edit it
                    Label b = new Label();
                    b.Font.Size = 12;
                    b.Font.Bold = true;
                    b.ForeColor = System.Drawing.Color.MediumVioletRed;
                    b.Text = dt.Rows[i][1].ToString();
                    e.Cell.Controls.Add(b);

                    Literal ltrl2 = new Literal();
                    ltrl2.Text = "<BR/><a style='font-size:8' href='ViewEvent.aspx?EventDateTime=" + thisDay + "'>View Event</a>";    //?ID=" + wblEvent["ID"].ToString() + "'>View Address</a>";
                    // TODO: code the logic for editing the event from the page this links to
                    e.Cell.Controls.Add(ltrl2);
                }

            }
        }
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void btnHide_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
    }
}