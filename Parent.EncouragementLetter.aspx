<%@ Page Title="" Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="Parent.EncouragementLetter.aspx.cs" Inherits="Parent_EncouragementLetter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <form id="form1" runat="server">
    <div>

        <h3>Send a Letter of Encouragement to Words Beats & Life Inc.</h3>

        <asp:Label runat="server" Text="Your Childs Name"/><asp:DropDownList ID="ddlStudent" runat="server"/>

        <asp:Label ID="lblLeterUpload" runat="server" Text="Upload a File: " CssClass="labels"><asp:FileUpload ID="flLetter" runat="server" /></asp:Label><br />
    
        <asp:Label ID="lblLetterSubject" runat="server" Text="Subject: " CssClass="labels"><asp:TextBox ID="txtLetterSubject" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />

        <asp:Label ID="lblLetterDescription" runat="server" Text="Description: " CssClass="labels"></asp:Label><br /><asp:TextBox ID="txtLetterDescription" runat="server" TextMode="MultiLine" cssclass="textArea"></asp:TextBox><br />
        <asp:Button ID="btnSendLetter" runat="server" Text="Send Letter" OnClick="btnSendLetter_Click" cssclass="buttons"/>


         </div>
    </form>
</asp:Content>

