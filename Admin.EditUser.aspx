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
        <asp:Label ID="lblDOB" runat="server" Text="Date of Birth: "><asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblCellPhone" runat="server" Text="Cell Phone: "><asp:TextBox ID="txtCellPhone" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblHomePhone" runat="server" Text="Home Phone: "><asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblHomeAddress" runat="server" Text="Home Address: "><asp:TextBox ID="txtHomeAddress" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblCity" runat="server" Text="City: "><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblState" runat="server" Text="State: "><asp:TextBox ID="txtState" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblZip" runat="server" Text="Zip: "><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblGender" runat="server" Text="Gender: "><asp:TextBox ID="txtGender" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblRace" runat="server" Text="Race: "><asp:TextBox ID="txtRace" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblShirt" runat="server" Text="Shirt Size: "><asp:TextBox ID="txtShirt" runat="server"></asp:TextBox></asp:Label><br />
                
        <asp:Button ID="btnEditUser" runat="server" Text="Update User Information" OnClick="btnEditUser_Click" />
    </div>
    </form>
</body>
</html>

</asp:Content>

