<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log-In.aspx.cs" Inherits="Log_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    
    
<div class="container">
<div class="header"> 
    <div class="row">
      <div class="col-sm-12"> <img src="img/header.jpg" align="right" class="img-responsive img-fullwidth" alt="header image of DJ"></div>
      
      
    </div> 
  </div><!--div header closing div-->

    
  

  <div class="tanbox">
    <div class="row">
      <div runat="server" class="col-sm-4 col-sm-offset-4">

       

          <form class="form-signin" runat="server">
            <h2 class="form-signin-heading">Please sign in</h2>
            <label for="inputEmail" class="sr-only">Email address</label>
            <asp:TextBox runat="server" Type="email" id="inputEmail" CssClass="form-control" Placeholder="Email address"  required="true"/>
            <label for="inputPassword" class="sr-only">Password</label>
            <asp:TextBox runat="server" Type="password" id="inputPassword" CssClass="form-control" Placeholder="Password" required="true"/>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me"/> Remember me
              </label>
			  <label><a href="ForgotPassword.aspx" id="password">Forgot Password</a></label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" id="login" onserverclick="Login1_Authenticate" runat="server">Sign in</button>
			<button class="btn btn-lg btn-primary btn-block" type="submit" id="signUp" onServerClick="lnkSignUp_Click" runat="server">New to the Community? Register Here!</button>
			</form>

      </div>
      <div class="col-sm-2"></div>
      </div>

</div>

      </div><!--closing div to tanbox-->
<div class="footer"><!--starting tag for footer-->
    <div class="row">
      <div class="col-sm-1"> <img src="img/WBL_LOGO_blk.png" class="img-responsive" alt="small WBL logo"> 
      </div>
      <div class="col-sm-11">
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
