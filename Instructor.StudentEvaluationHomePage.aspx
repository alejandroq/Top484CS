<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMasterPage.master" AutoEventWireup="true" CodeFile="Instructor.StudentEvaluationHomePage.aspx.cs" Inherits="Instructor_StudentEvaluationHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    
        <form id="form1" runat="server">
    <div>

        <h3>Student Evaluation Homepage</h3>
            
        <asp:Label ID="lblAClass" runat="server" Text="Class: " CssClass="labels"></asp:Label>
            <asp:DropDownList ID="ddlClasses" runat="server" cssClass="dropdowns">
                <asp:ListItem>
                    Daniel---
                </asp:ListItem>
            </asp:DropDownList><br />
        <p>daniel same as the others populate with class list based on profession and then based on the drop down have the table below populate with the students names</p>

        <table id="attendance" runat="server">
            <tr>
                <td>
                    (we should put a check or the date or something here once they have submited the evaluation for this student)
                </td>
                <td>
                    Student Name Goes here populated from the database
                </td>
                <td>
                    RYAN LINK BUTTON HERE to take them to the Instructor.StudentEvaluation.aspx page (make sure to pass session variable for the student and autopopulate the field)
                </td>
            </tr>
                        <tr>
                <td>
                    (we should put a check or the date or something here once they have submited the evaluation for this student)
                </td>
                <td>
                    Student Name Goes here populated from the database
                </td>
                <td>
                    RYAN LINK BUTTON HERE to take them to the Instructor.StudentEvaluation.aspx page (make sure to pass session variable for the student and autopopulate the field)
                </td>
            </tr>

        </table>


        <asp:Button ID="btnSubmitEvaluation" runat="server" Text="Submit" OnClick="btnSubmitEvaluation_Click" cssclass="buttons"/>


         </div>
    </form>


</asp:Content>

