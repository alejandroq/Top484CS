using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewCalendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Get all calendar-worthy data from Event Table
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            connection.Open();          
            string cmdText = "select EventName, EventType, EventDateTime from dbo.WBLEvent";
            SqlCommand cmd = new SqlCommand(cmdText, connection);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
            adp.Fill(dt);
            ViewState["dt"] = dt; 
        }
        System.Diagnostics.Debug.WriteLine("clicked");
        

    }

    // ondayrender for each day (e.cell) as calendar is being constructed
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        e.Cell.Attributes.Add("OnClick", e.SelectUrl);
        if (e.Day.IsToday)
        {
            // Outline today's date cell
            e.Cell.BorderColor = System.Drawing.Color.Black;
            e.Cell.BackColor = System.Drawing.Color.LightGoldenrodYellow;
            e.Cell.BorderStyle = BorderStyle.Solid;
            e.Cell.BorderWidth = 2;
        }

        if (ViewState["dt"] != null)
        {
            // get datatable from page load
            DataTable  dt = (DataTable)ViewState["dt"];

            for(int i = 0; i<dt.Rows.Count; i++)
            {
                // If an EventDate from our datatable is equal to each day's date as its being rendered
                if (Convert.ToDateTime(dt.Rows[i][2]).ToString("dd-MM-yyyy") == e.Day.Date.ToString("dd-MM-yyyy"))
                {
                    // break line to place text under datecell number
                    Literal ltrl = new Literal();
                    ltrl.Text = "<BR />";
                    e.Cell.Controls.Add(ltrl);

                    // outline the datecell where an event is taking place
                    e.Cell.BorderColor = System.Drawing.Color.Aqua;
                    e.Cell.BackColor = System.Drawing.Color.LightGray;
                    e.Cell.BorderStyle = BorderStyle.Solid;
                    e.Cell.BorderWidth = 2;

                    // Label for going to a specific event to view or edit it
                    Label b = new Label();
                    b.Font.Size = 12;
                    b.Font.Bold = true;
                    b.ForeColor = System.Drawing.Color.MediumVioletRed;
                    b.Text = dt.Rows[i][0].ToString();
                    e.Cell.Controls.Add(b);

                    Literal ltrl2 = new Literal();
                    ltrl2.Text = "<BR/><a style='font-size:8' href='Admin.AddEvent.aspx'>View Event</a>";    //?ID=" + wblEvent["ID"].ToString() + "'>View Address</a>";
                    // TODO: code the logic for editing the event from the page this links to
                    e.Cell.Controls.Add(ltrl2);
                }
              
            }
            Literal addEvent = new Literal();
            addEvent.Text = "<BR/><a style='font-size:4' href='Admin.AddEvent.aspx'>Add Event</a>";    //?ID=" + wblEvent["ID"].ToString() + "'>View Address</a>";
            e.Cell.Controls.Add(addEvent);
        }
    }
}