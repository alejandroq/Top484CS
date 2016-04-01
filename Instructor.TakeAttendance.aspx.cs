using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Text;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;



public partial class Instructor_TakeAttendance : System.Web.UI.Page
{

    private ArrayList studs;
    String courseName = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlClasses.DataBind();
            ddlClasses.Items.Insert(0, "Please select");
        }
        if (!ddlClasses.SelectedItem.Value.ToString().Equals("Please select"))
            studs = GetStudents();
    }

    protected ArrayList GetStudents()
    {
        ArrayList result = new ArrayList();
        courseName = ddlClasses.SelectedValue.ToString();

        try
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand query = new SqlCommand();

            sc.ConnectionString = @"Server = LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
            sc.Open();

            query.Connection = sc;
            query.CommandText = "Select Attendance.EmailAddress, Attendance.CourseID, CourseName, AttendanceDate from Attendance, Course, Student where Course.CourseID=Attendance.CourseID and Attendance.EmailAddress=Student.EmailAddress and PresentBool = 0 and CourseName = '" + courseName + "';";

            SqlDataReader read = query.ExecuteReader();

            while (read.Read())
            {
                result.Add(read.GetString(0));
                //System.Diagnostics.Debug.WriteLine(read.GetString(0));
                result.Add(read.GetInt32(1));
                //System.Diagnostics.Debug.WriteLine((read.GetInt32(1).ToString()));
                result.Add(read.GetString(2));
                //System.Diagnostics.Debug.WriteLine(read.GetString(2));
                result.Add(read.GetDateTime(3));
                //System.Diagnostics.Debug.WriteLine((read.GetDateTime(3).ToShortDateString()));

            }
            sc.Close();
        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());
        }

        return result;
    }

    protected void PopChkBox(ArrayList info)
    {
        //chkStudent.
        int size = (info.Count);
        //RadioButtonList rblStudent = new RadioButtonList();
        for (int i = 0; i < size; i += 4)
        {
            chkStudent.Items.Add(new ListItem((String)info[i]));
            
        }
    }

    protected void chkStudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        int index = chkStudent.SelectedIndex*4;
        System.Diagnostics.Debug.WriteLine(index);
        //insert accident into db
        //int size = (studs.Count);
        //for (int i = 0; i < size; i += 4)
        //{
                try
                {
                    //Creates a new sql connection and links the application to the DB
                    SqlConnection sc = new SqlConnection();
                    sc.ConnectionString = @"Server =LOCALHOST;Database=WBLDB;Trusted_COnnection=Yes;";

                    //Opens the sql connection
                    sc.Open();

                    //user stored procedures to avoid SQL injection
                    SqlCommand update = new SqlCommand();
                    update.Connection = sc;
                    update.CommandType = CommandType.StoredProcedure;
                    update.CommandText = "AttendanceProcedure";
                    
                    
                    Console.WriteLine(studs[1].ToString());
                    Console.WriteLine(studs[0].ToString());
                    Console.WriteLine(studs[3].ToString());
                    //Console.WriteLine(studs[4].ToString());


                    SqlParameter courseID = new SqlParameter();
                    courseID.ParameterName = "@CourseID";
                    courseID.Value = studs[index + 1];
                    update.Parameters.Add(courseID);

                    SqlParameter email = new SqlParameter();
                    email.ParameterName = "@EmailAddress";
                    email.Value = studs[index];
                    update.Parameters.Add(email);

                    SqlParameter date = new SqlParameter();
                    date.ParameterName = "@AttendanceDate";
                    date.Value = studs[index + 3].ToString();
                    update.Parameters.Add(date);

                    SqlParameter present = new SqlParameter();
                    present.ParameterName = "@PresentBool";
                    present.Value = "1";
                    update.Parameters.Add(present);

                    update.ExecuteNonQuery();
                    sc.Close();

                    //chkStudent.Items.Clear();

                }
                catch (SqlException s)
                //shows an error message if there is a problem connecting to the DB.
                {
                    MessageBox.Show(s.Message);
                }
    }

    protected void btnSubmitAttendance_Click(object sender, EventArgs e)
    {
        //insert accident into db
        int size = (studs.Count);
        for (int i = 0; i < size; i += 4)
        {
            if (chkStudent.Items[i].Equals(true))
            {
                try
                {
                    //Creates a new sql connection and links the application to the DB
                    SqlConnection sc = new SqlConnection();
                    sc.ConnectionString = @"Server =LOCALHOST;Database=WBLDB;Trusted_COnnection=Yes;";

                    //Opens the sql connection
                    sc.Open();

                    //user stored procedures to avoid SQL injection
                    SqlCommand update = new SqlCommand();
                    update.Connection = sc;
                    update.CommandType = CommandType.StoredProcedure;
                    update.CommandText = "AttendanceProcedure";

                    SqlParameter courseID = new SqlParameter();
                    courseID.ParameterName = "@CourseID";
                    courseID.Value = studs[i + 1];
                    update.Parameters.Add(courseID);

                    SqlParameter email = new SqlParameter();
                    email.ParameterName = "@EmailAddress";
                    email.Value = studs[i];
                    update.Parameters.Add(email);

                    SqlParameter date = new SqlParameter();
                    date.ParameterName = "@AttendanceDate";
                    date.Value = studs[i + 3];
                    update.Parameters.Add(date);

                    SqlParameter present = new SqlParameter();
                    present.ParameterName = "@PresentBool";
                    present.Value = "1";
                    update.Parameters.Add(present);

                    update.ExecuteNonQuery();
                    sc.Close();

                }
                catch (SqlException s)
                //shows an error message if there is a problem connecting to the DB.
                {
                    MessageBox.Show(s.Message);
                }
            }
        }
    }
    protected void ddlClasses_SelectedIndexChanged(object sender, EventArgs e)
    {
        chkStudent.Items.Clear();
        studs = GetStudents();
        PopChkBox(studs);
    }
}
