<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Student.MyAccount.aspx.cs" Inherits="Student_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">



    <form id="form1" runat="server">
        <asp:Button ID="btnChangePassword" runat="server" OnClick="btnChangePassword_Click" Text="Change Your Password" /><br />
        <asp:Button ID="btnViewProfile" runat="server" Text="View Your Profile" OnClick="btnViewProfile_Click" /><br />
        <asp:Button ID="btnEditInfo" runat="server" Text="Edit Your Information" OnClick="btnEditInfo_Click" />
    </form>



</asp:Content>

