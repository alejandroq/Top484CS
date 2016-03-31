﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_ViewEvaluations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                SqlConnection sc = new SqlConnection();
                SqlCommand insert = new SqlCommand();
      

                sc.ConnectionString = @"Server = LULU; Database = WBLDB; Trusted_Connection = Yes;";
                sc.Open();

                insert.Connection = sc;
                insert.CommandText = "Select ResponseText from Response where Response.EvalResponseID = 3";
   
                

                SqlDataReader reader = insert.ExecuteReader();
                int j = 2;
                int k = 2;
                int i = 0;
                while (reader.Read())
                {


                    txtQuestion1.Text = "studentName";
                                     
                        
                   
                        if (i < 8)
                        {

                        //     TextBox txt = (TextBox)Table2.Rows[i+2].Cells[1].Controls[0];

                        string txt = "";
                            switch (reader.GetString(0))
                            {
                                case "1":
                                    txt = "Unsatisfactory";
                                    break;
                                case "2":
                                    txt = "Needs Improvement";
                                    break;
                            case "3":
                                    txt = "Meets Expectations";
                                    break;
                                case "4":
                                    txt = "Meets Expectations";
                                    break;
                                case "5":
                                    txt = "Exceeds Expectations";
                                    break;
                                case "6":
                                    txt = "Exceptional";
                                    break;
                            }
                        Table2.Rows[i + 2].Cells[1].Text = txt;
                        }
                        else if (i == 8)
                        {
                        txtQuestion2.Text = reader.GetString(0);
                        }

                        else if (i == 9)
                        {
                        txtQuestion3.Text = reader.GetString(0);
                        }

                        else if (i == 10)
                        {
                        txtQuestion4.Text = reader.GetString(0);
                        }

                       i++;
                       j++;
                    }
                        

             System.Diagnostics.Debug.WriteLine(insert.CommandText);
             sc.Close();
               
            }
            catch (System.Data.SqlClient.SqlException f)
            {

                System.Windows.Forms.MessageBox.Show(f.Message);
                
            }
        }
    }
}