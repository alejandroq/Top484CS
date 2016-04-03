<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUpDescriptions.aspx.cs" Inherits="SignUpDescriptions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
<title>Sign Up - Select User</title>

    <style type="text/css">
         html, body {
            height:100%;
            background: white;
         }

        #descriptions {
            padding-top: 3%;
        }

        p {
            padding: 10px;
        }


        .descriptionTop
        {
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            background-color: lightgreen;
            padding: 15px;
        }
        h2 {
            text-align:center;
        } 
        .btns {
            width: 100%;
            height: 10%;

        }
         #studentDescriptionList, #parentDescriptionList, #cipherDescriptionList {
            background: lightgreen;
            padding: 5px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            height: 20%;
         }
        
         #student {
            width: 25%;
            float: left;
            margin-left: 7%;
            height: 500px;
        }

           #parent {
            width: 25%;
            float: left;
            margin-left: 5%;
            height: 500px;
            display: inline;
        }

         #cipher {
            width: 25%;
            float: right;
            margin-right: 7%;
            height: 500px;
            display: inline;
        }
       

        </style>    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form id="form1" runat="server">
        <div id="descriptions">
        <div id="student">
            <div class="descriptionTop">
            <h2>Student</h2>
        <p> Pellentesque suscipit suscipit dapibus. Nam a consectetur tellus, at maximus quam. Pellentesque at arcu fringilla nisl gravida pellentesque vitae in ipsum. Ut non odio sit amet mauris imperdiet sollicitudin. Fusce purus odio, molestie id dui ut, elementum finibus sapien. Vestibulum gravida metus at ipsum feugiat, a dignissim nunc aliquam. Duis sit amet ex non diam vulputate sodales.</p>
        </div>
            <asp:Button ID="btnStudent" runat="server" Text="Student" CssClass="btns" OnClick="btnStudent_Click" />
        <div id="studentDescriptionList">
            <asp:BulletedList ID="bLStudentDesc" runat="server">
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
        </asp:BulletedList>
            </div>
            </div>

        <div id="parent">
            <div class="descriptionTop">
            <h2>Parent</h2>
        <p> Pellentesque suscipit suscipit dapibus. Nam a consectetur tellus, at maximus quam. Pellentesque at arcu fringilla nisl gravida pellentesque vitae in ipsum. Ut non odio sit amet mauris imperdiet sollicitudin. Fusce purus odio, molestie id dui ut, elementum finibus sapien. Vestibulum gravida metus at ipsum feugiat, a dignissim nunc aliquam. Duis sit amet ex non diam vulputate sodales.</p>
        </div>
            <asp:Button ID="btnParent" runat="server" Text="Parent" CssClass="btns" OnClick="btnParent_Click" />
        <div id="parentDescriptionList">
            <asp:BulletedList ID="bLParentDescription" runat="server">
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
        </asp:BulletedList>
            </div>
            </div>

        <div id="cipher">
            <div class="descriptionTop">
            <h2>Cipher</h2>
        <p> Pellentesque suscipit suscipit dapibus. Nam a consectetur tellus, at maximus quam. Pellentesque at arcu fringilla nisl gravida pellentesque vitae in ipsum. Ut non odio sit amet mauris imperdiet sollicitudin. Fusce purus odio, molestie id dui ut, elementum finibus sapien. Vestibulum gravida metus at ipsum feugiat, a dignissim nunc aliquam. Duis sit amet ex non diam vulputate sodales.</p>
        </div>
                <asp:Button ID="btnCipher" runat="server" Text="Cipher" CssClass="btns" OnClick="btnCipher_Click"/>
        <div id="cipherDescriptionList">
            <asp:BulletedList ID="bLCipherDescList" runat="server">
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
            <asp:ListItem>Lorem ipsum dolor sit amet</asp:ListItem>
        </asp:BulletedList>
            </div>
            </div>
            </div>
            </form>

</asp:Content>

