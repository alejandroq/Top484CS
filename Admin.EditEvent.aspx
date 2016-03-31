<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.EditEvent.aspx.cs" Inherits="Admin_EditEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Event Details</h3>
    <asp:Label ID="lblEventName" runat="server" Text="Event Name: "><asp:TextBox ID="txtEventName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblDate" runat="server" Text="Event Date: "></asp:Label><asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY HH:MM:SS AM/PM"></asp:TextBox><asp:Button ID="btnDate" runat="server" Text="Select Date" OnClick="btnDate_Click" />
        <asp:Calendar ID="cldEditEvent" runat="server" OnSelectionChanged="cldEditEvent_SelectionChanged" Visible="False">
        </asp:Calendar><br />
        <asp:Label ID="lblElement" runat="server" Text="Element: ">
        <asp:DropDownList ID="ddlElement" runat="server">
            <asp:ListItem>Class</asp:ListItem>
            <asp:ListItem>Fundraiser</asp:ListItem>
            <asp:ListItem>Service</asp:ListItem>
            <asp:ListItem>Jam Session</asp:ListItem>
            <asp:ListItem>Showcase</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList></asp:Label><br />
        <%--NEED TO FIGURE OUT HOW TO DISPLAY EVENT PHOTO SOMEWHERE--%>
        <asp:Label ID="lblLocation" runat="server" Text="Event Location: "><asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCName" runat="server" Text="Primary Contact Name: "><asp:TextBox ID="txtPCName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCEmail" runat="server" Text="Primary Contact E-mail: "><asp:TextBox ID="txtPCEmail" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCPhone" runat="server" Text="Primary Contact Phone #: "><asp:TextBox ID="txtPCPhone" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblDescription" runat="server" Text="Description: "></asp:Label><br /><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="400px" Height="200px"></asp:TextBox><br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update This Event" OnClick="btnUpdate_Click" />
    </div>
    </form>
</body>
</html>

</asp:Content>

