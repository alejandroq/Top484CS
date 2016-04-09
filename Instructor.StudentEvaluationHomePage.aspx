<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMasterPage.master" AutoEventWireup="true" CodeFile="Instructor.StudentEvaluationHomePage.aspx.cs" Inherits="Instructor_StudentEvaluationHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    
    <form id="form1" runat="server">
        <div>

            <h3>Student Evaluation Homepage</h3>
            
            <asp:Label ID="lblAClass" runat="server" Text="Class: " CssClass="labels"></asp:Label>
                <asp:DropDownList ID="ddlClasses" runat="server" cssClass="dropdowns" AutoPostBack="true">
                    <asp:ListItem>--Select a Class--</asp:ListItem>
                </asp:DropDownList><br />
        </div>
    </form>


</asp:Content>

