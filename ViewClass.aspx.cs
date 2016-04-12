using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewClass : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlConnection sc = new SqlConnection();
            sc.ConnectionString = @"Server = LULU; Database = WBLDB; Trusted_Connection = Yes;";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = sc; 
            sc.Open();
            cmd.CommandText = "Select Course.CourseName, Course.CourseElement, Course.CourseDescription, Section.CourseTime, Section.Semester, Section.Location, SectionStaff.EmailAddress from Course inner join Section on Course.CourseID = Section.CourseID inner join SectionStaff on Section.SectionID = SectionStaff.SectionID where Section.SectionID = '" + Session["sectionID"].ToString() + "'";

            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                txtCourseName.Text = reader.GetString(0);
                txtCourseElement.Text = reader.GetString(1);
                txtCourseDes.Text = reader.GetString(2);
                txtTime.Text = reader.GetString(3);
                txtSemester.Text = reader.GetString(4);
                txtLocation.Text = reader.GetString(5);
                txtEmail.Text = reader.GetString(6);

            }
            reader.Close();



            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = sc;
            cmd2.CommandText = "Select FirstName, LastName from GeneralUser where EmailAddress ='" + txtEmail.Text + "'";
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while(reader2.Read())
            {
                string fName = reader2.GetString(0);
                string lName = reader2.GetString(1);
                txtInstructor.Text = fName + " " + lName;
            }
            reader2.Close();
            myIframe.Attributes["src"] = "https://www.google.com/maps/embed/v1/place?key=AIzaSyBZi6ob0guXfcA9OV2j1fKMhKDJIP7upHE&q=" + txtLocation.Text;
        }
    }
}