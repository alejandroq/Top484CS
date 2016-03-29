<%@ Page Title="" Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="Parent.EmailInstructor.aspx.cs" Inherits="Parent_EmailInstructor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <form id="form1" runat="server">
    <div>

        <h3>Email Instructor</h3>

        <asp:Label ID="lblEmailSubject" runat="server" Text="Subject: " CssClass="labels"><asp:TextBox ID="txtEmailSubject" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />

        <asp:Label ID="lblEmailDescription" runat="server" Text="Description: " CssClass="labels"></asp:Label><br /><asp:TextBox ID="txtEmailDescription" runat="server" TextMode="MultiLine" cssclass="textArea"></asp:TextBox><br />
        <asp:Button ID="btnSendEmail" runat="server" Text="Send" OnClick="btnSendEmail_Click" cssclass="buttons"/>


         </div>
    </form>
</asp:Content>
