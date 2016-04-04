<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="description" content="Free Web tutorials">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta name="author" content="Hege Refsnes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Words Beats & Life Login</title>

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

</head>
<body>
    
    
<div class="container" runat="server">

<div class="header" runat="server"> 
    <div class="row" runat="server">
      <div class="col-sm-12"> <img src="images/header.jpg" align="right" class="img-responsive img-fullwidth" alt="header image of DJ" runat="server"></div>
      
      
    </div> 
  </div><!--div header closing div-->

    
  

  <div class="tanbox" runat="server">
    <div class="row" runat="server">
      <div class="col-sm-4 col-sm-offset-4" runat="server">

       

          <form id="Form1" class="form-signin" runat="server">
            <h2 class="form-signin-heading" runat="server">Reset Password</h2>
            
             
                    <div runat="server">
                        <asp:Label ID="lblForgotEmail" runat="server" Text="Email Address: "></asp:Label>
                         <asp:TextBox id="txtForgotEmail" runat="server"></asp:TextBox><br />
                        <asp:Button ID="btnForgotEmail" runat="server" Text="Send Reset Email" OnClick="btnForgotEmail_Click" /> 
                    </div>
                  

			</form>

      </div>
      <div class="col-sm-2" runat="server"></div>
      </div>

</div>

      </div><!--closing div to tanbox-->
<div class="footer" runat="server"><!--starting tag for footer-->
    <div class="row" runat="server">
      <div class="col-sm-1" runat="server"> <img src="images/WBL_LOGO_blk.png" class="img-responsive" alt="small WBL logo"> 
      </div>
      <div class="col-sm-11" runat="server">
      </div>
      
    </div>  

</div><!--footer div closing div-->

</div><!--container closing div-->


<!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
    

</body>
</html>
