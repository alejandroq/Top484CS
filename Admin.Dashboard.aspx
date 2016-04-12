<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">


    <!--Main body for administrator homepage -->
    <h3>Administrator Dashboard</h3>

    <div id="periscope">
            <%--PERISCOPE--%>
          <script>window.twttr = function (t, e, r) { var n, i = t.getElementsByTagName(e)[0], w = window.twttr || {}; return t.getElementById(r) ? w : (n = t.createElement(e), n.id = r, n.src = "https://platform.twitter.com/widgets.js", i.parentNode.insertBefore(n, i), w._e = [], w.ready = function (t) { w._e.push(t) }, w) }(document, "script", "twitter-wjs")</script>
        <a href="https://www.periscope.tv/daniel_4" class="periscope-on-air" data-size="large">@Daniel_4</a>
          <br />
        </div>

    <iframe style="border: 0px;" src="https://public.tableau.com/views/prototype_1/Sheet1?:embed=y&:display_count=yes&:showTabs=y&:refresh=yes" scrolling="no" width="652px" height="756px"></iframe>
        





</asp:Content>

