﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CipherMasterPage.master" AutoEventWireup="true" CodeFile="Cipher.MakeADonation.aspx.cs" Inherits="Cipher_MakeADonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml" />

    <h3>Make a Donation Here!</h3>

    
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <%--<img src="<%=MakeImageSrcData("C:/Users/lee2rm/Desktop/Top484CS-master5/Top484CS-master/img/paypalprocess.png") %>" />
            --%><br /><br /><input type="hidden" name="cmd" value="_donations">
            <input type="hidden" name="business" value="top484.wordsbeatslifeproject@gmail.com">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" name="item_name" value="Words Beats and Life, Inc">
            <input type="hidden" name="item_number" value="WBL">
            <input type="hidden" name="no_note" value="0">
            <input type="hidden" name="currency_code" value="USD">
            <input type="hidden" name="bn" value="PP-DonationsBF:btn_donateCC_LG.gif:NonHostedGuest">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
        </form>


</asp:Content>

