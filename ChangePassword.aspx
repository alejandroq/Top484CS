<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email: "><asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox></asp:Label>
        <br />
        <asp:Label ID="lblNewPass" runat="server" Text="New Password: "><asp:TextBox ID="txtNewPass" runat="server" TextMode="Password"></asp:TextBox></asp:Label>
        <br />
        <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password: "><asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox></asp:Label>
        <br />
        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click" />
    </div>
    </form>
</body>
</html>
