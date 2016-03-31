<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.EditUser.aspx.cs" Inherits="Admin_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Edit User Details, click update to finalize changes</h3>
        <asp:Label ID="lblEmail" runat="server" Text="E-mail Address: "><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></asp:Label><br />
        <br />
        <asp:Label ID="lblfName" runat="server" Text="First Name: "><asp:TextBox ID="txtfName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lbllName" runat="server" Text="Last Name: "><asp:TextBox ID="txtlName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Button ID="btnEditUser" runat="server" Text="Update User Information" OnClick="btnEditUser_Click" />
    </div>
    </form>
</body>
</html>

</asp:Content>

