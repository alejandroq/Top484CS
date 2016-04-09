using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Student_SearchClasses2 : System.Web.UI.Page
{
    //TODO: Change capacity to seats left
    //TODO: make it so that student can only sign up for a class after all their evaluations are complete
    // we need an enrollment table
    //TODO: get lesson plans and link them to lessonplan cell, see comment below
    //TODO: add in links for lesson plans
    //TODO: add "last log in" and Bucks counter somehow once we figure out how to do those
    //TODO: add session variable for student that is logged in
    //TODO: add class date to command arguments for shopping cart
    // Need to be able to hover over class descriptions and read before enrolling

    // Enrollment table
    // do we need capacity and seats left for every record? me thinks they should be in course and not enrollment
    // do we need teacher email in there? me thinks this 
    // 
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        GenerateTable();
    }

    private void GenerateTable()
    {
        DataTable dt = CreateDataTable();
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
            if (dt.Columns[j].ColumnName == "Location")
            {
                TableHeaderCell courseLoc = new TableHeaderCell();
                courseLoc.Text = "Location";
                row.Cells.Add(courseLoc);
            }
            if (dt.Columns[j].ColumnName == "Semester")
            {
                TableHeaderCell courseLocation = new TableHeaderCell();
                courseLocation.Text = "Semester";
                row.Cells.Add(courseLocation);
            }
            if (dt.Columns[j].ColumnName == "Capacity")
            {
                TableHeaderCell capacity = new TableHeaderCell();
                capacity.Text = "Seats Remaining";
                row.Cells.Add(capacity);
            }
            if (dt.Columns[j].ColumnName == "LessonPlan")
            {
                TableHeaderCell lessonPlan = new TableHeaderCell();
                lessonPlan.Text = "Class Description";
                row.Cells.Add(lessonPlan);
            }
        }

        // any non-DB column NAMES here
        TableHeaderCell enrollCheck = new TableHeaderCell();
        enrollCheck.Text = "Click to Enroll";
        row.Cells.Add(enrollCheck);

        //Add column title row to the table
        table.Rows.Add(row);

        //Add each row in the DataTable
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            row = new TableRow();
            // add the column for each row
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                System.Diagnostics.Debug.WriteLine(dt.Columns[j].ColumnName);
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
                if (dt.Columns[j].ColumnName == "Location")
                {
                    TableCell courseLoc = new TableCell();
                    courseLoc.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(courseLoc);
                }
                if (dt.Columns[j].ColumnName == "Semester")
                {
                    TableCell semester = new TableCell();
                    semester.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(semester);
                }
                if (dt.Columns[j].ColumnName == "Capacity")
                {
                    string sectionID = dt.Rows[i][1].ToString();
                    DataTable dtSeats = new DataTable();
                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
                    connection.Open();
                    string cmdText = "SELECT COUNT(EmailAddress) from dbo.Enrollment where SectionID = '" + sectionID + "'";
                    SqlCommand cmd = new SqlCommand(cmdText, connection);
                    cmd.ExecuteNonQuery();
                    SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
                    adp.Fill(dtSeats);
                    int seatsTaken = Convert.ToInt32(dtSeats.Rows[0][0].ToString());
                    int capacity = Convert.ToInt32(dt.Rows[i][j].ToString());
                    int seatsAvailable = (capacity - seatsTaken);
                    TableCell seatsLeft = new TableCell();
                    seatsLeft.Text = seatsAvailable.ToString();
                    if (seatsAvailable < 6)
                    {
                        seatsLeft.ForeColor = System.Drawing.Color.PaleVioletRed;
                        seatsLeft.Font.Bold = true;
                        
                    }
                    row.Cells.Add(seatsLeft);
                }
                if (dt.Columns[j].ColumnName == "LessonPlan")
                {
                    TableCell lessonCell = new TableCell();
                    LinkButton link = new LinkButton();
                    link.Text = dt.Rows[i][j].ToString();
                    link.Click += lesson_click; // assign event action, link_click method below
                    //TODO: get lesson plans link and tie this link click to lesson plans
                    lessonCell.Text = dt.Rows[i][j].ToString();
                    //lessonCell.Controls.Add(link);
                    row.Cells.Add(lessonCell);
                }
            }
            // Any non-DB column VALUES here
            TableCell enroll = new TableCell();
            LinkButton shoppingCart = new LinkButton();
            shoppingCart.Text = "Add to Shopping Cart";
            System.Diagnostics.Debug.WriteLine(dt.Rows[i][0].ToString());
            System.Diagnostics.Debug.WriteLine(dt.Rows[i][1].ToString());
            shoppingCart.CommandArgument = dt.Rows[i][0].ToString() + "," + dt.Rows[i][1].ToString() + "," + dt.Rows[i][2].ToString();
            System.Diagnostics.Debug.WriteLine(shoppingCart.CommandArgument);
            shoppingCart.Click += shoppingCart_Click;
            
            enroll.Controls.Add(shoppingCart);
            row.Cells.Add(enroll);

            table.Rows.Add(row);
            form1.Controls.Add(table);
        
        }
    
    }

    void shoppingCart_Click(object sender, EventArgs e)
    {
        string courseID;
        string sectionID;
        string courseName;
        string studentID = Session["UserID"].ToString();
        LinkButton btn = (LinkButton)(sender);
        string arg = btn.CommandArgument;
        string[] split = new string[3];
        split = arg.Split(',');
        courseID = split[0];
        sectionID = split[1];
        courseName = split[2];
        
        
        Session["courseCount"] = ((int?)Session["courseCount"] ?? 0) + 1;
        System.Diagnostics.Debug.WriteLine(Session["courseCount"].ToString());
        ViewState["enrollQuery"] += "insert into dbo.Enrollment values ('" + studentID + "','" + sectionID + "','" + courseID + "', 0);"; 
        // TODO: figure out how to insert into enrollment table
        System.Diagnostics.Debug.WriteLine(ViewState["enrollQuery"].ToString());
        lbShoppingCart.Items.Add(courseName);
        lbShoppingCart.Rows = lbShoppingCart.Items.Count;
    }


    private void lesson_click(object sender, EventArgs e)
    {
 	    throw new NotImplementedException();
    } 

    private DataTable CreateDataTable()
    {
        DataTable dt = new DataTable();

        if (!txtSearch.Text.Equals(""))
            //System.Diagnostics.Debug.WriteLine("TEST");
            dt = CreateSearchDataTable();
        else
        {
            if (ddlElementType.SelectedValue.ToString() == "All")
            {
                dt = CreateAllDataTable();
            }
            if (ddlElementType.SelectedValue.ToString() == "DJ")
            {
                dt = CreateDJDataTable();
            }
            if (ddlElementType.SelectedValue.ToString() == "MC")
            {
                dt = CreateMCDataTable();
                // Could potentially add last login, total bucks, or some other fields to query to make this more student specific
            }
            if (ddlElementType.SelectedValue.ToString() == "BBOY")
            {
                dt = CreateBBOYDataTable();
            }
            if (ddlElementType.SelectedValue.ToString() == "Art")
            {
                dt = CreateArtDataTable();
            }
            if (ddlElementType.SelectedValue.ToString() == "Knowledge of Self")
            {
                dt = CreateKnowledgeDataTable();
            }
        }

        return dt;
    }

    private DataTable CreateSearchDataTable()
    {
        String keyword = txtSearch.Text;
  
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "Select CourseID, CourseName, CourseElement, LessonPlan from Course WHERE Upper(CourseName) LIKE Upper(@keyword) OR Upper(CourseElement) LIKE (@keyword);";
        System.Diagnostics.Debug.WriteLine(cmdText);
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.Parameters.Add("@keyword", SqlDbType.VarChar).Value = "%" + keyword + "%";
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        txtSearch.Text = "";
        return dt;
    }

    private DataTable CreateKnowledgeDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Name")
        {
            sortBy = "ORDER BY CourseName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Element")
        {
            sortBy = "CourseElement";
            // TODO: figure out the query to tie an instructor to the class they teach
        }
        if (ddlSortBy.SelectedValue.ToString() == "Date (Soonest)")
        {
            sortBy = "ORDER BY CourseDate";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Location")
        {
            sortBy = "ORDER BY Location";
        }
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select Course.CourseID, Section.SectionID, CourseName, CourseElement, dbo.Section.Capacity, dbo.Section.Location, dbo.Section.Semester, CourseDescription, LessonPlan from dbo.Course INNER JOIN dbo.Section ON dbo.Course.CourseID=dbo.Section.CourseID where Course.CourseElement = 'Knowledge of Self' " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    
    }

    private DataTable CreateArtDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Name")
        {
            sortBy = "ORDER BY CourseName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Element")
        {
            sortBy = "CourseElement";
            // TODO: figure out the query to tie an instructor to the class they teach
        }
        if (ddlSortBy.SelectedValue.ToString() == "Date")
        {
            sortBy = "ORDER BY CourseDate";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Location")
        {
            sortBy = "ORDER BY Location";
        }
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select Course.CourseID, Section.SectionID, CourseName, CourseElement, dbo.Section.Capacity, dbo.Section.Location, dbo.Section.Semester, CourseDescription, LessonPlan from dbo.Course INNER JOIN dbo.Section ON dbo.Course.CourseID=dbo.Section.CourseID where Course.CourseElement = 'Art' " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    private DataTable CreateBBOYDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Name")
        {
            sortBy = "ORDER BY CourseName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Element")
        {
            sortBy = "CourseElement";
            // TODO: figure out the query to tie an instructor to the class they teach
        }
        if (ddlSortBy.SelectedValue.ToString() == "Date")
        {
            sortBy = "ORDER BY CourseDate";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Location")
        {
            sortBy = "ORDER BY Location";
        }
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select Course.CourseID, Section.SectionID, CourseName, CourseElement, dbo.Section.Capacity, dbo.Section.Location, dbo.Section.Semester, CourseDescription, LessonPlan from dbo.Course INNER JOIN dbo.Section ON dbo.Course.CourseID=dbo.Section.CourseID where Course.CourseElement = 'BBOY' " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    private DataTable CreateMCDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Name")
        {
            sortBy = "ORDER BY CourseName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Element")
        {
            sortBy = "ORDER BY CourseElement";
            // TODO: figure out the query to tie an instructor to the class they teach
        }
        if (ddlSortBy.SelectedValue.ToString() == "Date")
        {
            sortBy = "ORDER BY CourseDate";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Location")
        {
            sortBy = "ORDER BY Location";
        }
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select Course.CourseID, Section.SectionID, CourseName, CourseElement, dbo.Section.Capacity, dbo.Section.Location, dbo.Section.Semester, CourseDescription, LessonPlan from dbo.Course INNER JOIN dbo.Section ON dbo.Course.CourseID=dbo.Section.CourseID where Course.CourseElement = 'MC' " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    
    }

    private DataTable CreateDJDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Name")
        {
            sortBy = "ORDER BY CourseName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Element")
        {
            sortBy = "ORDER BY CourseElement";
            // TODO: figure out the query to tie an instructor to the class they teach
        }
        if (ddlSortBy.SelectedValue.ToString() == "Date")
        {
            sortBy = "ORDER BY CourseDate";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Location")
        {
            sortBy = "ORDER BY Location";
        }
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select Course.CourseID, Section.SectionID, CourseName, CourseElement, dbo.Section.Capacity, dbo.Section.Location, dbo.Section.Semester, CourseDescription, LessonPlan from dbo.Course INNER JOIN dbo.Section ON dbo.Course.CourseID=dbo.Section.CourseID where Course.CourseElement = 'DJ' " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    private DataTable CreateAllDataTable()
    {
        string sortBy = "";
        if (ddlSortBy.SelectedValue.ToString() == "Name")
        {
            sortBy = "ORDER BY CourseName";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Element")
        {
            sortBy = "ORDER BY CourseElement";
            // TODO: figure out the query to tie an instructor to the class they teach
        }
        if (ddlSortBy.SelectedValue.ToString() == "Date")
        {
            sortBy = "ORDER BY CourseDate";
        }
        if (ddlSortBy.SelectedValue.ToString() == "Location")
        {
            sortBy = "ORDER BY Location";
        }
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = "select Course.CourseID, Section.SectionID, CourseName, CourseElement, dbo.Section.Capacity, dbo.Section.Location, dbo.Section.Semester, CourseDescription, LessonPlan from dbo.Course INNER JOIN dbo.Section ON dbo.Course.CourseID=dbo.Section.CourseID " + sortBy;
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);
        return dt;
    }

    protected void btnAddUser_Click(object sender, EventArgs e)
    {

    }

    protected void btnEnroll_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        string cmdText = ViewState["enrollQuery"].ToString();
        System.Diagnostics.Debug.WriteLine(cmdText);
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        lbShoppingCart.Items.Clear();
        cmd.CommandText = "";
        ViewState["enrollQuery"] = "";
        MessageBox.Show("Enrolled!");
    }

    protected void btnViewCalendar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student.ClassSchedule.aspx");
        
    }

}