using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Wall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int userType = Int32.Parse(Session["permission"].ToString());

        switch (userType)
        {
            case 1:
                // display cipher menu
                adminPanel1.Style["display"] = "none";
                adminFooter.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";
                parentFooter.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";
                studentFooter.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                instructorFooter.Style["display"] = "none";
               
                break;
            case 2:
                // display parent menu
                adminPanel1.Style["display"] = "none";
                adminFooter.Style["display"] = "none";

                cipherPanel1.Style["display"] = "none";
                cipherFooter.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";
                studentFooter.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                instructorFooter.Style["display"] = "none";

                break;
            case 3:
                // display student menu
                adminPanel1.Style["display"] = "none";
                adminFooter.Style["display"] = "none";

                cipherPanel1.Style["display"] = "none";
                cipherFooter.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";
                parentFooter.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                instructorFooter.Style["display"] = "none";

                break;
            case 4:
                // display instructor menu
                adminPanel1.Style["display"] = "none";
                adminFooter.Style["display"] = "none";

                cipherPanel1.Style["display"] = "none";
                cipherFooter.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";
                parentFooter.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";
                studentFooter.Style["display"] = "none";

                break;
            case 5:
                // display admin menu
                cipherPanel1.Style["display"] = "none";
                cipherFooter.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";
                parentFooter.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";
                studentFooter.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                instructorFooter.Style["display"] = "none";
                break;
            default:
                // ?? display error?
                break;
        }




    }
}