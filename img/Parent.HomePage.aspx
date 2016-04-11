<%@ Page Title="" Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="Parent.HomePage.aspx.cs" Inherits="Parent_HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    
    <h3>Homepage</h3>

    <!-- Are we changing this to a drop down Ledesma?-->
            <p class="pre-menu">Students</p>
		<ul class="menu">
            <asp:RadioButtonList ID="rblStudent" runat="server"></asp:RadioButtonList>	
            
                
		</ul>
    </form>

</asp:Content>

