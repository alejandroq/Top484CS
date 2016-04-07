using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class Student_ClassEvaluation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["EvaluateeID"] = "testProf@WBL.org"; // professor email that student is evalu
        Session["EvalID"] = "2";
        Session["RespondentID"] = Session["UserID"].ToString();
        txtQuestion1.Text = Session["UserID"].ToString(); 
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

        if (rdoFB.Checked)
        {
            result.Add(rdoFB.Text);
        }
        else if (rdoTwitter.Checked)
        {
            result.Add(rdoTwitter.Text);
        }
        else if (rdoFriend.Checked)
        {
            result.Add(rdoFriend.Text);
        }
        else if (rdoParent.Checked)
        {
            result.Add(rdoParent.Text);
        }
        else if (rdoTeacher.Checked)
        {
            result.Add(rdoTeacher.Text);
        }
        else if (rdoNotSure.Checked)
        {
            result.Add(rdoNotSure.Text);
        }
        else if (rdoOther.Checked)
        {
            result.Add(txtOther.Text);
        }

        if (rdoAlways.Checked)
        {
            result.Add(rdoAlways.Text);
        }
        else if (rdoMost.Checked)
        {
            result.Add(rdoMost.Text);
        }
        else if (rdoSome.Checked)
        {
            result.Add(rdoSome.Text);
        }
        else if (rdoNever.Checked)
        {
            result.Add(rdoNever.Text);
        }
        result.Add(txtQuestion4.Text);
        result.Add(txtQuestion5.Text);
        result.Add(Request.Form["q6row1"].ToString());
        result.Add(Request.Form["q6row2"].ToString());
        result.Add(Request.Form["q6row3"].ToString());
        result.Add(Request.Form["q6row4"].ToString());
        result.Add(Request.Form["q7row1"].ToString());
        result.Add(Request.Form["q7row2"].ToString());
        result.Add(Request.Form["q7row3"].ToString());
        result.Add(Request.Form["q7row4"].ToString());
        result.Add(Request.Form["q7row5"].ToString());
        result.Add(Request.Form["q7row6"].ToString());
        result.Add(Request.Form["q7row7"].ToString());
        result.Add(Request.Form["q10row2"].ToString());
        result.Add(Request.Form["q10row3"].ToString());
        result.Add(Request.Form["q10row4"].ToString());
        result.Add(Request.Form["q10row5"].ToString());
        result.Add(Request.Form["q8row1"].ToString());
        result.Add(Request.Form["q8row2"].ToString());
        result.Add(Request.Form["q8row3"].ToString());
        result.Add(Request.Form["q9row1"].ToString());
        result.Add(Request.Form["q9row2"].ToString());
        result.Add(Request.Form["q9row3"].ToString());
        result.Add(Request.Form["q9row4"].ToString());
        result.Add(Request.Form["q9row5"].ToString());
        result.Add(Request.Form["q9row6"].ToString());
        result.Add(Request.Form["q9row7"].ToString());
        result.Add(Request.Form["q9row8"].ToString());
        result.Add(Request.Form["q9row9"].ToString());
        result.Add(Request.Form["q9row10"].ToString());
        result.Add(txtQuestion2t.Text);
        result.Add(txtQuestion3t.Text);
        result.Add(txtQuestion4t.Text);

        if (rdoYes.Checked)
        {
            result.Add(rdoYes.Text);
        }
        else if (rdoNo.Checked)
        {
            result.Add(rdoNo.Text);
        }

        if (rdoSelf1a.Checked)
        {
            result.Add(rdoSelf1a.Text);
        }
        else if (rdoSelf1b.Checked)
        {
            result.Add(rdoSelf1b.Text);
        }
        else if (rdoSelf1c.Checked)
        {
            result.Add(rdoSelf1c.Text);
        }

        if (rdoSelf2a.Checked)
        {
            result.Add(rdoSelf2a.Text);
        }
        else if (rdoSelf2b.Checked)
        {
            result.Add(rdoSelf2b.Text);
        }

        ;



        return result;
    }

    protected ArrayList GatherQuestions()
    {
        ArrayList result = new ArrayList();
        //int count = 0;
        try
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand query = new SqlCommand();

            sc.ConnectionString = @"Server = LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
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

            sc.ConnectionString = @"Server = LOCALHOST; Database = WBLDB; Trusted_Connection = Yes;";
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