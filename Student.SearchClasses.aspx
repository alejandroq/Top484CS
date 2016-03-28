<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.SearchClasses.aspx.cs" Inherits="Student_SearchClasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="searchClassesCriteria" runat="server">
        <h3>Search Classes</h3>
        <input type="text" id="txtsearchClasses" runat="server" />
        <input type="button" id="btnSearchClasses" runat="server" />
        <label id="location" runat="server" text="Location:" >
            <asp:dropdownlist id="ddlLocations" runat="server" >
                <asp:ListItem id="foundation" runat="server">The Foundation (1525 Newton St NW)</asp:ListItem>
                <asp:ListItem id="spot" runat="server">The Spot (5200 Foote St NE)</asp:ListItem>
                <asp:ListItem id="capitalViewLibrary" runat="server">Capital View Library (5001 Central Ave SE)</asp:ListItem>
                <asp:ListItem id="mLKLibrary" runat="server">MLK Library (901 G St. NW)</asp:ListItem>
                <asp:ListItem id="shawLibrary" runat="server">Shaw Library (1630 7th St NW)</asp:ListItem>
                <asp:ListItem id="Mt Pleasant" runat="server">Mt Pleasant (3160 16th St NW)</asp:ListItem>
            </asp:dropdownlist></label>



    </div>


</asp:Content>

