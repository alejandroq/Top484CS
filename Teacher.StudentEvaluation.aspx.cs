using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Teacher_StudentEvaluation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtQuestion1.Text = (String) Session["EvaluateeID"];
    }
    
    /*
     * Method that controls actions after Submit button is
     * clicked on Evaluation
     */
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ArrayList answers = GatherAnswers();
        ArrayList questions = GatherQuestions();
        //get student Id from question 1 query
    }
    /*
     * Method gathers all answers from the evaluation form 
     * @return result, arraylist containing all user answers
     */
    protected ArrayList GatherAnswers()
    {
        ArrayList result = new ArrayList();

        result.Add(txtQuestion1.Text);
        
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
                result.Add(read[count]);
                count++;
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
            DateTime date =DateTime.Now;

            sc.ConnectionString = @"Server = DESKTOP-QEKTMG0\LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
            sc.Open();

            insert.Connection = sc;
            insert.CommandText = "Insert INTO EvalResponse(RespondentID, EvalID, EvaluateeID, Date) Values(@RespondentID, @EvalID, @EvaluateeID, @Date)";
            insert.Parameters.AddWithValue("@RespondentID", (String)Session["RespondentID"]);
            insert.Parameters.AddWithValue("@EvalID", (String)Session["Evaluation"]);
            insert.Parameters.AddWithValue("@EvaluateeID", (String)Session["EvaluateeID"]);
            insert.Parameters.AddWithValue("@EvaluateeID", date);
            insert.ExecuteNonQuery();

            

            insert.CommandText = "Select EvalResponseID From EvalResponse Where RespondentID =  " + (String)Session["RespondentID"];
            insert.CommandText += " AND EvaluateeID = " + (String)Session["Evaluation"];
            insert.CommandText += " AND Date = " + date;

            SqlDataReader read = insert.ExecuteReader();
            
            String evalResponse = read[0].ToString();

            for (int i = 0; i < q.Count; i++)
            {

                insert.CommandText = "Insert INTO Response(EvalResponseID, RespondentID, QuestionID, ResponseText)" +
                    "Values(@EvalResponseID, @RespondentID, @QuestionID, @ResponseText)";

                insert.Parameters.AddWithValue("@EvalResponseID", evalResponse);
                insert.Parameters.AddWithValue("@RespondentID", Session["RespondentID"]);
                insert.Parameters.AddWithValue("@QuestionID", q[i]);
                if (a[i] != null || a[i] != "")
                {
                    insert.Parameters.AddWithValue("@ResponseText", a[i]);
                }
                else 
                {
                    insert.Parameters.AddWithValue("@ResponseText", "NULL");
                }
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