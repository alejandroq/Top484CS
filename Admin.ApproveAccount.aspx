<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.ApproveAccount.aspx.cs" Inherits="Admin_ApproveAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

        <form id="form1" runat="server">
    <div>
       <b><u><asp:Label ID="lblApplicantInfo" runat="server" Text="Applicant Information"></asp:Label></u></b><br />
        <asp:Label ID="lblfName" runat="server" Text="First Name: "><asp:TextBox ID="txtfName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lbllName" runat="server" Text="Last Name: "><asp:TextBox ID="txtlName" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblEmail" runat="server" Text="E-mail Address: "><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblDOB" runat="server" Text="Date of Birth: "><asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblCellPhone" runat="server" Text="Cell Phone: "><asp:TextBox ID="txtCellPhone" runat="server"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblUserType" runat="server" Text="Requested User Type: "><asp:TextBox ID="txtUserType" runat="server"></asp:TextBox></asp:Label><br />

        <asp:Button ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click" /><br />
        <asp:Button ID="btnDeny" runat="server" Text="Deny" OnClick="btnDeny_Click" />                
    </div>
    </form>

</asp:Content>

