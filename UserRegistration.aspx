<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Words Beats and Life, Inc.</title>
     <meta charset="utf-8">
    <meta name="description" content="Free Web tutorials">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta name="author" content="Hege Refsnes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">

<!-- Cutstom CSS -->
<link href="css/custom.css" rel="stylesheet" type="text/css" media="screen">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="css/forms.css" />  

    <style type="text/css">
        div#allInfo {
        margin-left: 20%;
        }
    </style>

</head>
<body>


    
<div id="Div1" class="container" runat="server">

<div id="Div2" class="header" runat="server"> 
    <div id="Div3" class="row" runat="server">
      <div class="col-sm-12"> <img id="Img1" src="img/header.jpg" align="right" class="img-responsive img-fullwidth" alt="header image of DJ" runat="server"></div>
      
      
    </div> 
  </div><!--div header closing div-->

    
  

  <div id="Div4" class="tanbox" runat="server">
    <div id="Div5" class="row" runat="server">

       

          <form id="Form2" class="form-signin" runat="server">

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
                        <asp:Label ID="lblShirtSize" runat="server" Text="Shirt Size">
                            <asp:DropDownList ID="ddlShirtSize" runat="server">
                                <asp:ListItem Text ="XS">XS</asp:ListItem>
                                <asp:ListItem Text ="S">S</asp:ListItem>
                                <asp:ListItem Text ="M">M</asp:ListItem>
                                <asp:ListItem Text ="L">L</asp:ListItem>
                                <asp:ListItem Text ="XL">XL</asp:ListItem>
                                <asp:ListItem Text ="XXL">XXL</asp:ListItem>
                            </asp:DropDownList>
                        </asp:Label>
                 <asp:Label ID="lblRace" runat="server" Text="Race: " CssClass="labels"></asp:Label>
                    <asp:CheckBoxList ID="cblRace" runat="server">   
                        <asp:ListItem  runat="server" Value="American India or Alaskan Native" cssClass="radioButtons"/>
                        <asp:ListItem  runat="server" Value="Asian or Pacific Islander" cssClass="radioButtons"/>
                        <asp:ListItem  runat="server" Value="Black or African American" cssClass="radioButtons"/>
                        <asp:ListItem  runat="server" Value="Latino/Latina" cssClass="radioButtons"/>
                        <asp:ListItem  runat="server" Value="White" cssClass="radioButtons"/>
                        <asp:ListItem  runat="server" Value="Other" cssClass="radioButtons"/>
                    </asp:CheckBoxList>

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
                        <asp:TextBox ID="txtChildDOB" runat="server"  CssClass="textbox"></asp:TextBox></asp:Label><br /> 
                 
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


      <div id="Div8" class="col-sm-2" runat="server"></div>
      </div>

</div>

      </div><!--closing div to tanbox-->
<div id="Div9" class="footer" runat="server"><!--starting tag for footer-->
    <div id="Div10" class="row" runat="server">
      <div id="Div11" class="col-sm-1" runat="server"> <img src="img/WBL_LOGO_blk.png" class="img-responsive" alt="small WBL logo"> 
      </div>
      <div id="Div12" class="col-sm-11" runat="server">
      </div>
      
    </div>  

</div><!--footer div closing div-->
<!--container closing div-->


<!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
    


</body>
</html>
