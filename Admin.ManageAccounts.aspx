﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.ManageAccounts.aspx.cs" Inherits="Admin_ManageAccounts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Manage Accounts Homepage</h3>
        <br />
        <asp:Button ID="btnAddUser" runat="server" Text="Add New User" OnClick="btnAddUser_Click" />
        <asp:Button ID="btnAddEvent" runat="server" Text="Add New Event" OnClick="btnAddEvent_Click" />
        <asp:Button ID="btnViewCalendar" runat="server" Text="View Master Calendar" OnClick="btnViewCalendar_Click" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
