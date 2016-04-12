<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.AddClass.aspx.cs" Inherits="Admin_AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

<form id="form1" runat="server">
    <div>
        <h3>New Class</h3>
        <asp:Label ID="lblCourseName" runat="server" Text="Course Name: " CssClass="label-body"><asp:TextBox ID="txtCourseName" runat="server" ></asp:TextBox></asp:Label><br />
        <br />

        <asp:Label ID="lblCourseID" runat="server" Text="Course ID: " CssClass="label-body"><asp:TextBox ID="txtCourseID" runat="server" ></asp:TextBox></asp:Label><br />

        <asp:Label ID ="lblCourseElement" runat ="server" Text ="Course Element:">
           <asp:DropDownList ID ="ddCourseElement" runat ="server">
               <asp:ListItem>--Select Element--</asp:ListItem>
               <asp:ListItem>MC</asp:ListItem> 
               <asp:ListItem>DJ</asp:ListItem>
               <asp:ListItem>BBOY</asp:ListItem>
               <asp:ListItem>Knowledge of Self</asp:ListItem>
               <asp:ListItem>Art</asp:ListItem>
               </asp:DropDownList>
          </asp:Label>
        <br />
        <asp:Label ID ="lblInstructor" runat ="server" Text ="Instructor: " CssClass="label-body">
           <asp:DropDownList ID ="ddInstrutor" runat ="server" DataTextField ="EmailAddress" DataSourceID ="srcInstructors">
                <asp:ListItem>--Select Instructor--</asp:ListItem>
           </asp:DropDownList>
        </asp:Label>
        <br />
        <asp:SqlDataSource
                    ID ="srcInstructors"
                    SelectCommand = "select EmailAddress from Staff where StaffType = 'Instructor' "    
                    ConnectionString="<%$ ConnectionStrings:ConString %>"
                    Runat="server" />

        <asp:Label ID ="lblIntern" runat ="server" Text ="Intern: " CssClass="label-body">
           <asp:DropDownList ID ="ddIntern" runat ="server">
                <asp:ListItem>--Select Intern--</asp:ListItem>
                <asp:ListItem>No Intern</asp:ListItem>
           </asp:DropDownList>
        </asp:Label>

        <%--<asp:SqlDataSource
                    ID ="srcInterns"
                    SelectCommand = "select EmailAddress from Staff where StaffType = 'Intern' "    
                    ConnectionString="<%$ ConnectionStrings:ConString %>"
                    Runat="server" />
        <br />--%>
        <br />

        <asp:Label ID ="lblCapacity" runat ="server" Text ="Capacity: " CssClass="label-body">
            <asp:Textbox ID ="txtCapacity" runat ="server" ></asp:Textbox>
        </asp:Label>
        <br />
        
        <asp:Label ID ="lblLocation" runat="server" Text ="Location: " CssClass="label-body">
            <asp:DropDownList ID ="ddLocation" runat ="server">
                <asp:ListItem>--Select Location--</asp:ListItem>
               <asp:ListItem>The Foundation @St Stephen’s Church D.C.</asp:ListItem> 
               <asp:ListItem>The Spot @The Riverside Center D.C.</asp:ListItem>
               <asp:ListItem>The Studio @ The Dr. Martin Luther King Jr. Memorial Library D.C.</asp:ListItem>
               <asp:ListItem>The Lab @ The Deanwood Recreation Center D.C.</asp:ListItem>
               </asp:DropDownList>
        </asp:Label>
        <br />

        <asp:Label ID ="lblSemester" runat ="server" Text ="Semester: " CssClass="label-body">
            <asp:DropDownList ID ="ddSemester" runat ="server" CssClass="fa-dropbox">
                <asp:ListItem>--Select Semester--</asp:ListItem>
               <asp:ListItem>Fall</asp:ListItem> 
               <asp:ListItem>Spring</asp:ListItem>
               <asp:ListItem>Summer</asp:ListItem>
               </asp:DropDownList>
        </asp:Label>
        <br />

        <asp:Label ID ="lblYear" runat="server" Text="Year: " CssClass="label-body">
            <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
        </asp:Label>
        <br />
        
        <asp:Label ID="lblWeekDay1" runat="server" Text="Days of the Week: " CssClass="label-body">
             <asp:DropDownList ID ="ddWeekDay1" runat ="server">
                <asp:ListItem>--Select Week Day--</asp:ListItem>
               <asp:ListItem>Monday</asp:ListItem> 
               <asp:ListItem>Tuesday</asp:ListItem>
               <asp:ListItem>Wednesday</asp:ListItem>
               <asp:ListItem>Thursday</asp:ListItem>
               <asp:ListItem>Friday</asp:ListItem>
               </asp:DropDownList>
            <%--<asp:DropDownList ID ="ddWeekDay2" runat ="server">
                <asp:ListItem>--Select Week Day 2--</asp:ListItem>
               <asp:ListItem>Monday</asp:ListItem> 
               <asp:ListItem>Tuesday</asp:ListItem>
               <asp:ListItem>Wednesday</asp:ListItem>
               <asp:ListItem>Thursday</asp:ListItem>
               <asp:ListItem>Friday</asp:ListItem>
               <asp:ListItem>Only Once a Week</asp:ListItem>
               </asp:DropDownList>--%>
        </asp:Label>
        <br />

        <asp:Label ID ="lblStartTime" runat="server" Text="Course Start Time: " CssClass="label-body">
            <asp:TextBox ID="txtStartTime" runat="server"></asp:TextBox>
        </asp:Label>

        <asp:Label ID ="lblEndTime" runat="server" Text="Course End Time: ">
            <asp:TextBox ID="txtEndTime" runat="server"></asp:TextBox>
        </asp:Label>
        <br />

        <asp:Label ID="lblLessonPlan" runat="server" Text="Lesson Plan: " CssClass="label-body">
            <asp:FileUpload ID="flLessonPlan" runat="server" />
        </asp:Label>
        <br />

        <asp:Label ID ="lblCourseDesc" runat="server" Text="Course Description: " >
        </asp:Label>
        <br />
            <asp:Textbox ID="txtCourseDes" runat="server" TextMode ="MultiLine" Width="400px" Height="200px"></asp:Textbox>

        <br />

        <asp:Button ID="btnAddClass" runat="server" Text="Add Class" OnClick="btnAddClass_Click" />
        
        
    </div>
    </form>







</asp:Content>

