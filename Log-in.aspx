<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log-in.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Words Beats and Life, Inc.</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRegister" runat="server" Text="Select membership type and register account Below"></asp:Label><br />
            <asp:Label ID="lblfName" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="txtfName" runat="server"></asp:TextBox><br />
            <asp:Label ID="lbllName" runat="server" Text="Last Name: "></asp:Label>
            <asp:TextBox ID="txtlName" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblEmail" runat="server" Text="E-mail Address: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />   <%--changed textmode from 'Single Line' to 'Password'--%>
            <asp:Label ID="lblPassword2" runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
            <br/>
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnCreateProfile_Click" />
        </div>
        <br />
        <div>
            <asp:Label ID="lblLogin" runat="server" Text="Login Below"></asp:Label><br />
            <asp:Label ID="lblUserName" runat="server" Text="User Name (email)"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPW" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPW" runat="server" TextMode="Password"></asp:TextBox><br /> <%--changed textmode to password--%>
            <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
        </div>
       
    </form>
</body>
</html>
