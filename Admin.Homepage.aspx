 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.Homepage.aspx.cs" Inherits="Admin_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

         <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title></title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <link rel="apple-touch-icon" href="apple-touch-icon.png"/>
        <!-- Place favicon.ico in the root directory -->

        <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css"/>
        <!-- Raleyway Font -->

        <link rel="stylesheet" href="css/normalize.css"/>
        <link rel="stylesheet" href="css/jquery-ui.min.css"/>
        <link rel="stylesheet" href="css/main.css"/>
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Menu -->
		<p class="pre-menu">Menu</p>
		<ul id="menu">
			<li><a href="Admin.ManageAccounts.aspx">Manage Accounts</a>
				<ul>
					<li>Quick Add</li>
				</ul>
			</li>
			<li>Manage Content
                <ul>
                    <li><a href="Admin.AddContent.aspx">Add Content</a> </li>
                    </ul>
                </li>
			<li>Manage Events
				<ul>
					<li><a href="Admin.AddEvent.aspx">Add Event</a> </li>
				</ul>
			</li>
			<li>Manage Inventory
				<ul>
					<li>Quick Add</li>
				</ul>
			</li>
			<li>View Dashboard</li>
		</ul>

    <!--Main body for administrator homepage -->
    <h3>Administrator Homepage</h3>


</asp:Content>

