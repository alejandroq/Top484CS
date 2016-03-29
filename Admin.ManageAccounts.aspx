<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.ManageAccounts.aspx.cs" Inherits="Admin_ManageAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <form id="form2" runat="server">
    <div>
        <h3>Manage Accounts Homepage</h3>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add New User" OnClick="btnAddUser_Click" />
        <asp:Button ID="Button2" runat="server" Text="Add New Event" OnClick="btnAddEvent_Click" />
        <asp:Button ID="Button3" runat="server" Text="View Master Calendar" OnClick="btnViewCalendar_Click" />
        <br />
        <br />
    </div>
    </form>

</asp:Content>
﻿

