using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Windows.Forms;


public partial class Instructor_TakeAttendance : System.Web.UI.Page
{
    DataTable dt = null;
    System.Web.UI.WebControls.CheckBox ckBox = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        GenerateTable();
    }

    #region Generate DataTable based on DropDown selection
    private DataTable CreateDataTable()
    {
        dt = new DataTable();
        String courseName = null;

        courseName = ddlClasses.SelectedValue.ToString();

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        // need to validate that a user's info doesnt already exist before that info gets put into sql insert statement
        string cmdText = "Select Attendance.EmailAddress, CourseName from Attendance, Course, Student where Course.CourseID=Attendance.CourseID and Attendance.EmailAddress=Student.EmailAddress and CourseName = '" + courseName + "';";
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

        TableHeaderCell status = new TableHeaderCell();
        status.Text = "Attended?";
        row.Cells.Add(status);

        for (int j = 0; j < dt.Columns.Count; j++)
        {

            if (dt.Columns[j].ColumnName == "EmailAddress")
            {
                TableHeaderCell approvalStatus = new TableHeaderCell();
                approvalStatus.Text = "Email Address";
                row.Cells.Add(approvalStatus);
            }
            if (dt.Columns[j].ColumnName == "CourseName")
            {
                TableHeaderCell clickToEmail = new TableHeaderCell();
                clickToEmail.Text = "Course Name";
                row.Cells.Add(clickToEmail);
            }
        }

        // Add the Column Title row to the table
        table.Rows.Add(row);

        //Add each row in the DataTable
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            row = new TableRow();

            // Populate 1st non-DB column for linking cell to edit user page
            TableCell checkCell = new TableCell();
            ckBox = new System.Web.UI.WebControls.CheckBox();
            checkCell.Controls.Add(ckBox);
            row.Cells.Add(checkCell);

            // add the column for each row
            for (int j = 0; j < dt.Columns.Count; j++)
            {

                System.Diagnostics.Debug.WriteLine(dt.Columns[j].ColumnName);
                if (dt.Columns[j].ColumnName == "EmailAddress")
                {
                    TableCell textCell = new TableCell();
                    //System.Diagnostics.Debug.WriteLine(dt.Rows[i][j].ToString());
                    textCell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(textCell);

                }
                if (dt.Columns[j].ColumnName == "CourseName")
                {
                    TableCell textCell2 = new TableCell();
                    textCell2.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(textCell2);
                }
            }

            // Add the TableRow to the Table
            table.Rows.Add(row);
        }
        // Add the the Table in the Form
        form1.Controls.Add(table);
    }

    #endregion


    protected void ListDropDown_Change(object sender, EventArgs e)
    {
        
        //try
        //{

        //    String courseName = ddlClasses.SelectedValue.ToString();

        //    //Creates a new sql connection and links the application to the DB
        //    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            
        //    //Opens the sql connection
        //    connection.Open();

        //    //Creates a new sql command
        //    SqlCommand query = new SqlCommand();
        //    query.Connection = connection;
        //    query.CommandText = "Select Attendance.EmailAddress, CourseName from Attendance, Course, Student where Course.CourseID=Attendance.CourseID and Attendance.EmailAddress=Student.EmailAddress and CourseName = '" + courseName + "';";
        //    SqlDataReader reader = query.ExecuteReader();

        //    //show output
        //    AttendanceGridView.DataSource = reader;
        //    AttendanceGridView.DataBind();

        //    reader.Close();
        //    connection.Close();


            //foreach (GridViewRow row in AttendanceGridView.Rows)
            //{
            //    if (row.RowType == DataControlRowType.DataRow)
            //    {
            //        System.Web.UI.WebControls.CheckBox chkRow = (row.Cells[0].FindControl("chkCtrl") as System.Web.UI.WebControls.CheckBox);
            //        if (chkRow.Checked)
            //        {
            //            string email = row.Cells[1].Text;
            //            string course = row.Cells[2].Text;
            //        }
            //    }
            //}



        //}
        //catch (SqlException sq)
        ////shows an error message if there is a problem connecting to the DB.
        //{
        //    MessageBox.Show(sq.Message);
        //}


    }

    protected void btnSubmitAttendance_Click(object sender, EventArgs e)
    {
        //foreach (GridViewRow row in dt.Rows)
        //{
        //    if (dt.Columns[0].Equals(true))
        //    {
        //        System.Diagnostics.Debug.WriteLine("TEST");
        //        System.Diagnostics.Debug.WriteLine("New Attendee");
        //        //System.Diagnostics.Debug.WriteLine(dt.Rows[i][0].ToString());
        //    }
        //}
        //{

        //    DataGridViewCheckBoxCell checkCell =
        //       (DataGridViewCheckBoxCell)dataGridView1.
        //        Rows[e.RowIndex].Cells["Column1"];
        //    if ((bool)checkCell.Value == true)
        //    {
        //        int i = dataGridView1.CurrentRow.Index;
        //        string col = dataGridView1.Rows[e.RowIndex].Cells["column2"].Value.ToString();
        //    }

        //}


        //Add each row in the DataTable
        for (int i = 0; i < dt.Rows.Count; i++)
        {

             //add the column for each row
            //for (int j = 0; j < dt.Columns.Count; j++)
            //{
                //if (dt.Columns[j].ColumnName == "Attended?")
                //{
                   // DataGridViewCheckBoxCell checkCell = (DataGridViewCheckBoxCell)dt.Rows[i].Cells["Attended?"];

                    if (ckBox.Checked == true)
                    {
                        System.Diagnostics.Debug.WriteLine("TEST");
                        System.Diagnostics.Debug.WriteLine("New Attendee");
                        System.Diagnostics.Debug.WriteLine(dt.Rows[i][0].ToString());
                        System.Diagnostics.Debug.WriteLine("NEXT");
                        
                    }

             //}
            //}


        }
    }
}