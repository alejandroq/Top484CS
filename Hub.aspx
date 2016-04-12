<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hub.aspx.cs" Inherits="Hub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <style type="text/css">
        #hubBody {
            margin-top: 2%;
            text-align: center;
            color: black !important;
        }
        #vimeoFrame {
        position: relative;
        width: 40%;
        float: left;
        margin-left: 5%;
        }
        #vimeoBar {
        margin-top: 2%;
        margin-right: 1%;
        float: right;
        position: relative;

        }
        #sliderTop {
            position: relative;
            float: right;
            margin-right: 2%;
            width: 50%;
            margin-top: 1%;
        }
        #soundCloud {
            position: relative;
            margin-top: 2%;
            float: right;
            width: 70%;
            margin-right: 5%;
        }
        #instaa {
            position: relative;
            margin-top: 2%;
            float: left;
            margin-left: -20%;
            width: 40%
        }
        #twitter {
            position: relative;
            float: right;
            margin-right: 3%;
            width: 40%;
            margin-top: 2%;
        }
        #faceB {
            position: relative;
            float: left;
            margin-left: 6%;
            margin-top: 2%;
            width: 30%;
        }
        #blogg {
            float: left;
            position: relative;
            margin-top: 3%;
            margin-left: -20%;
            width: 75%;
            margin-bottom: 2%;
        }

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="foobar" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foo" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" Runat="Server">


    <div id="hubBody">

        <h3>Welcome to The Hub!</h3>


        <%--VIMEO--%>
<iframe id="vimeoFrame" src="//player.vimeo.com/hubnut/album/3892866?color=44bbff&amp;background=000000&amp;slideshow=1&amp;video_title=1&amp;video_byline=1" width="400" height="300" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>   
    


        <div id="sliderTop">
             <script type="text/javascript" src="js/jquery-1.9.1.min1.js"></script>
    <script type="text/javascript" src="js/jssor.slider.mini1.js"></script>
    <!-- use jssor.slider.debug.js instead for debug -->
    <script>
        jQuery(document).ready(function ($) {

            var jssor_2_SlideshowTransitions = [
              { $Duration: 1200, x: 0.2, y: -0.1, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $Jease$.$InWave, $Top: $Jease$.$InWave, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 1.3, $Top: 2.5 } },
              { $Duration: 1500, x: 0.3, y: -0.3, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.1, 0.9], $Top: [0.1, 0.9] }, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $Jease$.$InJump, $Top: $Jease$.$InJump, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5 } },
              { $Duration: 1500, x: 0.2, y: -0.1, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $Jease$.$InWave, $Top: $Jease$.$InWave, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5 } },
              { $Duration: 1500, x: 0.3, y: -0.3, $Delay: 80, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Easing: { $Left: $Jease$.$InJump, $Top: $Jease$.$InJump, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5 } },
              { $Duration: 1800, x: 1, y: 0.2, $Delay: 30, $Cols: 10, $Rows: 5, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $SlideOut: true, $Reverse: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 2050, $Easing: { $Left: $Jease$.$InOutSine, $Top: $Jease$.$OutWave, $Clip: $Jease$.$InOutQuad }, $Outside: true, $Round: { $Top: 1.3 } },
              { $Duration: 1000, $Delay: 30, $Cols: 8, $Rows: 4, $Clip: 15, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 2049, $Easing: $Jease$.$OutQuad },
              { $Duration: 1000, $Delay: 80, $Cols: 8, $Rows: 4, $Clip: 15, $SlideOut: true, $Easing: $Jease$.$OutQuad },
              { $Duration: 1000, y: -1, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraight, $ChessMode: { $Column: 12 } },
              { $Duration: 1000, x: -0.2, $Delay: 40, $Cols: 12, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 260, $Easing: { $Left: $Jease$.$InOutExpo, $Opacity: $Jease$.$InOutQuad }, $Opacity: 2, $Outside: true, $Round: { $Top: 0.5 } },
              { $Duration: 2000, y: -1, $Delay: 60, $Cols: 15, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: $Jease$.$OutJump, $Round: { $Top: 1.5 } }
            ];

            var jssor_2_options = {
                $AutoPlay: true,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_2_SlideshowTransitions,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 600);
                    jssor_2_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>

    <style>
        
        /* jssor slider bullet navigator skin 01 css */
        /*
        .jssorb01 div           (normal)
        .jssorb01 div:hover     (normal mouseover)
        .jssorb01 .av           (active)
        .jssorb01 .av:hover     (active mouseover)
        .jssorb01 .dn           (mousedown)
        */
        .jssorb01 {
            position: absolute;
        }
        .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
            position: absolute;
            /* size of bullet elment */
            width: 12px;
            height: 12px;
            filter: alpha(opacity=70);
            opacity: .7;
            overflow: hidden;
            cursor: pointer;
            border: #000 1px solid;
        }
        .jssorb01 div { background-color: gray; }
        .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
        .jssorb01 .av { background-color: #fff; }
        .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }

        /* jssor slider arrow navigator skin 05 css */
        /*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        */
        .jssora05l, .jssora05r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 40px;
            cursor: pointer;
            background: url('img/a17.png') no-repeat;
            overflow: hidden;
        }
        .jssora05l { background-position: -10px -40px; }
        .jssora05r { background-position: -70px -40px; }
        .jssora05l:hover { background-position: -130px -40px; }
        .jssora05r:hover { background-position: -190px -40px; }
        .jssora05l.jssora05ldn { background-position: -250px -40px; }
        .jssora05r.jssora05rdn { background-position: -310px -40px; }
    </style>


    <div id="jssor_2" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden;">
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/beat_production.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/GB.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/chess.jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="img/DJpic.jpg" />
            </div>
        
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb01" style="bottom:16px;right:16px;">
            <div data-u="prototype" style="width:12px;height:12px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora05l" style="top:0px;left:8px;width:40px;height:40px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora05r" style="top:0px;right:8px;width:40px;height:40px;" data-autocenter="2"></span>
    </div>

        </div>


           <style id="Style1">
 /* You can modify these CSS styles */
 .vimeoBadge { margin: 0; padding: 0; font: normal 11px verdana,sans-serif; }
 .vimeoBadge img { border: 0; }
 .vimeoBadge a, .vimeoBadge a:link, .vimeoBadge a:visited, .vimeoBadge a:active { color: #3A75C4; text-decoration: none; cursor: pointer; }
 .vimeoBadge a:hover { color:#00CCFF; }
 .vimeoBadge #vimeo_badge_logo { margin-top:10px; width: 57px; height: 16px; }
 .vimeoBadge .credit { font: normal 11px verdana,sans-serif; }
 .vimeoBadge .clip { padding:0; float:left; margin:0 10px 10px 0; line-height:0; }
 .vimeoBadge.vertical .clip { float: none; }
 .vimeoBadge .caption { font: normal 11px verdana,sans-serif; overflow:hidden; width: auto; height: 30px; }
 .vimeoBadge .clear { display: block; clear: both; visibility: hidden; }
 .vimeoBadge .s160 { width: 160px; } .vimeoBadge .s80 { width: 80px; } .vimeoBadge .s100 { width: 100px; } .vimeoBadge .s200 { width: 200px; }
 </style>

   <div id="vimeoBar" class="vimeoBadge horizontal">
<script src="https://vimeo.com/user50958423/badgeo/?script=1&badge_layout=horizontal&badge_quantity=5&badge_size=200&badge_stream=album&show_titles=yes&badge_album=3892866"></script>

</div>

        <div id="soundCloud">
             <iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/143741131&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
        </div>

        <div id="instaa">
            <div class="ig-root ak8E48 clearfix"> </div>
                <script>
                    scripts = [];
                    host = 'http://www.uptsi.com';
                    js = document.createElement('script');
                    js.src = host + "/tools/widgets/b/29bQ05624f56WPl871ekb45J6d6i2E4iI188R6HU3291Tf45a7g1AaLY7438c57ZkghdNG";
                    scripts[0] = js;
                    for (i = 0; i < scripts.length; i++) { document.getElementsByTagName("HEAD")[0].appendChild(scripts[i]); }
                </script>
        </div>

        <div id="twitter">

            <%--TWITTER--%>
            <a class="twitter-timeline" href="https://twitter.com/WordsBeatsLife" data-widget-id="718852033067896832">Tweets by @WordsBeatsLife</a>
            <script type="text/javascript" async src="https://platform.twitter.com/widgets.js"></script>

          <a class="twitter-mention-button"
            href="https://twitter.com/intent/tweet?screen_name=WordsBeatsLife">
            Tweet to @WordsBeatsLife</a>
          <script>window.twttr = (function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0],
      t = window.twttr || {};
    if (d.getElementById(id)) return t;
    js = d.createElement(s);
    js.id = id;
    js.src = "https://platform.twitter.com/widgets.js";
    fjs.parentNode.insertBefore(js, fjs);

    t._e = [];
    t.ready = function (f) {
        t._e.push(f);
    };

    return t;
}(document, "script", "twitter-wjs"));</script>

            <a href="https://twitter.com/intent/tweet?in_reply_to=718574248026107905" style= "color: #0094ff" >Reply</a>
            <a href="https://twitter.com/intent/retweet?tweet_id=718574248026107905" style= "color: #0094ff" >Retweet</a>
            <a href="https://twitter.com/intent/like?tweet_id=718574248026107905" style= "color: #0094ff" >Like</a>



        </div>

        <div id="faceB">

            <div id="fb-root"></div>
                <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

                         <div class="fb-page" 
                  data-tabs="timeline,events,messages"
                  data-href="https://www.facebook.com/WordsBeatsLife"
                  data-width="380" 
                  data-hide-cover="false"></div>     

        </div>

        <div id="blogg">
            <!-- Begin Comments JavaScript Code --><script type="text/javascript" async>function ajaxpath_570c66f4ea6a0(url) { return window.location.href == '' ? url : url.replace('&s=', '&s=' + escape(window.location.href)); } (function () { document.write('<div id="fcs_div_570c66f4ea6a0"><a title="free comment script" href="http://www.freecommentscript.com">&nbsp;&nbsp;<b>Free HTML User Comments</b>...</a></div>'); fcs_570c66f4ea6a0 = document.createElement('script'); fcs_570c66f4ea6a0.type = "text/javascript"; fcs_570c66f4ea6a0.src = ajaxpath_570c66f4ea6a0((document.location.protocol == "https:" ? "https:" : "http:") + "//www.freecommentscript.com/GetComments2.php?p=570c66f4ea6a0&s=&Size=10#!570c66f4ea6a0"); setTimeout("document.getElementById('fcs_div_570c66f4ea6a0').appendChild(fcs_570c66f4ea6a0)", 1); })();</script><noscript><div><a href="http://www.freecommentscript.com" title="free html user comment box">Free Comment Script</a></div></noscript><!-- End Comments JavaScript Code -->


        </div>




    </div>




</asp:Content>

