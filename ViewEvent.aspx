<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewEvent.aspx.cs" Inherits="ViewEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Event Details</h3>
    <asp:Label ID="lblEventName" runat="server" Text="Event Name: "><asp:TextBox ID="txtEventName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblDate" runat="server" Text="Event Date: "></asp:Label><asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY HH:MM:SS AM/PM"></asp:TextBox><br />
        <asp:Label ID="lblElement" runat="server" Text="Element: ">
        <asp:DropDownList ID="ddlElement" runat="server">
            <asp:ListItem>MC</asp:ListItem>
            <asp:ListItem>DJ</asp:ListItem>
            <asp:ListItem>B-boy</asp:ListItem>
            <asp:ListItem>Art</asp:ListItem>
            <asp:ListItem>Knowledge of Self</asp:ListItem>
        </asp:DropDownList></asp:Label><br />
        <%--NEED TO FIGURE OUT HOW TO DISPLAY EVENT PHOTO SOMEWHERE--%>
        <asp:Label ID="lblLocation" runat="server" Text="Event Location: "><asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCName" runat="server" Text="Primary Contact Name: "><asp:TextBox ID="txtPCName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCEmail" runat="server" Text="Primary Contact E-mail: "><asp:TextBox ID="txtPCEmail" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCPhone" runat="server" Text="Primary Contact Phone #: "><asp:TextBox ID="txtPCPhone" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblDescription" runat="server" Text="Description: "></asp:Label><br /><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox><br />
        
    </div>
    </form>
</body>
</html>
