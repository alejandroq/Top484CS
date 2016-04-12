<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.Inventory.aspx.cs" Inherits="Admin_Inventory" %>


<asp:Content ID="header2" runat="server" ContentPlaceHolderID="stylehead">

    <meta charset="utf-8">
    <meta name="description" content="Free Web tutorials">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta name="author" content="Hege Refsnes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        
        #body_Panel4 {
            text-align: center;
        }
        #body_Panel4 a {
            text-align: center;
            color: white !important;
        }
        #body_Panel4 h2 {
            border-bottom: 5px solid black;
            text-align: left;
        }

    </style>

    <!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">

<!-- Cutstom CSS -->
<link href="css/custom.css" rel="stylesheet" type="text/css" media="screen">


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">


    <div class="col-sm-10">
  
  <div class="row">
  <div class="col-sm-12">
    <h2>Items</h2></br>
  </div>
</div><!--This is just the line with the words items-->

<div class="row">
  
  <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/boombox.png" alt="Boom Box">
        <div class="caption">
        <h3>Boom Box</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/camera.jpg" alt="Cameras">
        <div class="caption">
        <h3>Cameras</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/ChessPieces.jpg" alt="Chess Pieces">
        <div class="caption">
        <h3>Chess Pieces</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>
</div><!--closing div for row-->


<div class="row">
  <div class="col-sm-12">
    <h2>Programs</h2></br>
  </div>
</div><!--This is just the line with the words student shop-->

<div class="row">
  
  <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/dance.jpg" alt="dance program">
        <div class="caption">
        <h3>Donate to the Dance Program</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/chessgame.jpg" alt="A Game of Chess">
        <div class="caption">
        <h3>Donate to the Chess Program</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/photo_program.jpg" alt="Photography Program">
        <div class="caption">
        <h3>Donate to the Photography Program</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>
</div><!--closing div for row-->

<div class="row">
  <div class="col-sm-12">
    <h2>Projects and Tours</h2></br>
  </div>
</div><!--This is just the line with the words student shop-->

<div class="row">
  
  <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/citytour.jpg" alt="City Tour">
        <div class="caption">
        <h3>Purchase Tickets for the City Tour</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/muralproject1.jpg" alt="Mural Project #1">
        <div class="caption">
        <h3>Donate to Mural Project #1</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="thumbnail">
        <img src="img/muralproject2.jpg" alt="Mural Project #2">
        <div class="caption">
        <h3>Donate to Mural Project #2</h3>
        <p>THIS IS AN ITEM DESCRIPTION</p>
        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Donate</a></p>
        </div>
        </div>
      </div>


  </div><!--closing div -->



        
<!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->



</asp:Content>

