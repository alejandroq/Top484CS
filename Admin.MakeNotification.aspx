<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true"  CodeFile="Admin.MakeNotification.aspx.cs" Inherits="Admin_MakeNotification" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

        <form id="form1" runat="server">
    <div>
       <b><u><asp:Label ID="lblAnnouncement" runat="server" Text="Create Announcement"></asp:Label></u></b><br />
        <asp:Label ID="lblRecipient" runat="server" Text="Choose Recipients: ">
            <asp:DropDownList ID="ddlUser" runat="server">
                <asp:ListItem Value="0" Text="Please Select"/>
                <asp:ListItem Value="GeneralUser" Text="All"/>
                <asp:ListItem Value="Administrator" Text="Administrators"/>
                <asp:ListItem Value="Staff" Text="Staff"/>
                <asp:ListItem Value="Student" Text="Student"/>
                <asp:ListItem Value="Cipher" Text="Cipher"/>
                <asp:ListItem Value="Parent" Text="Parents"/>        
            </asp:DropDownList></asp:Label><br />
        <asp:Label ID="lblHeader" runat="server" Text="Announcement Header: ">
            <asp:TextBox ID="txtHeader" runat="server" MaxLength="50"></asp:TextBox></asp:Label><br />
        <asp:Label ID="lblAnnounceText" runat="server" Text="Announcement Text: ">
            <asp:TextBox ID="txtText" runat="server"></asp:TextBox></asp:Label><br />
        
        <asp:Button ID="btnSendAnnounce" runat="server" Text="Send Announcment" OnClick="btnSend_Click" /><br />      
        
        <br />
        <br />
        <b><u><asp:Label ID="lblEmail" runat="server" Text="Send Weekly Email"></asp:Label></u></b><br />
        <asp:Label ID="lblEmailRecipients" runat="server" Text="Choose Recipients: ">
            <asp:DropDownList ID="ddlEmail" runat="server">
                <asp:ListItem Value="0" Text="Please Select"/>
                <asp:ListItem Value="GeneralUser" Text="All"/>
                <asp:ListItem Value="Administrator" Text="Administrators"/>
                <asp:ListItem Value="Staff" Text="Staff"/>
                <asp:ListItem Value="Student" Text="Student"/>
                <asp:ListItem Value="Cipher" Text="Cipher"/>
                <asp:ListItem Value="Parent" Text="Parents"/>        
            </asp:DropDownList></asp:Label><br />
        <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" /><br />         
    </div>
    </form>

</asp:Content>
