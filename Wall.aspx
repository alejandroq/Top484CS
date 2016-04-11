<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Wall.aspx.cs" Inherits="Wall" %>


<asp:Content ID="Content2" ContentPlaceHolderID="foobar" Runat="Server">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foo" Runat="Server">
    
    
    
    <asp:Panel ID="adminPanel" runat="server">
        <div id="adminPanel1" runat="server">
        <li><a href="Admin.ManageAccounts.aspx">Manage Accounts</a>
            <ul>
                <li><a href="Admin.AddUser.aspx">Add New User</a></li>
            </ul>
        </li>
        <li><a href="Admin.ManageContent.aspx">Manage Content</a> 
            <ul>
                <li><a href="Admin.AddContent.aspx">Add Content</a></li>
                </ul>
            </li>
        <li><a href="Admin.ManageEvents.aspx">Manage Events</a> 
            <ul>
                <li><a href="Admin.AddEvent.aspx">Add Event</a></li>
            </ul>
        </li>
        <li>Manage Inventory 
            <ul>
                <li>Add Item</li>
            </ul>
        </li>
        <li><a href="ViewCalendar.aspx">View Calendar</a></li>
        <li><a href="Admin.Dashboard.aspx">View Dashboard</a></li>
            </div>
    </asp:Panel>

    <asp:Panel ID="studentPanel" runat="server">
      <div id="studentPanel1" runat="server">
      <li>View Portfolio</li> <!-- either change this to view your profile or link to pathbrite TBD-->
      <li><a href="ViewCalendar.aspx">View Calendar</a></li>
      <li><a href="Student.SearchClasses.aspx">Search Classes</a></li>
      <li><a href="Student.EvaluationHomePage.aspx">View Your Evaluations</a></li>
      <li><a href="Student.ClassEvaluation.aspx">Evaluate Class</a></li>
      </div>
    </asp:Panel>

     <asp:Panel ID="instructorPanel" runat="server">
         <div id="instructorPanel1" runat="server">
        <li><a href="Instructor.TakeAttendance.aspx">Take Attendance</a></li>
        <li><a href="Instructor.SubmitLessonPlan.aspx">Submit Lesson Plan</a></li>
        <li><a href="Instructor.StudentEvaluationHomePage.aspx">Submit Student Evaluations</a></li>
        <li><a href="Instructor.EvaluationHomePage.aspx">View Your Evaluations</a></li>
        <li><a href="ViewCalendar.aspx">View Calendar</a> </li>
         </div>
    </asp:Panel>

    <asp:Panel ID="parentPanel" runat="server">
        <div id="parentPanel1" runat="server">
      <li><a href="Parent.ViewStudentContent.aspx">View Student Content</a></li>
      <li><a href="Parent.EvaluationHomePage.aspx">View Students' Evaluations</a></li>
      <li><a href="Parent.EncouragementLetter.aspx">Write a Letter of Encouragement</a></li>
      <li><a href="Parent.EmailInstructor.aspx">Email Instructor</a></li>
      <li><a href="ViewCalendar.aspx">View Calendar</a></li>
            </div>
    </asp:Panel>

     <asp:Panel ID="cipherPanel" runat="server" >
         <div id="cipherPanel1" runat="server">
      <li><a href="Cipher.ViewStudentProfiles.aspx">View Student Profiles</a> </li>
      <li><a href="Cipher.MakeADonation.aspx">Make a Donation</a></li>
      <li><a href="ViewCalendar.aspx">View Calendar</a></li>
         </div>
    </asp:Panel>


</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="body" Runat="Server">



       
    

    <!-- COMMUNITY WALL -->
	    	<h3 class="ten columns">Community Wall</h3>
	    	<div id="wall" class="ten columns">
	    		<img src="img/BBoyBridge.jpg"
		            alt="WBL BBoy"
		            title="WBL BBoy"
		            data-desc="WBL BBoy 101"
		            data-category="image category here"
		            data-fullsrc="img/img.jpg"
		        />
		        <img src="img/chess.jpg"
		            alt="Andrew W. Chess"
		            title="Chess by Andrew W."
		            data-desc="12 year old chess player from DC"
		            data-category="image category here"
		            data-fullsrc="img/img.jpg"
		        /> 
		        <img src="img/simon.jpg"
		            alt="Grafitti"
		            title="Grafitti Story"
		            data-desc="Grafitti description"
		            data-category="image category here"
		            data-fullsrc="img/img.jpg"
		        /> 
		        <img src="img/GB.jpg"
		            alt="Gabriel Benn Photography"
		            title="Gabriel Benn Photography"
		            data-desc="Photography 101"
		            data-category="image category here"
		            data-fullsrc="img/img.jpg"
		        />
		        <img src="img/DJpic.jpg"
		            alt="DJ"
		            title="DJ by Javier G."
		            data-desc="DJ 101"
		            data-category="image category here"
		            data-fullsrc="img/img.jpg"
		        /> 
		        <img src="img/beat_production.jpg"
		            alt="Beat Production"
		            title="Beat Production"
		            data-desc="some description"
		            data-category="image category here"
		            data-fullsrc="img/img.jpg"
		        />  

    		</div>
    		<!-- END COMMUNITY WALL -->

</asp:Content>


