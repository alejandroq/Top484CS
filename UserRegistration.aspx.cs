using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail; // for e-mail activation
using System.Data;
using System.Diagnostics;
using System.Windows.Forms;


public partial class _Default : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

        
        parentAdditions.Style.Add("display", "none");
        parentBlock.Style.Add("display", "none");
        
        
    }

    


    #region Sign Up New User
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        // General user database input statements

        string userType = Session["userType"].ToString();
        Debug.WriteLine(userType);

        if (userType.Equals("parent"))
        {

            parentAdditions.Style.Add("display", "inline");
            parentBlock.Style.Add("display", "inline");
            allInfo.Style.Add("display", "none");


        }
       /* else if (userType.Equals("student"))
        {
            InsertGeneralUser();

            allInfo.Style.Add("display", "none");
            sEmergencyInfo.Style.Add("display", "inline");
            sAdditionalInformation.Style.Add("display", "inline");
            sHealthInfo.Style.Add("display", "inline");
        }*/
        
        else
        {
            InsertGeneralUser();
            InsertStandardApplicant();
            //Adds Record to general user table
            // send cipher data to the database
        }


    }
    #endregion

    #region Insert General User and Applicant Record

    protected void InsertGeneralUser()
    { 
        
        try
        {
            SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString); // connection string is in web config
            SqlCommand query = new SqlCommand();

            sc.Open();

            query.Connection = sc;
            query.CommandText = "Insert INTO GeneralUser(EmailAddress, FirstName, LastName, Gender, HomePhone, HomeAddress, City, State," +
	                "ZIP, DOB, Password, UserType, PasswordHash, ShirtSize, UserPermission, LastLogin, Race, CellPhone, JoinDate," +
                    "ActivatedBool) Values(@EmailAddress, @FirstName, @LastName, @Gender, @HomePhone, @HomeAddress, @City, @State," +
                    "@ZIP, @DOB, @Password, @UserType, @PasswordHash, @ShirtSize, @UserPermission, @LastLogin, @Race, @CellPhone," +
                    "@JoinDate, @Activated)";
            Debug.WriteLine(query.CommandText);
            Debug.WriteLine("Where @EmailAddress = " + txtEmail.Text);
            Debug.WriteLine("@FirstName = "+ txtfName.Text);
            Debug.WriteLine("@LastName = " + txtlName.Text);
            Debug.WriteLine("@Gender = " + ddlGender.Text);

            Debug.WriteLine("@HomePhone = NULL");

            Debug.WriteLine("@HomeAddress = " + txtAddress.Text);
            Debug.WriteLine("@City = " + txtCity.Text);
            Debug.WriteLine("@State = " + txtState.Text);
            Debug.WriteLine("@ZIP = " + txtZip.Text);
            Debug.WriteLine("@DOB = " + txtDOB.Text);
            Debug.WriteLine("@Password = " + txtPassword.Text);
            Debug.WriteLine("@UserType = " + Session["userType"].ToString());

            string passHash = SimpleHash.ComputeHash(txtPassword.Text, "MD5", null);

            Debug.WriteLine("@PasswordHash = " + passHash);
            Debug.WriteLine("@PasswordSalt = NULL");
            Debug.WriteLine("@ShirtSize = NULL"); //Need Shirt Size Text Box
            Debug.WriteLine("@UserPermission = 1");
            Debug.WriteLine("@LastLogin = NULL");
            Debug.WriteLine("@Race = NULL");//Need button group for Race
            Debug.WriteLine("@CellPhone = " + txtCell.Text);
            DateTime today = DateTime.Now;
            Debug.WriteLine("@JoinDate = " + today);
            Debug.WriteLine("@Activated = 0");
            
            /////////
            query.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            query.Parameters.AddWithValue("@FirstName", txtfName.Text);
            query.Parameters.AddWithValue("@LastName", txtlName.Text);
            query.Parameters.AddWithValue("@Gender", ddlGender.Text);
            if(txtHome.Text.Trim().Equals("") || txtHome.Text == null)
                query.Parameters.AddWithValue("@HomePhone", System.DBNull.Value);
            else query.Parameters.AddWithValue("@HomePhone", txtHome.Text);
            query.Parameters.AddWithValue("@HomeAddress", txtAddress.Text);
            query.Parameters.AddWithValue("@City", txtCity.Text);
            query.Parameters.AddWithValue("@State", txtState.Text);
            query.Parameters.AddWithValue("@ZIP", txtZip.Text);
            query.Parameters.AddWithValue("@DOB", txtDOB.Text);
            query.Parameters.AddWithValue("@Password", txtPassword.Text);
            query.Parameters.AddWithValue("@UserType", Session["userType"].ToString());
            
            query.Parameters.AddWithValue("@PasswordHash", passHash);
            query.Parameters.AddWithValue("@ShirtSize", ddlShirtSize.Text); //Need Shirt Size Text Box
            query.Parameters.AddWithValue("@UserPermission", Session["permission"].ToString());
            query.Parameters.AddWithValue("@LastLogin", System.DBNull.Value);

            List<String> selectedValues = cblRace.Items.Cast<ListItem>()
                .Where(li => li.Selected)
                .Select(li => li.Value)
                .ToList();
            String races ="";
            foreach (String item in selectedValues)
            {
                races += item + ", "; 
            }
            Debug.WriteLine(races);
            if (races.Trim().Equals(""))
                { query.Parameters.AddWithValue("@Race", System.DBNull.Value); }
            else 
                { query.Parameters.AddWithValue("@Race", races); }
            query.Parameters.AddWithValue("@CellPhone", txtCell.Text);
           // DateTime today = DateTime.Now;
            query.Parameters.AddWithValue("@JoinDate", today);
            query.Parameters.AddWithValue("@Activated", 0 );

            query.ExecuteNonQuery();

            sc.Close();

        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());

        }
    }

    protected void InsertStandardApplicant()
    {
        try
        {
            SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString); // connection string is in web config
            SqlCommand query = new SqlCommand();

            sc.Open();

            query.Connection = sc;
            query.CommandText = "Insert INTO Applicant(EmailAddress, RequestedAccountType, Approved, DateRequested, DateApproved, StudentInfo)" +
                    "Values(@EmailAddress, @RequestedAccountType, @Approved, @DateRequested, @DateApproved, @StudentInfo)";
            /*Debug.WriteLine(query.CommandText);
            Debug.WriteLine("Where @EmailAddress = " + txtEmail.Text);
            Debug.WriteLine("@RequestedAccountType = " + Session["userType"].ToString());
            Debug.WriteLine("@Approved = false");
            Debug.WriteLine("@DateRequested = " + DateTime.Now);
            Debug.WriteLine("@DateApproved = NULL");*/

            /////////
            query.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            query.Parameters.AddWithValue("@RequestedAccountType", Session["userType"].ToString());
            query.Parameters.AddWithValue("@Approved", "false");
            query.Parameters.AddWithValue("@DateRequested", DateTime.Now);
            query.Parameters.AddWithValue("@DateApproved", System.DBNull.Value);
            query.Parameters.AddWithValue("@StudentInfo", System.DBNull.Value);
            query.ExecuteNonQuery();
            sc.Close();
            MessageBox.Show("Your application has been submitted! You will receive an e-mail when your account is approved and ready for activation");
            // send notification to admin here
            Response.Redirect("Wall.aspx");

        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());

        }
    }

    protected void InsertParentApplicant(String email)
    {
        try
        {
            SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString); // connection string is in web config
            SqlCommand query = new SqlCommand();

            sc.ConnectionString = "Server=@LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
            sc.Open();

            query.Connection = sc;
            query.CommandText = "Insert INTO Applicant(EmailAddress, RequestedAccountType, Approved, DateRequested, DateApproved, StudentInfo)" +
                    "Values(@EmailAddress, @RequestedAccountType, @Approved, @DateRequested, @DateApproved, @StudentInfo)";

            String studentInfo;

            studentInfo = "";
            studentInfo += txtChildEmail.Text + "," + txtChildFName.Text + "," + txtChildLName.Text + "," + txtChildDOB.Text;
            query.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            query.Parameters.AddWithValue("@RequestedAccountType", Session["userType"].ToString());
            query.Parameters.AddWithValue("@Approved", "false");
            query.Parameters.AddWithValue("@DateRequested", DateTime.Now);
            query.Parameters.AddWithValue("@DateApproved", System.DBNull.Value);
            query.Parameters.AddWithValue("@StudentInfo", studentInfo);

            query.ExecuteNonQuery();

            sc.Close();

        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());

        }
    }

    #endregion


   
    protected void parentStudentConfirmation_Click(object sender, EventArgs e)
    {
        InsertGeneralUser(); //Adds Record to general user table

        String student = txtChildEmail.Text;
        InsertParentApplicant(student);

        //Make it possible to store info about student in the applicant table
    }

}









