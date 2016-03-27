using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class Teacher_StudentEvaluation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["EvaluateeID"] = "testStud@WBL.org";
        Session["EvalID"] = "1";
        Session["RespondentID"] = "testProf@WBL.org";
        txtQuestion1.Text = "Student Test";
    }

    /*
     * Method that controls actions after Submit button is
     * clicked on Evaluation
     */
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ArrayList answers = GatherAnswers();
        ArrayList questions = GatherQuestions();
        SubmitEval(questions, answers);
        //get student Id from Session Variable
    }
    /*
     * Method gathers all answers from the evaluation form 
     * @return result, arraylist containing all user answers
     */
    protected ArrayList GatherAnswers()
    {
        ArrayList result = new ArrayList();


        result.Add(Request.Form["q1row1"].ToString());
        result.Add(Request.Form["q1row2"].ToString());
        result.Add(Request.Form["q1row3"].ToString());
        result.Add(Request.Form["q1row4"].ToString());
        result.Add(Request.Form["q1row5"].ToString());
        result.Add(Request.Form["q1row6"].ToString());
        result.Add(Request.Form["q1row7"].ToString());
        result.Add(Request.Form["q1row8"].ToString());

        result.Add(txtQuestion2.Text);
        result.Add(txtQuestion3.Text);
        result.Add(txtQuestion4.Text);

        return result;
    }

    protected ArrayList GatherQuestions()
    {
        ArrayList result = new ArrayList();
        int count = 0;
        try
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand query = new SqlCommand();

            sc.ConnectionString = @"Server = DESKTOP-QEKTMG0\LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
            sc.Open();

            query.Connection = sc;
            query.CommandText = "Select QuestionID From QuestionOrder Where EvalID = " + (String)Session["EvalID"];// session variable eval
            SqlDataReader read = query.ExecuteReader();
            while (read.Read())
            {
                result.Add(read[0]);
                //count++;
            }
            sc.Close();

        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());

        }

        return result;

    }


    protected void SubmitEval(ArrayList q, ArrayList a)
    {
        try
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand insert = new SqlCommand();
            DateTime date = DateTime.Now;

            sc.ConnectionString = @"Server = DESKTOP-QEKTMG0\LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
            sc.Open();

            insert.Connection = sc;
            insert.CommandText = "Insert INTO EvalResponse(RespondentEmail, EvalID, EvaluateeEmail, ResponseDate)" +
                " Values(@RespondentEmail, @EvalID, @EvaluateeEmail, @Date)";
            insert.Parameters.AddWithValue("@RespondentEmail", (String)Session["RespondentID"]);
            insert.Parameters.AddWithValue("@EvalID", (String)Session["EvalID"]);
            insert.Parameters.AddWithValue("@EvaluateeEmail", (String)Session["EvaluateeID"]);
            insert.Parameters.AddWithValue("@Date", date);
            insert.ExecuteNonQuery();



            insert.CommandText = "SELECT EvalResponseID FROM EvalResponse WHERE EvalResponseID = (SELECT IDENT_CURRENT('EvalResponse'))";
            Debug.WriteLine(insert.CommandText);
            SqlDataReader read = insert.ExecuteReader();
            read.Read();
            int evalResponse = read.GetInt32(0);
            read.Close();
            for (int i = 0; i < q.Count; i++)
            {
                insert.Parameters.Clear();
                insert.CommandText = "Insert INTO Response(RespondentEmail, EvalResponseID, ResponseText, QuestionID)" +
                    "Values(@RespondentID, @EvalResponseID, @ResponseText, @QuestionID)";

                
                insert.Parameters.AddWithValue("@RespondentID", (String)Session["RespondentID"]);
                insert.Parameters.AddWithValue("@EvalResponseID", evalResponse);
                if (a[i] != null || (String)a[i] != "")
                {
                    insert.Parameters.AddWithValue("@ResponseText", (String)a[i]);
                }
                else
                {
                    insert.Parameters.AddWithValue("@ResponseText", System.DBNull.Value);
                }
                insert.Parameters.AddWithValue("@QuestionID", q[i]);
                
                insert.ExecuteNonQuery();

            }


            sc.Close();

        }
        catch (SqlException SQLe)
        {
            System.Diagnostics.Debug.Write(SQLe.ToString());

        }

    }
    
}