<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMasterPage.master" AutoEventWireup="true" CodeFile="Instructor.TakeAttendance.aspx.cs" Inherits="Instructor_TakeAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">


        <form id="form1" runat="server">
    <div>

        <h3>Class Attendance</h3>
            
        <asp:Label ID="lblAClass" runat="server" Text="Class: " CssClass="labels">
            <asp:DropDownList ID="ddlClasses" runat="server" cssClass="dropdowns">
                <asp:ListItem id="list1" runat="server">
                    Populate items from the database
                </asp:ListItem>
            </asp:DropDownList></asp:Label><br />

        <table id="attendance" runat="server">
            <tr>
                <td>
                    <asp:CheckBox ID="ckstudent1" runat ="server"/>
                </td>
                <td>
                    Student Name Goes here populated from the database
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="ckStudent2" runat ="server"/>
                </td>
                <td>
                    Student Name Goes here populated from the database
                </td>
            </tr>

        </table>


        <asp:Button ID="btnSubmitAttendance" runat="server" Text="Submit" OnClick="btnSubmitAttendance_Click" cssclass="buttons"/>


         </div>
    </form>

</asp:Content>

