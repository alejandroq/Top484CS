using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        studentRegistrationForm.Style.Add("display", "none");

        if (Request.QueryString.Count > 0) // if there is a query string, meaning if there is a variable in the email= link (useractivation)
        {
            if (Request.QueryString.Keys[0] == "EmailAddress") // if the first value of the query string is email
            {
                string email = Request.QueryString["EmailAddress"].ToString(); // email ID from query string
                string QueryActivate = "Update dbo.GeneralUser set ActivatedBool = 'True' where EmailAddress = '" + email + "'"; // changing activated column in DB from false to true (or 0 to 1 for bit-type)
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
                connection.Open();
                SqlCommand cmd = new SqlCommand(QueryActivate, connection);
                int no = cmd.ExecuteNonQuery();
                if (no > 0) // if more than zero values executed and returned
                {
                    if (Request.QueryString["AccountType"].ToString() == "student")
                    {
                        MessageBox.Show("Your account has been activated! Please fill out the rest of your information to complete the registration process and enroll in classes");
                        studentRegistrationForm.Style.Add("display", "inline");
                    }
                    else
                    {
                        MessageBox.Show("Account activated successfully!");
                        Response.Redirect("Log-In.aspx");
                    }
                }
                else
                {
                    MessageBox.Show("Error: Unable to Activate Account");
                }
            }
        }
    }


    protected void btneducationInfo_Click(object sender, EventArgs e)
    {
        sEducationInfo.Style.Add("display", "inline");
        sEmploymentHistory.Style.Add("display", "inline");
        sAdditionalInformation.Style.Add("display", "none");
            sEmergencyInfo.Style.Add("display", "none");
            sHealthInfo.Style.Add("display", "none");
    }
    protected void btnConfirmEmmployEducation_Click(object sender, EventArgs e)
    {

    }


    protected void additionalStudent_Click(object sender, EventArgs e)
    {

    }

}
