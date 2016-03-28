<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Words Beats and Life, Inc.</title>
    <link rel="stylesheet" href="css/forms.css" />  

</head>
<body>
    <form id="form1" runat="server">
        <div id="userInfo">
            
            <!-- General user form information -->
            <div id="allInfo" runat="server">
                <h3>User Information</h3>
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
                <asp:Label ID="lblRace" runat="server" Text="Race: " CssClass="labels"></asp:Label>
                        <asp:CheckBox ID="ckAmIndian" runat="server" Text="American India or Alaskan Native" cssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckAsian" runat="server" Text="Asian or Pacific Islander" cssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckBlack" runat="server" Text="Black or African American" cssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckLatino" runat="server" Text="Latino/Latina" cssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckWhite" runat="server" Text="White" cssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckOther" runat="server" Text="Other" cssClass="radioButtons"/><asp:TextBox ID="txtOther" runat="server" CssClass="rdoTextBox"></asp:TextBox><br />
                       

                <asp:Button ID="btnSignUpAllInfo" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" CssClass="buttons" /><br /> 
                 </div>


                
            

           <!-- Parent additional information -->
             <div id="parentBlock" runat="server">
                   <h3>Student Confirmation Page</h3>
                 <span>Please confirm the following information for your children.</span><br />
                 <h4> Student 1 Information: </h4>

                    <asp:Label ID="lblChildsFName" runat="server" Text="First Name:" CssClass="labels">
                        <asp:TextBox ID="txtChildLName" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblChildsLName" runat="server" Text="Last Name:" CssClass="labels">
                        <asp:TextBox ID="txtChildFName" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblChildsEmail" runat="server" Text="E-Mail:" CssClass="labels">
                        <asp:TextBox ID="txtChildEmail" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblChildsBirthday" runat="server" Text="Birthdate:" CssClass="labels">
                        <asp:TextBox ID="txtChildBirthday" runat="server"  CssClass="textbox"></asp:TextBox></asp:Label><br /> 
                 
                <div id="parentAdditions" runat="server">
                <asp:Label ID="lblParentRelationship" runat="server" Text="Relationship to student:" CssClass="labels">
                        <asp:TextBox ID="txtParentRelationship" runat="server"  CssClass="textbox"></asp:TextBox></asp:Label><br />
                       
                       </div>
                    
                  <div id="pAdditionalChildren" runat="server">
                      <span>Would you like to add another child?</span>


                      <!-- code to add another child -->

                    </div>
                    
                    
                    <asp:Button ID="btnparentStudentConfirmation" runat="server" Text="Confirm Student" cssclass="buttons" OnClick="parentStudentConfirmation_Click" />
             
            </div>
            
           

        </div>
        
        <br />
            
    </form>
  
</body>
</html>
