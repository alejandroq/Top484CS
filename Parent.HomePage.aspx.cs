using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class Parent_HomePage : System.Web.UI.Page
{
    private ArrayList studs;
    protected void Page_PreInit(object sender, EventArgs e)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["parentID"] = "Dan@WBL.org";
        studs = GetStudents();
        PopRadioBtns(studs);
    }



    protected ArrayList GetStudents()
    {
        ArrayList studs = new ArrayList();

        try
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand query = new SqlCommand();

            sc.ConnectionString = @"Server = DESKTOP-QEKTMG0\LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
            sc.Open();

            query.Connection = sc;
            query.CommandText = "Select FirstName, LastName, EmailAddress " + 
                "FROM GeneralUser " +
                "Where EmailAddress = (" + 
                "Select StudentEmailAddress from ParentStudent Where ParentEmailAddress = 'Dan@WBL.org')";
            Debug.WriteLine(query.CommandText);
            Debug.WriteLine("Where @EmailAddress = " + Session["parentID"].ToString());
            
            query.Parameters.AddWithValue("@ParentEmailAddress", Session["parentID"].ToString());

            SqlDataReader read = query.ExecuteReader();

            while (read.Read())
            {
                studs.Add(read.GetString(2));
                studs.Add(read.GetString(0));
                studs.Add(read.GetString(1));
            
            }
            sc.Close();
        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());
        }

        return studs;
    }
    protected void PopRadioBtns(ArrayList info)
    {
        int size = (info.Count + 1) / 3;
        //RadioButtonList rblStudent = new RadioButtonList();
        for (int i = 0; i < size; i += 3)
        {
            String name = (String)info[i + 1] + " " + (String)info[i + 2];
            rblStudent.Items.Add(new ListItem(name, (String)info[i]));
        }
    }
    protected void rblStudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = rblStudent.SelectedIndex;
        if (index == 0)
        {
            Session["studentID"] = studs[0];
        }
        else
        {
            Session["studentID"] = studs[index * 3];
        }
    }
}