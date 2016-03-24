<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Words Beats and Life, Inc.</title>
    <style type="text/css">
        #Container {
            width: 1000px;
            height: 1000px;
            padding: 10px;
            margin-left:auto;
            margin-right: auto;
            
        }
        #first {
            float: left;
            padding: 10px;
            width: 175px;
            line-height: 25px;
            }
        #second {
            float: left;
            padding: 10px;
            width: 200px;
            line-height: 25px;
        }
        #third {
            float: left;
            padding: 10px;
            width: 175px;
            line-height: 25px;
            }
        #fourth {
            float: left;
            padding: 10px;
            width: 200px;
            line-height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <b><u><asp:Label ID="lblHeader" runat="server" Text="Student Registration Form"></asp:Label></u></b>
            <br />
            <div id="first">
                        <asp:Label ID="lblfName" runat="server" Text="First Name: "></asp:Label><br />
                        <asp:Label ID="lbllName" runat="server" Text="Last Name: "></asp:Label><br />
                        <asp:Label ID="lblEmail" runat="server" Text="E-mail Address: "></asp:Label><br />
                        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label><br />
                        <asp:Label ID="lblPassword2" runat="server" Text="Confirm Password: "></asp:Label><br/>
                        <asp:Label ID="lblDOB" runat="server" Text="Date of Birth: "></asp:Label><br />
                        <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label><br />
                        <asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label><br />
                        <asp:Label ID="lblState" runat="server" Text="State: "></asp:Label><br />
                        <asp:Label ID="lblZip" runat="server" Text="Zip: "></asp:Label><br />
                        <%--go to next section here--%>
                        
                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" /><br />
                        <br />
                        <br />
                        
            </div>
            <div id="second">
                        <asp:TextBox ID="txtfName" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtlName" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
                        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox><br />
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox><br />
            </div>
            <div id="third">
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label><br />
                        <asp:Label ID="lblWard" runat="server" Text="Ward of Residence: "></asp:Label><br />
                        <asp:Label ID="lblOneCard" runat="server" Text="DC One Card #: "></asp:Label><br />
                        <asp:Label ID="lblHome" runat="server" Text="Home Phone #: "></asp:Label><br />
                        <asp:Label ID="lblCell" runat="server" Text="Cell Phone #: "></asp:Label><br />
                        
            </div>

            <div id="fourth">
                        <asp:TextBox ID="txtGender" runat="server" Text="data list?"></asp:TextBox><br /> <%--make this a "data list" ask sierra--%>
                        <asp:TextBox ID="txtWard" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtOneCard" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtHome" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="txtCell" runat="server"></asp:TextBox><br />
                        <asp:CheckBox ID="ckAmIndian" runat="server" Text="American India or Alaskan Native" /><br />
                        <asp:CheckBox ID="ckAsian" runat="server" Text="Asian or Pacific Islander"/><br />
                        <asp:CheckBox ID="ckBlack" runat="server" Text="Black or African American"/><br />
                        <asp:CheckBox ID="ckLatino" runat="server" Text="Latino/Latina"/><br />
                        <asp:CheckBox ID="ckWhite" runat="server" Text="White"/><br />
                        <asp:CheckBox ID="ckOther" runat="server" Text="Other"/><asp:TextBox ID="txtOther" runat="server"></asp:TextBox><br />
            

            </div>
        </div>
    </form>
</body>
</html>
