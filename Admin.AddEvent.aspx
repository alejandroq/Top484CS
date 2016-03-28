<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.AddEvent.aspx.cs" Inherits="Admin_AddEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>New Event</h3>
        <asp:Label ID="lblEventName" runat="server" Text="Event Name: "><asp:TextBox ID="txtEventName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblDate" runat="server" Text="Event Date: "></asp:Label><asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY HH:MM:SS AM/PM"></asp:TextBox><asp:Button ID="btnDate" runat="server" Text="Select Date" OnClick="btnDate_Click" />
        <asp:Calendar ID="cldNewEvent" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="cldNewEvent_SelectionChanged" Visible="False" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar><br />
        <asp:Label ID="lblElement" runat="server" Text="Element: ">
        <asp:DropDownList ID="ddlElement" runat="server">
            <asp:ListItem>MC</asp:ListItem>
            <asp:ListItem>DJ</asp:ListItem>
            <asp:ListItem>B-boy</asp:ListItem>
            <asp:ListItem>Art</asp:ListItem>
            <asp:ListItem>Knowledge of Self</asp:ListItem>
        </asp:DropDownList></asp:Label><br />
        <asp:Label ID="lblPhoto" runat="server" Text="Upload Photo: "><asp:FileUpload ID="flEventPhoto" runat="server" /></asp:Label><br />
        <asp:Label ID="lblLocation" runat="server" Text="Event Location: "><asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCName" runat="server" Text="Primary Contact Name: "><asp:TextBox ID="txtPCName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCEmail" runat="server" Text="Primary Contact E-mail: "><asp:TextBox ID="txtPCEmail" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblPCPhone" runat="server" Text="Primary Contact Phone #: "><asp:TextBox ID="txtPCPhone" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblDescription" runat="server" Text="Description: "></asp:Label><br /><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox><br />
        <asp:Button ID="btnAddEvent" runat="server" Text="Add Event: " OnClick="btnAddEvent_Click" />
    </div>
    </form>
</body>
</html>
