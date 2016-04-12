<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="ViewClass.aspx.cs" Inherits="ViewClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <form id="form1" runat="server">
    <div>
        <h3>View Class</h3>
        <asp:Label ID="lblCourseName" runat="server" Text="Course Name: " CssClass="label-body"><asp:TextBox ID="txtCourseName" runat="server" ></asp:TextBox></asp:Label><br />
        <br />

        
        <asp:Label ID ="lblCourseElement" runat ="server" Text ="Course Element:">
           <asp:Textbox ID="txtCourseElement" runat="server"></asp:Textbox>
          </asp:Label>
        <br />

        <asp:Label ID ="lblInstructor" runat ="server" Text ="Instructor: " CssClass="label-body">
           <asp:Textbox ID ="txtInstructor" runat="server"></asp:Textbox>
            </asp:Label>

        <asp:Label ID ="lblEmail" runat="server" Text="Email: " >
            <asp:TextBox ID="txtEmail" runat="server" Width ="200 px"></asp:TextBox>
        </asp:Label>
      
        <br />

        
        <asp:Label ID ="lblLocation" runat="server" Text ="Location: " CssClass="label-body">
            <asp:TextBox ID ="txtLocation" runat ="server" Width ="200 px"></asp:TextBox>
        </asp:Label>
        <br />

        <asp:Label ID ="lblSemester" runat ="server" Text ="Semester: " CssClass="label-body">
            <asp:Textbox ID="txtSemester" runat="server"></asp:Textbox>
        </asp:Label>
        <br />

        
        <asp:Label ID="lblTime" runat="server" Text="Days of the Week: " CssClass="label-body">
             <asp:Textbox ID="txtTime" runat="server" Width ="200 px"></asp:Textbox>
        </asp:Label>
        <br />


        <asp:Label ID="lblLessonPlan" runat="server" Text="Lesson Plan: " CssClass="label-body">
            <%--<asp:FileUpload ID="flLessonPlan" runat="server" />--%>
        </asp:Label>
        <br />

        <asp:Label ID ="lblCourseDesc" runat="server" Text="Course Description: " >
        </asp:Label>
        <br />
            <asp:Textbox ID="txtCourseDes" runat="server" TextMode ="MultiLine" Width="400px" Height="200px"></asp:Textbox>

        <br />
  
        
    </div>
        <asp:Label ID ="lblPeriscope" runat="server" Text ="Link to Class Video on Perscope: "></asp:Label>
         <div id="periscope">
            <%--PERISCOPE--%>
             
          <script>window.twttr = function (t, e, r) { var n, i = t.getElementsByTagName(e)[0], w = window.twttr || {}; return t.getElementById(r) ? w : (n = t.createElement(e), n.id = r, n.src = "https://platform.twitter.com/widgets.js", i.parentNode.insertBefore(n, i), w._e = [], w.ready = function (t) { w._e.push(t) }, w) }(document, "script", "twitter-wjs")</script><a href="https://www.periscope.tv/daniel_4" class="periscope-on-air" data-size="large">@Daniel_4</a>
         
                 <br />
        </div>

        <iframe id="myIframe"
  width="600"
  height="450"
  frameborder="0" style="border:0" runat="server"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBZi6ob0guXfcA9OV2j1fKMhKDJIP7upHE
    &q=Words_Beats_Life_Inc" allowfullscreen>
    </iframe>
    </form>


</asp:Content>

