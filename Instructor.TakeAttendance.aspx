<%@ Page Title="" Language="C#" MasterPageFile="InstructorMasterPage.master" AutoEventWireup="true" CodeFile="Instructor.TakeAttendance.aspx.cs" Inherits="Instructor_TakeAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">


        <form id="form1" runat="server">
            <div>
                <h3>Class Attendance</h3>
                <asp:Label ID="lblAClass" runat="server" Text="Class: " CssClass="labels"></asp:Label>
                <asp:DropDownList ID="ddlClasses" runat="server" cssClass="dropdowns" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName" AutoPostBack="True" OnSelectedIndexChanged="ListDropDown_Change">
                    <asp:ListItem id="list1" runat="server">
                    Populate items from the database
                </asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT [CourseName] FROM [Course] ORDER BY [CourseName]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="btnSubmitAttendance" runat="server" Text="Submit" OnClick="btnSubmitAttendance_Click" cssclass="buttons"/>
            </div>
        </form>

</asp:Content>

