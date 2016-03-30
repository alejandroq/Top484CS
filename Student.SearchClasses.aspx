﻿<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Student.SearchClasses.aspx.cs" Inherits="Student_SearchClasses2" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent1" Runat="Server">
<form id="form1" runat="server">
    <div>
        <h3>Manage Accounts Homepage</h3>
        <br />
        <asp:Button ID="btnSearch" runat="server" Text="Search for: " OnClick="btnAddUser_Click" /><asp:TextBox ID="txtSearch" runat="server"></asp:TextBox><br/>
        <asp:Button ID="btnEnroll" runat="server" Text="Enroll!" OnClick="btnEnroll_Click" />
        <asp:Button ID="btnViewCalendar" runat="server" Text="View Master Calendar" OnClick="btnViewCalendar_Click" /><br />
        <asp:Label ID="lblElement" runat="server" Text="Select Element:  "></asp:Label>
        <asp:DropDownList ID="ddlElementType" runat="server" AutoPostBack="true">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>DJ</asp:ListItem>
            <asp:ListItem>MC</asp:ListItem>
            <asp:ListItem>BBOY</asp:ListItem>
            <asp:ListItem>Art</asp:ListItem>
            <asp:ListItem>Knowledge of Self</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblSortBy" runat="server" Text="Sort By:  "></asp:Label>
        <asp:DropDownList ID="ddlSortBy" runat="server" AutoPostBack="true">
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Instructor</asp:ListItem>
            <asp:ListItem>Date (Soonest)</asp:ListItem>
            <asp:ListItem>Location</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
    </div>
    </form>
</asp:Content>


