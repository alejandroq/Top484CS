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
    int permission = 0;
    

    protected void btnStudent_Click(object sender, EventArgs e)
    {
        userType = "student";
        permission = 0; //should be 3 changed for prototype
        Session["userType"] = userType;
        Session["permission"] = permission;
        Response.Redirect("UserRegistration.aspx");
    }
    protected void btnParent_Click(object sender, EventArgs e)
    {
        userType = "parent";
        permission = 2;
        Session["userType"] = userType;
        Session["permission"] = permission;
        Response.Redirect("UserRegistration.aspx");

    }
    protected void btnCipher_Click(object sender, EventArgs e)
    {
        userType = "cipher";
        permission = 1;
        Session["userType"] = userType;
        Session["permission"] = permission;
        Response.Redirect("UserRegistration.aspx");
    }
}