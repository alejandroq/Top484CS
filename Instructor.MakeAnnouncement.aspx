﻿<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMasterPage.master" AutoEventWireup="true"  CodeFile="Instructor.MakeAnnouncement.aspx.cs" Inherits="Instructor_MakeAnnouncement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

        <form id="form1" runat="server">
    <div>
       <b><u><asp:Label ID="lblAnnouncement" runat="server" Text="Create Announcement"></asp:Label></u></b><br />
        <asp:Label ID="lblRecipient" runat="server" Text="Choose Recipients: ">
            <asp:DropDownList ID="ddlCourses" runat="server">       
            </asp:DropDownList></asp:Label><br />
        <asp:Label ID="lblHeader" runat="server" Text="Announcement Header: ">
            <asp:TextBox ID="txtHeader" runat="server" MaxLength="50"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblAnnounceText" runat="server" Text="Announcement Text: ">
            <asp:TextBox ID="txtText" runat="server"></asp:TextBox></asp:Label><br />
        
        <asp:Button ID="btnSendAnnounce" runat="server" Text="Send Announcment" OnClick="btnSendAnnounce_Click" /><br />            
    </div>
    </form>

</asp:Content>

