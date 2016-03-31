using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void btnViewProfile_Click(object sender, EventArgs e)
    {
        // link to student's profile page using session variable
    }
    protected void btnEditInfo_Click(object sender, EventArgs e)
    {

    }
}