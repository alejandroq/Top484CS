﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log-In.aspx.cs" Inherits="Log_In" %>

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


    <style type="text/css">
         #entireBox {
				position: relative;
				background-image:url(img/dj_header.jpg);
                background-repeat: no-repeat;
                background-size: 100%;
                height: 100%;
                box-shadow: 0 3px 5px #888888;
			}
        #loginContainer {
        width: 100%;
        padding: 0;
        margin: 0;
        height: 590px;
        }
        #loginForm {
            width: 30%;
            margin-left: 35%;
            position: absolute;
            margin-top: 7%;
            background-color: grey;
            box-shadow: 5px 5px 5px grey;
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
            border: 3px solid #22EECF;
            background:rgba(146,146,146,0.98);
            -webkit-box-shadow: #949494 10px 10px 10px;
            -moz-box-shadow: #949494 10px 10px 10px; 
            box-shadow: #949494 10px 10px 10px;
            padding: 0px 15px 15px 15px;
        }
        h2 {
            text-align: center;
            color: white;
        }
        #loginFooter {
        margin-top: 0;
        }
        #branding {
            padding: 15px 15px 0 15px;
        }
    </style>

</head>
<body>
    
    
<div class="container" id="loginContainer" >



  <div id="entireBox" >

          <div id="wrapperHeader">
            <div id="branding">
                <img id="branding-logo" src="img/logo.png" alt="Words Beats & Life Inc. Logo" />
            </div>
             </div>
       

          <form id="loginForm" class="form-signin" runat="server">
            <h2 class="form-signin-heading">Please Sign In</h2>
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




      </div><!--closing div to tanbox-->



    
    <footer>
        <div class="footer" id="loginFooter"><!--starting tag for footer-->
    <div class="row">
      <div class="col-sm-1"> <img src="img/WBL_LOGO_blk.png" class="img-responsive" alt="small WBL logo"> 
      </div>
      <div class="col-sm-11">
      </div>
      
    </div>  

</div><!--footer div closing div-->
    </footer>
</body>
    
</html>
