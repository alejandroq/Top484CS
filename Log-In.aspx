<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log-In.aspx.cs" Inherits="Log_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate"></asp:Login>
    <asp:LinkButton ID="lnkForgotPassword" runat="server" OnClick="lnkForgotPassword_Click">Forgot Password?</asp:LinkButton><br />
    <asp:LinkButton ID="lnkSignUp" runat="server" OnClick="lnkSignUp_Click">New to the community? Sign up here!</asp:LinkButton>

    </div>
        
    </form>
</body>
</html>
