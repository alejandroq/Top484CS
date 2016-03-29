<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.SearchClasses.aspx.cs" Inherits="Student_SearchClasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="studentSearchClasses" runat="server">
    
        <div id="searchClassesCriteria" runat="server">
        <h3>Search Classes</h3>
        <input type="text" id="txtsearchClasses" runat="server" />
        <asp:Button type="button" id="btnSearchClasses" runat="server" Text="Search"/>
        <br />
            <!-- Location Drop down search criteria -->
            <asp:label id="lblLocation" runat="server" text="Location:" ></asp:label>
            <asp:dropdownlist id="ddlLocations" runat="server" >
                <asp:ListItem id="foundation" runat="server">The Foundation (1525 Newton St NW)</asp:ListItem>
                <asp:ListItem id="spot" runat="server">The Spot (5200 Foote St NE)</asp:ListItem>
                <asp:ListItem id="capitalViewLibrary" runat="server">Capital View Library (5001 Central Ave SE)</asp:ListItem>
                <asp:ListItem id="mLKLibrary" runat="server">MLK Library (901 G St. NW)</asp:ListItem>
                <asp:ListItem id="shawLibrary" runat="server">Shaw Library (1630 7th St NW)</asp:ListItem>
                <asp:ListItem id="mtPleasant" runat="server">Mt Pleasant (3160 16th St NW)</asp:ListItem>
            </asp:dropdownlist>
        
            <!-- Element Drop down search criteria -->
            <asp:label id="lblElement" runat="server" text="Hip Hop Element:" ></asp:label>
            <asp:dropdownlist id="ddlElement" runat="server" >
                <asp:ListItem id="liBBoy" runat="server">BBoy</asp:ListItem>
                <asp:ListItem id="liMCing" runat="server">MC</asp:ListItem>
                <asp:ListItem id="liDj" runat="server">DJ</asp:ListItem>
                <asp:ListItem id="liGrifitti" runat="server">Graffiti</asp:ListItem>
                <asp:ListItem id="liKnowledge" runat="server">Knowledge of Self</asp:ListItem>
            </asp:dropdownlist>

            <!-- Teacher Drop down search criteria - should be populated from the database -->
            <asp:label id="lblinstructor" runat="server" text="Instructor:" ></asp:label>
            <asp:dropdownlist id="ddlInstructor" runat="server" >
                <asp:ListItem id="liInstructor1" runat="server">Instructor 1</asp:ListItem>
            </asp:dropdownlist>

            <!-- class display table -->
            <section class="container">
            <table class="u-full-width listView">
				<thead>
					<tr>
						<th>Class Title</th>
                        <th>Element</th>
						<th>Description</th>
						<th>Enroll</th>
						<th> <!-- Intentionally Left Blank--> </th>
					</tr>
				</thead>
				<tbody>
					<tr id="row1" runat="server">
						<td>BB101</td>
						<td>BBoying</td>
                        <td>Learn to BBoy</td>
						<td><asp:CheckBox ID="CheckBox1" runat="server"/></td>
						<td class="control"><a>Down in the DM</a></td>
                        
					</tr>
					<tr>
						<td>MC101</td>
						<td>MCing</td>
                        <td>Learn to MC</td>
						<td><asp:CheckBox ID="ckEnroll" runat="server" /></td>
						<td class="control"><a>I love her posts on the BM</a></td>
					</tr>
				</tbody>
			</table>
                </section>

            <div id="lessonPlan1" runat="server">

                        </div>

            <asp:Button ID="btnEnrollInClasses" runat="server" Text="Enroll" />

         </div>

        </form>

</asp:Content>

