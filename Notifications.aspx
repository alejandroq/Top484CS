<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="foobar" Runat="Server">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foo" Runat="Server">
    

    <form id="form1" runat="server" >

        <h1 id="notifHeader" runat="server"></h1>
        <div id="generalNotif" runat="server">
            <br/>
            <label id="lblDate" runat="server"></label>
            <textarea id="txtNotif" runat="server" cols="20" rows="5"></textarea>
        </div>
    </form>
    </asp:Content>