using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUpDescriptions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string userType = "";
    

    protected void btnStudent_Click(object sender, EventArgs e)
    {
        userType = "student";
        Session["userType"] = userType;
        Response.Redirect("UserRegistration.aspx");
    }
    protected void btnParent_Click(object sender, EventArgs e)
    {
        userType = "parent";
        Session["userType"] = userType;
        Response.Redirect("UserRegistration.aspx");

    }
    protected void btnCipher_Click(object sender, EventArgs e)
    {
        userType = "cipher";
        Session["userType"] = userType;
        Response.Redirect("UserRegistration.aspx");
    }
}