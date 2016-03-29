<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCalendar.aspx.cs" Inherits="ViewCalendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <hr />
    <asp:Button ID="btnAddEvent" runat="server" Text="Add New Event" OnClick="btnAddEvent_Click" />
    <asp:Calendar ID="Calendar1" runat="server" Height="1000px" 
        ondayrender="Calendar1_DayRender" Width="1500px" DayHeaderStyle-Font-Bold="true" Caption="Words Beats and Life Master Calendar" ShowGridLines="true" select></asp:Calendar>

    </div>
    </form>
</body>
</html>
