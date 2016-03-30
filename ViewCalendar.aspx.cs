using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
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
        //System.Diagnostics.Debug.WriteLine("clicked");

        
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
                    // DateTime variable to recognize each day that has an event
                    DateTime thisDay = e.Day.Date;
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
                    ltrl2.Text = "<BR/><a style='font-size:8' href='ViewEvent.aspx?EventDateTime=" + thisDay + "'>View Event</a>";    //?ID=" + wblEvent["ID"].ToString() + "'>View Address</a>";
                    // TODO: code the logic for editing the event from the page this links to
                    e.Cell.Controls.Add(ltrl2);
                }
              
            }
            //Literal addEvent = new Literal();
            //addEvent.Text = "<BR/><a style='font-size:4' href='Admin.AddEvent.aspx'>Add Event</a>";    //?ID=" + wblEvent["ID"].ToString() + "'>View Address</a>";
            //e.Cell.Controls.Add(addEvent);
        }
    }

    //#region Generate ASP Table dynamically from Database Table
    private void GenerateTable()
    {
        DataTable dt2 = CreateDataTable();

        
        Table table = new Table();
        GridView grid = new GridView();
        TableRow row = null;
        table.CellSpacing = 20;
        table.CellPadding = 10;
        table.GridLines = GridLines.Vertical;
        
        
        //Add the Headers
        row = new TableRow();
        for (int j = 0; j < dt2.Columns.Count; j++)
        {
            if (dt2.Columns[j].ColumnName == "EventName")
            {
                TableHeaderCell eventName = new TableHeaderCell();
                eventName.Text = "Event Name";
                row.Cells.Add(eventName);
            }
            if (dt2.Columns[j].ColumnName == "EventType")
            {
                TableHeaderCell eventType = new TableHeaderCell();
                eventType.Text = "Event Type";
                row.Cells.Add(eventType);
            }
            if (dt2.Columns[j].ColumnName == "EventDescription")
            {
                TableHeaderCell eventDescription = new TableHeaderCell();
                eventDescription.Text = dt2.Columns[j].ColumnName;
                row.Cells.Add(eventDescription);
            }
        }
        table.Rows.Add(row);

        //Add each row in the DataTable
        for (int i = 0; i < dt2.Rows.Count; i++)
        {
            row = new TableRow();
            // add the column for each row
            for (int j = 0; j < dt2.Columns.Count; j++)
            {
                System.Diagnostics.Debug.WriteLine(dt2.Columns[j].ColumnName);
                if (dt2.Columns[j].ColumnName == "EventName")
                {
                    TableCell textCell = new TableCell();
                    System.Diagnostics.Debug.WriteLine(dt2.Rows[i][j].ToString());
                    textCell.Text = dt2.Rows[i][j].ToString();
                    row.Cells.Add(textCell);

                }
                if (dt2.Columns[j].ColumnName == "EventType")
                {
                        TableCell textCell2 = new TableCell();
                        textCell2.Text = dt2.Rows[i][j].ToString();
                        row.Cells.Add(textCell2);
  
                }
                if (dt2.Columns[j].ColumnName == "EventDescription")
                {
                    TableCell textCell3 = new TableCell();
                    textCell3.Text = dt2.Rows[i][j].ToString();
                    row.Cells.Add(textCell3);
                }  
            }            

            // Add the TableRow to the Table
            table.Rows.Add(row);
        }
        // Add the the Table in the Form
        form1.Controls.Add(table);
    }

    //#endregion

    
    protected void btnAddEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.AddEvent.aspx");
    }
    protected void btnListView_Click(object sender, EventArgs e)
    {
        //button for listview not used yet
        GenerateTable();
        Calendar1.Visible = false;
    }

     //#region Generate SQL Server Database Table
    private DataTable CreateDataTable()
    {

        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        connection.Open();
        // need to validate that a user's info doesnt already exist before that info gets put into sql insert statement
        string cmdText = "select EventName, EventType, EventDescription from WBLEvent";
        // ^^convert to new table structure, we will need to edit this insert statement to show ALL general users
        SqlCommand cmd = new SqlCommand(cmdText, connection);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd); // read in data from query results
        adp.Fill(dt);

        return dt;
    }
    //#endregion

    protected void btnCalView_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCalendar.aspx");
    }
}
