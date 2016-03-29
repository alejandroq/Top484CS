using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        string fName = txtfName.Text;
        string lName = txtlName.Text;
        string email = txtEmail.Text;
        string pass = txtPassword.Text;
        string pass2 = txtPassword2.Text;
        string dob = txtDOB.Text;
        string address = txtAddress.Text;
        string city = txtCity.Text;
        string state = txtState.Text;
        string zip = txtZip.Text;
        string gender = ddlGender.SelectedValue;
        string hPhone = txtHome.Text;
        string cPhone = txtCell.Text;
        //string 
    }
}