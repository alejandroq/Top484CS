<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.AddContent.aspx.cs" Inherits="Admin_AddContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Add New Content</h3>
        <asp:Label ID="lblTitle" runat="server" Text="Title: "><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblCreator" runat="server" Text="Student: "><asp:DropDownList ID="ddlStudent" runat="server" DataSourceID="StudentList" DataTextField="EmailAddress" DataValueField="EmailAddress"></asp:DropDownList></asp:Label><br />
        <asp:SqlDataSource ID="StudentList" runat="server" ConnectionString="<%$ ConnectionStrings:WBLDBConnectionString %>" SelectCommand="SELECT [EmailAddress] FROM [Student] ORDER BY [EmailAddress]"></asp:SqlDataSource>
        <asp:Label ID="lblElement" runat="server" Text="Element: "><asp:DropDownList ID="ddlElement" runat="server">
            <asp:ListItem>MC</asp:ListItem>
            <asp:ListItem>DJ</asp:ListItem>
            <asp:ListItem>B-boy</asp:ListItem>
            <asp:ListItem>Art</asp:ListItem>
            <asp:ListItem>Knowledge of Self</asp:ListItem>
        </asp:DropDownList></asp:Label><br />
        <asp:FileUpload ID="flAdminAddContent" runat="server" /><br />
        <asp:CheckBox ID="ckCommunityWall" runat="server" Text="Add this file to Community Wall" /><br />
        <asp:Label ID="lblDescription" runat="server" Text="Description: "></asp:Label><br /><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload File" OnClick="btnUpload_Click" />
        
    </div>
    </form>
</body>
</html>
