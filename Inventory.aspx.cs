using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inventory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int userType = 0;
        if (Session["permission"] != null)
        {
            userType = Int32.Parse(Session["permission"].ToString());
        }
        switch (userType)
        {
            case 1:
                // display cipher menu
                adminPanel1.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                
                break;
            case 2:
                // display parent menu
                adminPanel1.Style["display"] = "none";

                cipherPanel1.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                // Set fields un-editable if user is not an admin
                
                break;
            case 3:
                // display student menu
                adminPanel1.Style["display"] = "none";

                cipherPanel1.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                

                break;
            case 4:
                // display instructor menu
                adminPanel1.Style["display"] = "none";

                cipherPanel1.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";
                

                break;
            case 5:
                // display admin menu
                cipherPanel1.Style["display"] = "none";

                parentPanel1.Style["display"] = "none";

                studentPanel1.Style["display"] = "none";

                instructorPanel1.Style["display"] = "none";
                break;
            default:
                // ?? display error?
                break;
        }
    }
}