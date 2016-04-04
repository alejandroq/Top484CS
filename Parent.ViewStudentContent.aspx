<%@ Page Title="" Language="C#" MasterPageFile="~/ParentMasterPage.master" AutoEventWireup="true" CodeFile="Parent.ViewStudentContent.aspx.cs" Inherits="Parent_ViewStudentContent" %>


<asp:Content ID="ContentHeader" runat="server" ContentPlaceHolderID="contentHeader">
    <meta charset="utf-8">
    <meta name="description" content="Free Web tutorials">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta name="author" content="Hege Refsnes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <!-- Bootstrap CSS 
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">-->

        <!-- Cutstom CSS
        <link href="css/custom.css" rel="stylesheet" type="text/css" media="screen"> -->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->

    <style type="text/css">
        .col-sm-2 {
        width: 800px;
        height: 55%;
        }
        a.btn.btn-primary {
        width: 150px;
        margin-bottom: 2%;
        margin-left: 10%;
        margin-right: auto;
        }
        a.btn.btn-default {
        width: 150px;
        margin-left: 10%;
        margin-right: auto;
        }
        h3#name {
        margin-left: 40%;
        }
        .col-sm-8 {
        margin-left: 17%;
        margin-bottom: 5%;
        }
    </style>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
    <h3>Your Student's Content</h3>


      <div class="col-sm-2">
    <div class="thumbnail">
      <img src="img/lex.jpg" alt="BBoy Bridge">
      <div class="caption">
        <h3 id="name">Elexia A.</h3>
        <p>Elexia is a recent High School graduate. She is a member of the DC Youth Slam Team, FRESHH (Females Representing Every Side of Hip Hop), and writes and models for LOVE Girls Magazine. She has trained in dance for 14 years and performed on stages everywhere from DC to Martha’s Vineyard. She enjoys interacting with the youth in her community and empowering their voices through the use of natural talent. Lexi felt that poetry was never her hobby, but her culture and method of communication. She aspires to become a speech therapist and a published poet. She lives by the values of respect and love which are reinforced by her favorite quote by Audre Lorde: “Caring about myself is not an act of self- indulgence but an act of self- preservation; and that, is a method of political warfare.”
        </p>      </div>
    </div>
  </div>


    

  <div class="col-sm-8">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="img/EA1.jpg" class="img-rounded" alt="elexia">
            <div class="carousel-caption">
            </div>
          </div>
          <div class="item">
            <img src="img/beat_production.jpg" class="img-rounded" alt="patio">
            <div class="man working on beats">
            </div>
          </div>
          <div class="item">
            <img src="img/wbl_booklet.png" class="img-rounded" alt="wbl booklets">
            <div class="carousel-caption">
            </div>
          </div>
          ...
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
</div>



</asp:Content>

