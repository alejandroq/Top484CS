<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.ManageAccounts.aspx.cs" Inherits="Admin_ManageAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

     <form id="form1" runat="server">
    <div>
        <h3>Manage Accounts HomePage</h3>
        <asp:Button ID="btnAddUser" runat="server" Text="Add New User" OnClick="btnAddUser_Click" />
        <asp:Button ID="btnExport" runat="server" Text="Export This Table to Excel" OnClick="btnExport_Click" />
        <asp:Label ID="lblMemberType" runat="server" Text="Select Member Type:  "></asp:Label>
        <asp:DropDownList ID="ddlMemberType" runat="server" AutoPostBack="true">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Applicants</asp:ListItem>
            <asp:ListItem>Students</asp:ListItem>
            <asp:ListItem>Parents</asp:ListItem>
            <asp:ListItem>Instructors / Interns</asp:ListItem>
            <asp:ListItem>Ciphers</asp:ListItem>
            <asp:ListItem>Administrators</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblSortBy" runat="server" Text="Sort By:  "></asp:Label>
        <asp:DropDownList ID="ddlSortBy" runat="server" AutoPostBack="true">
            <asp:ListItem>Last Name</asp:ListItem>
            <asp:ListItem>First Name</asp:ListItem>
            <asp:ListItem>Member Type</asp:ListItem>
        </asp:DropDownList>
        <br />
    </div>
    </form>


</asp:Content>

