<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblForgotEmail" runat="server" Text="Email Address: "></asp:Label>
        <asp:TextBox ID="txtForgotEmail" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnForgotEmail" runat="server" Text="Send Reset Email" OnClick="btnForgotEmail_Click" />
    </div>
    </form>
</body>
</html>
