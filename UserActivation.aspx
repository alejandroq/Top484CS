<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserActivation.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="studentRegistrationForm">
    
        <!-- Student additional information -->
            <div id="sAdInfoBlock" class="infoBlock"> 
            <div id="sAdditionalInformation" runat="server" >
                <h3>Additional Information</h3>
                <asp:Label ID="lblWard" runat="server" Text="Ward of Residence: " CssClass="labels"><asp:TextBox ID="txtWard" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblOneCard" runat="server" Text="DC One Card #: " CssClass="labels"><asp:TextBox ID="txtOneCard" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
            </div>
                    
            <div id="sEmergencyInfo" runat="server">
                        <h3>Emergency Contact Information</h3>
                        <asp:Label ID="lblEmergencyFname" runat="server" Text="911 Contact First Name" CssClass="labels">
                        <asp:TextBox ID="txtEmergencyFname" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblbEmergencyLname" runat="server" Text="Last Name" CssClass="labels">
                        <asp:TextBox ID="txtEmergencyLname" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblRelationship" runat="server" Text="Relationship to Student" CssClass="labels">
                        <asp:TextBox ID="txtRelationship" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblEcontactCell" runat="server" Text="Emergency Contact Cell #: " CssClass="labels">
                        <asp:TextBox ID="txtEcontactCell" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblEcontactEmail" runat="server" Text="Emergency Contact E-mail: " CssClass="labels">
                        <asp:TextBox ID="txtEcontactEmail" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    </div>
                
            <div id="sHealthInfo" runat="server">
                        <h3>Health Information</h3>
                        <asp:Label ID="lblPhysician" runat="server" Text="Primary Physician: " CssClass="labels">
                            <asp:TextBox ID="txtPhysician" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblInsuranceCompany" runat="server" Text="Insurance Company: " CssClass="labels">
                            <asp:TextBox ID="txtInsuranceCompany" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblInsuranceNo" runat="server" Text="Insurance Group Number: " CssClass="labels">
                            <asp:TextBox ID="txtInsuranceNo" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblPolicyNo" runat="server" Text="Insurance Policy Number: " CssClass="labels">
                            <asp:TextBox ID="txtPolicyNo" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblDietary" runat="server" Text="Dietary Information Restrictions: " CssClass="labels"></asp:Label>
                            <asp:RadioButton ID="rdoDiet6" Text="Vegetarian" runat="server" GroupName="DietGroup" CssClass="radioButtons"/>
                            <br /><asp:RadioButton ID="rdoDiet2" runat="server" Text="Vegan" GroupName="DietGroup" CssClass="radioButtons"/>
                            <br /><asp:RadioButton ID="rdoDiet1" runat="server" Text="Pescatarian (Fish Only)" GroupName="DietGroup" CssClass="radioButtons"/>
                            <br /><asp:RadioButton ID="rdoDiet3" runat="server" Text="N/A (I eat everything)" GroupName="DietGroup" CssClass="radioButtons"/>
                            <br /><asp:RadioButton ID="rdoDiet4" runat="server" Text="Nut Allergy" GroupName="DietGroup" CssClass="radioButtons"/>
                            <br /><asp:RadioButton ID="rdoDiet5" runat="server" Text="Other" GroupName="DietGroup" CssClass="radioButtons"/>
                            <asp:TextBox ID="txtDietOther" runat="server" CssClass="rdoTextBox"></asp:TextBox><br />
                        <asp:Label ID="lblAllergies" runat="server" Text="Please list your Allergies (if none, write none): "  CssClass="labels">
                            <asp:TextBox ID="txtAllergies" runat="server" Textmode="multiline" CssClass="textbox"></asp:TextBox></asp:Label><br />
           <asp:Button ID="btneducationInfo" runat="server" Text="Continue" cssclass="buttons" OnClick="btneducationInfo_Click" />
                 </div>
            </div>


            
            <div id="sEdInfoBlock" >
            <div id="sEducationInfo" runat="server">

                    <h3>Ecuation Information</h3>
                    <asp:Label ID="lblEStatus" runat="server" Text="Student Status" CssClass="labels"></asp:Label>
                    <asp:RadioButton ID="rdoEStatusNo" runat="server" Text="Not in School" GroupName="educationStatus" CssClass="radioButtons"/><br />
                    <asp:RadioButton ID="rdoEStatusSchool" runat="server" Text="Currently attending school" GroupName="educationStatus" CssClass="radioButtons"/>
                    
                    <asp:Label ID="lblCurrentSchoolYear" runat="server" Text="Current Grade/Year in School" CssClass="labels">
                        <asp:TextBox ID="txtCurrentSchoolYear" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblSchoolName" runat="server" Text="School and/or program name" CssClass="labels">
                        <asp:TextBox ID="txtSchoolName" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblCurrentGradYear" runat="server" Text="Expected Year of Graduation: " CssClass="labels">
                    <asp:DropDownList ID="ddlCurrentGradYear" runat="server" CssClass="dropdowns">
                        <asp:ListItem Value="2016"></asp:ListItem>
                        <asp:ListItem Value="2017"></asp:ListItem>
                        <asp:ListItem Value="2018"></asp:ListItem>
                        <asp:ListItem Value="2019"></asp:ListItem>
                        <asp:ListItem Value="2020"></asp:ListItem>
                        <asp:ListItem Value="2021"></asp:ListItem>  
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblGradDescription" runat="server" Text="Graduatining from: " CssClass="labels">
                    <asp:DropDownList ID="ddlGraduatingFrom" runat="server" CssClass="dropdowns">
                        <asp:ListItem Value="8th Grade"></asp:ListItem>
                        <asp:ListItem Value="High School"></asp:ListItem>
                        <asp:ListItem Value="College"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblCollegePlan" runat="server" Text="Do you plan on going to college or a trade school?" CssClass="labels">
                    <asp:DropDownList ID="ddlCollegePlan" runat="server" CssClass="dropdowns">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="I don't know"></asp:ListItem>
                        <asp:ListItem Value="I am currently in college/trade school"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblMajor" runat="server" Text="What would you like to major in?" CssClass="labels">
                        <asp:TextBox ID="txtMajor" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblCollege" runat="server" Text="What college/trade school would you want to go to?" CssClass="labels">
                        <asp:TextBox ID="txtCollege" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPastSchool" runat="server" Text="Name of last school attended: " CssClass="labels">
                        <asp:TextBox ID="txtPastSchool" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPastGradYear" runat="server" CssClass="labels">
                    <!-- year of graduation date picker with date drop downs --></asp:Label><br />
                    <asp:Label ID="lblStudyTopic" runat="server" Text="What did you study?" CssClass="labels">
                    <asp:TextBox ID="txtStudyTopic" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblFurtherEducation" runat="server" Text="Do you plan on furthering your education?" CssClass="labels">
                    <asp:DropDownList ID="ddlFutureEducation" runat="server" CssClass="dropdowns">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="I don't know"></asp:ListItem>
                    </asp:DropDownList></asp:Label>
                    <asp:Label ID="lblFurtherEdDesc" runat="server" Text="I.E: Grad School, Trade School, Certification Programs, etc." CssClass="labels"></asp:Label><br />

            </div>


            <div id="sEmploymentHistory" runat="server">
            <h3>Employment History</h3>                    
                <asp:Label ID="lblCurrentJob" runat="server" Text="Do you currently have a job?" CssClass="labels"></asp:Label><br />
                        <asp:RadioButton ID="rdoJobYes" runat="server" Text="Yes" GroupName="currentJob" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoJobNo" runat="server" Text="No" GroupName="currentJob" CssClass="radioButtons"/><br />
                    <asp:Label ID="lblWork" runat="server" Text="If yes, where do you work? What do you do?" CssClass="labels">
                        <asp:TextBox textmode="MultiLine" ID="txtWorkDesc" runat="server"  CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPay" runat="server" Text="How much money do you make per hour?" CssClass="labels"></asp:Label><br />
                        <asp:RadioButton ID="rdo7to10" runat="server" Text="$7.00 - $10.00" GroupName="hourlyPay" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdo10to15" runat="server" Text="$10.00 - $50.00" GroupName="hourlyPay" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdo15to20" runat="server" Text="$15.00 - $20.00" GroupName="hourlyPay" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdo20to25" runat="server" Text="$20.00 - $25.00" GroupName="hourlyPay" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdo25to30" runat="server" Text="$25.00 - $30.00" GroupName="hourlyPay" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdo30" runat="server" Text="$30.00 >" GroupName="hourlyPay" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoSalaried" runat="server" Text="Salaried" GroupName="hourlyPay" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoOther" runat="server" Text="Other:" GroupName="hourlyPay" CssClass="radioButtons"/>
                        <asp:TextBox ID="txtOtherPay" runat="server" CssClass="rdoTextBox"></asp:TextBox><br />
                    <asp:Label ID="lblCareerGoal" runat="server" Text="Do you have a career goal? If yes, what is it?" CssClass="labels">
                        <asp:TextBox textmode="MultiLine" ID="txtCareerGoal" runat="server" CssClass="textbox"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPayWant" runat="server" Text="How much money do you WANT to make per hour?" CssClass="labels"></asp:Label><br />
                        <asp:RadioButton ID="rdoW7to10" runat="server" Text="$7.00 - $10.00" GroupName="payWant" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoW10to15" runat="server" Text="$10.00 - $50.00" GroupName="payWant" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoW15to20" runat="server" Text="$15.00 - $20.00" GroupName="payWant" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoW20to25" runat="server" Text="$20.00 - $25.00" GroupName="payWant" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoW25to30" runat="server" Text="$25.00 - $30.00" GroupName="payWant" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoW30" runat="server" Text="$30.00 >" GroupName="payWant" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoWSalaried" runat="server" Text="Salaried" GroupName="payWant" CssClass="radioButtons"/><br />
                        <asp:RadioButton ID="rdoWOther" runat="server" Text="Other:" GroupName="payWant" CssClass="radioButtons"/>
                        <asp:TextBox ID="txtWOtherPay" runat="server" CssClass="rdoTextBox"></asp:TextBox><br />
                    <asp:Label ID="lblResume" runat="server" Text="Do you currently have a resume?" CssClass="labels">
                    <asp:DropDownList ID="ddResume" runat="server" CssClass="dropdowns">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="What's a resume?"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblArtisticResume" runat="server" Text="Do you currently have an artistic resume?" CssClass="labels">
                    <asp:DropDownList ID="ddArtisticResume" runat="server" CssClass="dropdowns">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="What's an artistic resume?"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblWorkshops" runat="server" Text="Which of the following workshops would you like to participate in?" CssClass="labels"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Check ALL that apply. If none, check none" CssClass="labels"></asp:Label>
                        <asp:CheckBox ID="ckCollegePrep" runat="server" Text="Preparing for College" CssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckInterview" runat="server" Text="Interviewing Skills" CssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckResume" runat="server" Text="Resume Development" CssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckIProperty" runat="server" Text="Intellectual Property" CssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckPortfolio" runat="server" Text="Portfolio Building" CssClass="radioButtons"/><br />
                        <asp:CheckBox ID="ckNone" runat="server" Text="None" CssClass="radioButtons"/><br />
            <asp:Button ID="btnConfirmEmmployEducation" runat="server" text="Confirm Registration" cssclass="buttons" OnClick="btnConfirmEmmployEducation_Click" />
            </div>
                </div>

    </div>
    </form>
</body>
</html>