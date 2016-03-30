using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (flAdminAddContent.HasFile)
        {
            string filename = System.IO.Path.GetFileName(flAdminAddContent.FileName);
            flAdminAddContent.SaveAs(@"C:\Users\lee2rm\Desktop\Portfolios\" + filename); // used this filepath to save on my desktop
            /*Uploaded file path*/
            /*******************************************/
            /*Code to save the file path into data base??*/
            /*******************************************/
            Response.Write("File uploaded successfully.");
            // need to tie the file uploaded to the selected student's folder
            // need to add event handler for publishing file to community wall if user selects check box
        }
        else
        {
            Response.Write("Error: Please select a file");
        }
    }
}