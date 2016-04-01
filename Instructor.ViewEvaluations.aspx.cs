using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor_ViewEvaluations : System.Web.UI.Page
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
                insert.CommandText = "Select ResponseText from Response where Response.EvalResponseID = 4";



                SqlDataReader reader = insert.ExecuteReader();
                int j = 2;
                int k = 2;
                int i = 0;
                while (reader.Read())
                {


                    //txtQuestion16Text = "studentName";
                    txtQuestion2.Text = reader.GetString(0);
                    txtQuestion3.Text = reader.GetString(0);
                    txtQuestion4.Text = reader.GetString(0);
                    txtQuestion5.Text = reader.GetString(0);


                    if (i < 4)
                    {

                        //     TextBox txt = (TextBox)Table2.Rows[i+2].Cells[1].Controls[0];

                        string txt = "";
                        switch (reader.GetString(0))
                        {
                            case "1":
                                txt = "Completely Disagree";
                                break;
                            case "2":
                                txt = "Disagree";
                                break;
                            case "3":
                                txt = "Neither Agree Nor Disagree";
                                break;
                            case "4":
                                txt = "Agree";
                                break;
                            case "5":
                                txt = "Completely Agree";
                                break;
                        }
                        Table1.Rows[i + 2].Cells[1].Text = txt;
                    }
                    else if (i >= 4 && i < 13 )
                    {
                        string txt = "";
                        switch (reader.GetString(0))
                        {
                            case "1":
                                txt = "Completely Disagree";
                                break;
                            case "2":
                                txt = "Disagree";
                                break;
                            case "3":
                                txt = "Neither Agree Nor Disagree";
                                break;
                            case "4":
                                txt = "Agree";
                                break;
                            case "5":
                                txt = "Completely Agree";
                                break;
                        }
                        Table2.Rows[i + 2].Cells[1].Text = txt;
                    }
                    else if (i >= 13 && i < 18)
                    {
                        string txt = "";
                        switch (reader.GetString(0))
                        {
                            case "1":
                                txt = "Completely Disagree";
                                break;
                            case "2":
                                txt = "Disagree";
                                break;
                            case "3":
                                txt = "Neither Agree Nor Disagree";
                                break;
                            case "4":
                                txt = "Agree";
                                break;
                            case "5":
                                txt = "Completely Agree";
                                break;
                        }
                        Table3.Rows[i + 2].Cells[1].Text = txt;
                    }

                    else if (i>= 18 && i < 30)
                    {
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
                                txt = "Exceeds Expectations";
                                break;
                            case "5":
                                txt = "";
                                break;
                        }
                        Table4.Rows[i + 2].Cells[1].Text = txt;
                    }

                    else if (i == 31)
                    {
                        txtQuestion2t.Text = reader.GetString(0);
                    }
                    else if (i == 32)
                    {
                        txtQuestion3t.Text = reader.GetString(0);
                    }
                    else if (i == 33)
                    {
                        txtQuestion4t.Text = reader.GetString(0);
                    }
                    else if (i == 34)
                    {
                        txtQuestion5t.Text = reader.GetString(0);
                    }
                    else if (i == 35)
                    {
                        txtQuestion1s.Text = reader.GetString(0);
                    }
                    else if (i == 36)
                    {
                        txtQuestion2s.Text = reader.GetString(0);
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