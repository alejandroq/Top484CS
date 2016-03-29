<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.AddUser.aspx.cs" Inherits="Admin_AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <form id="form1" runat="server">
    <div id="userInfo">
            
            <!-- General user form information -->
            <div id="allInfo" runat="server">
                <h3>Enter New User Information</h3>
                        <asp:Label ID="lblfName" runat="server" Text="First Name: " CssClass="labels"><asp:TextBox ID="txtfName" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lbllName" runat="server" Text="Last Name: " CssClass="labels"><asp:TextBox ID="txtlName" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblEmail" runat="server" Text="E-mail Address: " CssClass="labels"><asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblPassword" runat="server" Text="Password: " CssClass="labels"><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblPassword2" runat="server" Text="Confirm Password: " CssClass="labels"><asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox></asp:Label><br/>
                        <asp:Label ID="lblDOB" runat="server" Text="Date of Birth: " CssClass="labels"><asp:TextBox ID="txtDOB" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblAddress" runat="server" Text="Address: " CssClass="labels"><asp:TextBox ID="txtAddress" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblCity" runat="server" Text="City: " CssClass="labels"><asp:TextBox ID="txtCity" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblState" runat="server" Text="State: " CssClass="labels"><asp:TextBox ID="txtState" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblZip" runat="server" Text="Zip: " CssClass="labels"><asp:TextBox ID="txtZip" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblGender" runat="server" Text="Gender: " CssClass="labels"></asp:Label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="dropdowns">
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Trans/Transgender</asp:ListItem>
                                <asp:ListItem>Genderqueer</asp:ListItem>
                                <asp:ListItem>Prefer not to say</asp:ListItem>
                            </asp:DropDownList><br/>
      
                        <asp:Label ID="lblHome" runat="server" Text="Home Phone #: " CssClass="labels"><asp:TextBox ID="txtHome" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblCell" runat="server" Text="Cell Phone #: " CssClass="labels"><asp:TextBox ID="txtCell" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                <asp:Label ID="lblRace" runat="server" Text="Race: " CssClass="labels"></asp:Label><br />
                        <asp:RadioButton ID="rdoAmIndian" runat="server" Text="American India or Alaskan Native" GroupName="rdoNationality" cssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoAsian" runat="server" Text="Asian or Pacific Islander" GroupName="rdoNationality" cssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoBlack" runat="server" Text="Black or African American" GroupName="rdoNationality" cssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoLatino" runat="server" Text="Latino/Latina" GroupName="rdoNationality" cssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoWhite" runat="server" Text="White" GroupName="rdoNationality" cssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoOther" runat="server" Text="Other" GroupName="rdoNationality" cssClass="radioButtons"/><asp:TextBox ID="txtOther" runat="server" CssClass="rdoTextBox"></asp:TextBox><br />
                <br />
                <br />
                <asp:Label ID="lblUserType" runat="server" Text="Select Member Type: ">
                    <asp:DropDownList ID="ddlUserType" runat="server" CssClass="dropdowns">
                                <asp:ListItem>Administrator</asp:ListItem>
                                <asp:ListItem>Instrustor/Intern</asp:ListItem>
                                <asp:ListItem>Cipher</asp:ListItem>
                                <asp:ListItem>Parent</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem></asp:DropDownList></asp:Label><br />
                <br />
                <asp:Button ID="btnSignUpAllInfo" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" CssClass="buttons" /><br /> 
                 </div>


                
            

          

        </div>
    </form>

</asp:Content>


