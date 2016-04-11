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
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["UserId"] = "Matam.Pages@gmail.com";
            PopDropDown(); 
        }
        if (!ddlClasses.SelectedItem.Value.ToString().Equals("Please select"))
        {
            studs = GetStudents();
            PopChkBox(studs);

        }


    }



    protected void PopDropDown()
    {
        ArrayList result = new ArrayList();
        ArrayList courses = new ArrayList();
        try
        {
            SqlCommand query = new SqlCommand();
            SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

            sc.Open();

            query.Connection = sc;
            query.CommandText = "SELECT Section.CourseID, Course.CourseName FROM SectionStaff "+
                "LEFT JOIN Section INNER JOIN Course ON Section.CourseID = Course.CourseID "+
                "ON Section.SectionID = SectionStaff.SectionID Where SectionStaff.EmailAddress = '"+
                Session["UserID"].ToString() + "'";
            SqlDataReader read = query.ExecuteReader();

            while (read.Read())
            {
                result.Add(read.GetInt32(0));
                result.Add(read.GetString(1));
            }

            sc.Close();

            ddlClasses.Items.Insert(0, "Please select");
            int count = 1;
            for (int i = 0; i < result.Count; i += 2)
            {
                Debug.WriteLine(i);
                ddlClasses.Items.Insert(count, new ListItem(result[i + 1].ToString(), result[i].ToString()));
                count++;
            }

        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());
        }
    }


    protected ArrayList GetStudents()
    {
        ArrayList result = new ArrayList();
        String courseID = ddlClasses.SelectedValue.ToString();
        
        try
        {
            SqlCommand query = new SqlCommand();
            SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString); 
           
            sc.Open();

            query.Connection = sc;
            query.CommandText = "SELECT GeneralUser.FirstName, GeneralUser.LastName, GeneralUser.EmailAddress  FROM Section " +
                "Left JOIN Enrollment Inner JOIN GeneralUser ON Enrollment.EmailAddress = GeneralUser.EmailAddress " +
                "ON Enrollment.SectionID = Section.SectionID Where Section.CourseID = " + courseID;

            SqlDataReader read = query.ExecuteReader();

            while (read.Read())
            {
                result.Add(read.GetString(0));
                result.Add(read.GetString(1));
                result.Add(read.GetString(2));
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
        for (int i = 0; i < size; i += 3)
        {
            String name = info[i].ToString() + " " + info[i + 1].ToString();
            chkStudent.Items.Add(new ListItem(name, info[i + 2].ToString()));
            
        }
    }

  /*  protected void chkStudent_SelectedIndexChanged(object sender, EventArgs e)
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
                    SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
                    

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
    }*/

    protected void btnSubmitAttendance_Click(object sender, EventArgs e)
    {
        //insert accident into db

        DateTime today = DateTime.Now;
        
        int size = (studs.Count);
        for (int i = 0; i < size; i++ )
        {
            if (chkStudent.Items[i].Selected)
            {
                try
                {
                    //Creates a new sql connection and links the application to the DB
                    SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

                    //Opens the sql connection
                    sc.Open();

                    //user stored procedures to avoid SQL injection
                    SqlCommand update = new SqlCommand();
                    update.Connection = sc;
                    update.CommandType = CommandType.StoredProcedure;
                    update.CommandText = "AttendanceProcedure";

                    SqlParameter courseID = new SqlParameter();
                    courseID.ParameterName = "@CourseID";
                    courseID.Value = ddlClasses.SelectedValue;
                    update.Parameters.Add(courseID);

                    SqlParameter email = new SqlParameter();
                    email.ParameterName = "@EmailAddress";
                    email.Value = studs[i];
                    update.Parameters.Add(email);

                    SqlParameter date = new SqlParameter();
                    date.ParameterName = "@AttendanceDate";
                    date.Value = today;
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
            else
            {
                try
                {
                    //Creates a new sql connection and links the application to the DB
                    SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

                    //Opens the sql connection
                    sc.Open();

                    //user stored procedures to avoid SQL injection
                    SqlCommand update = new SqlCommand();
                    update.Connection = sc;
                    update.CommandType = CommandType.StoredProcedure;
                    update.CommandText = "AttendanceProcedure";

                    SqlParameter courseID = new SqlParameter();
                    courseID.ParameterName = "@CourseID";
                    courseID.Value = ddlClasses.SelectedValue;
                    update.Parameters.Add(courseID);

                    SqlParameter email = new SqlParameter();
                    email.ParameterName = "@EmailAddress";
                    email.Value = studs[i];
                    update.Parameters.Add(email);

                    SqlParameter date = new SqlParameter();
                    date.ParameterName = "@AttendanceDate";
                    date.Value = today;
                    update.Parameters.Add(date);

                    SqlParameter present = new SqlParameter();
                    present.ParameterName = "@PresentBool";
                    present.Value = "0";
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
