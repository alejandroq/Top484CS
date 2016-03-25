<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Words Beats and Life, Inc.</title>
    <style type="text/css">
        #userInfo {
            width: auto;
            height: auto;
            padding: 10px;
            margin-left:auto;
            margin-right: auto;
            
        }
        #uiFirst {
            float: left;
            padding: 10px;
            width: auto;
            line-height: 25px;
            }
        #uiSecond {
            float: left;
            padding: 10px;
            width: auto;
            line-height: 25px;
        }
        #uiThird {
            float: left;
            padding: 10px;
            width: auto;
            line-height: 25px;
            }
        #uiFourth {
            float: left;
            padding: 10px;
            width: auto;
            line-height: 25px;
        }
        #uiFifth {
            float: left;
            padding: 10px;
            width: auto;
            line-height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="userInfo">
            <b><u><asp:Label ID="lblHeader" runat="server" Text="Student Registration Form"></asp:Label></u></b>
            <br />
            <div id="uiFirst">
                        <asp:Label ID="lblfName" runat="server" Text="First Name: "><asp:TextBox ID="txtfName" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lbllName" runat="server" Text="Last Name: "><asp:TextBox ID="txtlName" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblEmail" runat="server" Text="E-mail Address: "><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblPassword" runat="server" Text="Password: "><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblPassword2" runat="server" Text="Confirm Password: "><asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox></asp:Label><br/>
                        <asp:Label ID="lblDOB" runat="server" Text="Date of Birth: "><asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblAddress" runat="server" Text="Address: "><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblCity" runat="server" Text="City: "><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblState" runat="server" Text="State: "><asp:TextBox ID="txtState" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblZip" runat="server" Text="Zip: "><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                            <asp:DropDownList ID="ddlGender" runat="server" >
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Trans/Transgender</asp:ListItem>
                                <asp:ListItem>Genderqueer</asp:ListItem>
                                <asp:ListItem>Prefer not to say</asp:ListItem>
                            </asp:DropDownList></br>

                        <asp:Label ID="lblWard" runat="server" Text="Ward of Residence: "><asp:TextBox ID="txtWard" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblOneCard" runat="server" Text="DC One Card #: "><asp:TextBox ID="txtOneCard" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblHome" runat="server" Text="Home Phone #: "><asp:TextBox ID="txtHome" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblCell" runat="server" Text="Cell Phone #: "><asp:TextBox ID="txtCell" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:CheckBox ID="ckAmIndian" runat="server" Text="American India or Alaskan Native" /><br />
                        <asp:CheckBox ID="ckAsian" runat="server" Text="Asian or Pacific Islander"/><br />
                        <asp:CheckBox ID="ckBlack" runat="server" Text="Black or African American"/><br />
                        <asp:CheckBox ID="ckLatino" runat="server" Text="Latino/Latina"/><br />
                        <asp:CheckBox ID="ckWhite" runat="server" Text="White"/><br />
                        <asp:CheckBox ID="ckOther" runat="server" Text="Other"/><asp:TextBox ID="txtOther" runat="server"></asp:TextBox><br />
                        
                <asp:Label ID="lblParentRelationship" runat="server" Text="Relationship to student:">
                        <asp:TextBox ID="txtParentRelationship" runat="server" placeholder="Ex) Mother"></asp:TextBox></asp:Label>

                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" /><br />
                    </div>
            <div id="uiSecond">
                        <b><u><asp:Label ID="lblEmergencyInfo" runat="server" Text="Parent/Guardian or Emergency Contact Information"></asp:Label></u></b><br />
                        <asp:Label ID="lblEmergencyFname" runat="server" Text="911 Contact First Name"></asp:Label>
                        <asp:TextBox ID="txtEmergencyFname" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblbEmergencyLname" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="txtEmergencyLname" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblRelationship" runat="server" Text="Relationship to Student"></asp:Label>
                        <asp:TextBox ID="txtRelationship" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblEcontactCell" runat="server" Text="Emergency Contact Cell #: "></asp:Label>
                        <asp:TextBox ID="txtEcontactCell" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblEcontactEmail" runat="server" Text="Emergency Contact E-mail: "></asp:Label>
                        <asp:TextBox ID="txtEcontactEmail" runat="server"></asp:TextBox><br />
                        <b><u><asp:Label ID="lblHealth" runat="server" Text="Health Information"></asp:Label></u></b>
                        <br />
                        <asp:Label ID="lblPhysician" runat="server" Text="Primary Physician and/or Medical Treatment Facility: "></asp:Label>
                        <asp:TextBox ID="txtPhysician" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblInsuranceCompany" runat="server" Text="Insurance Company: "></asp:Label>
                        <asp:TextBox ID="txtInsuranceCompany" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblInsuranceNo" runat="server" Text="Insurance Group Number: "><asp:TextBox ID="txtInsuranceNo" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblPolicyNo" runat="server" Text="Insurance Policy Number: "><asp:TextBox ID="txtPolicyNo" runat="server"></asp:TextBox></asp:Label><br />
                        <asp:Label ID="lblDietary" runat="server" Text="Dietary Information Restrictions: "><asp:RadioButton ID="rdoDiet6" Text="Vegetarian" runat="server" GroupName="DietGroup"/>
                        <br /><asp:RadioButton ID="rdoDiet2" runat="server" Text="Vegan" GroupName="DietGroup"/><br /><asp:RadioButton ID="rdoDiet1" runat="server" Text="Pescatarian (Fish Only)" GroupName="DietGroup"/>
                        <br /><asp:RadioButton ID="rdoDiet3" runat="server" Text="N/A (I eat everything)" GroupName="DietGroup"/>
                        <br /><asp:RadioButton ID="rdoDiet4" runat="server" Text="Nut Allergy" GroupName="DietGroup"/>
                        <br /><asp:RadioButton ID="rdoDiet5" runat="server" Text="Other" GroupName="DietGroup" /></asp:Label><asp:TextBox ID="txtDietOther" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblAllergies" runat="server" Text="List Allergies (if none, write none): "><asp:TextBox ID="txtAllergies" runat="server"></asp:TextBox></asp:Label>
            </div>
            <div id="uiThird">
                    <b><u><asp:Label ID="lblParentRegistration" runat="server" Text="Parent Registration Form"></asp:Label></u></b><br />
                    <asp:Label ID="lblChildConfirm" runat="server" Text="Please confirm the following information for your child."></asp:Label><br />
                    <asp:Label ID="lblChildsFName" runat="server" Text="First Name:">
                    <asp:TextBox ID="txtChildLName" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblChildsLName" runat="server" Text="Last Name:">
                    <asp:TextBox ID="txtChildFName" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblChildsEmail" runat="server" Text="E-Mail:">
                    <asp:TextBox ID="txtChildEmail" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblChildsBirthday" runat="server" Text="Birthdate:">
                    <asp:TextBox ID="txtChildBirthday" runat="server"></asp:TextBox></asp:Label><br />    
                    
            </div>
            <div id="uiFourth">
                    <b><u><asp:Label ID="lblEducationForm" runat="server" Text="Education Form"></asp:Label></u></b><br />
                    <asp:Label ID="lblEStatus" runat="server" Text="Student Status"></asp:Label>
                    <asp:RadioButton ID="rdoEStatusNo" runat="server" Text="Not in School" GroupName="educationStatus"/>
                    <asp:RadioButton ID="rdoEStatusSchool" runat="server" Text="Currently attending school" GroupName="educationStatus"/>
                    <asp:Label ID="lblEducationInfo" runat="server" Text="Education Information"></asp:Label><br />
                    <asp:Label ID="lblCurrentSchoolYear" runat="server" Text="Current Grade/Year in School">
                    <asp:TextBox ID="txtCurrentSchoolYear" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblSchoolName" runat="server" Text="School and/or program name">
                    <asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblCurrentGradYear" runat="server" Text="Expected Year of Graduation: ">
                    <asp:DropDownList ID="ddlCurrentGradYear" runat="server">
                        <asp:ListItem Value="2016"></asp:ListItem>
                        <asp:ListItem Value="2017"></asp:ListItem>
                        <asp:ListItem Value="2018"></asp:ListItem>
                        <asp:ListItem Value="2019"></asp:ListItem>
                        <asp:ListItem Value="2020"></asp:ListItem>
                        <asp:ListItem Value="2021"></asp:ListItem>  
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblGradDescription" runat="server" Text="Graduatining from: ">
                    <asp:DropDownList ID="ddlGraduatingFrom" runat="server">
                        <asp:ListItem Value="8th Grade"></asp:ListItem>
                        <asp:ListItem Value="High School"></asp:ListItem>
                        <asp:ListItem Value="College"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblCollegePlan" runat="server" Text="Do you plan on going to college or a trade school?">
                    <asp:DropDownList ID="ddlCollegePlan" runat="server">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="I don't know"></asp:ListItem>
                        <asp:ListItem Value="I am currently in college/trade school"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblMajor" runat="server" Text="What would you like to major in?">
                    <asp:TextBox ID="txtMajor" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblCollege" runat="server" Text="What college/trade school would you want to go to?">
                    <asp:TextBox ID="txtCollege" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPastSchool" runat="server" Text="Name of last school attended: ">
                    <asp:TextBox ID="txtPastSchool" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPastGradYear" runat="server">
                    <!-- year of graduation date picker with date drop downs --></asp:Label><br />
                    <asp:Label ID="lblStudyTopic" runat="server" Text="What did you study?">
                    <asp:TextBox ID="txtStudyTopic" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblFurtherEducation" runat="server" Text="Do you plan on furthering your education?">
                    <asp:Label ID="lblFurtherEdDesc" runat="server" Text="I.E: Grad School, Trade School, Certification Programs, etc."></asp:Label><br />
                    <asp:DropDownList ID="ddlFutureEducation" runat="server">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="I don't know"></asp:ListItem>
                    </asp:DropDownList></asp:Label>
            </div>
            <div id="uiFifth">
                    <b><u><asp:Label ID="lblEmploymentHistory" runat="server" Text="Employment History"></asp:Label></u></b><br />
                    <asp:Label ID="lblCurrentJob" runat="server" Text="Do you currently have a job?"></asp:Label><br />
                    <asp:RadioButton ID="rdoJobYes" runat="server" Text="Yes" GroupName="currentJob"/>
                    <asp:RadioButton ID="rdoJobNo" runat="server" Text="No" GroupName="currentJob"/>
                    <asp:Label ID="lblWork" runat="server" Text="If yes, where do you work? What do you do?">
                    <asp:TextBox textmode="MultiLine" ID="txtWorkDesc" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPay" runat="server" Text="How much money do you make per hour?"></asp:Label><br />
                    <asp:RadioButton ID="rdo7to10" runat="server" Text="$7.00 - $10.00" GroupName="hourlyPay"/>
                    <asp:RadioButton ID="rdo10to15" runat="server" Text="$10.00 - $50.00" GroupName="hourlyPay"/>
                    <asp:RadioButton ID="rdo15to20" runat="server" Text="$15.00 - $20.00" GroupName="hourlyPay"/>
                    <asp:RadioButton ID="rdo20to25" runat="server" Text="$20.00 - $25.00" GroupName="hourlyPay"/>
                    <asp:RadioButton ID="rdo25to30" runat="server" Text="$25.00 - $30.00" GroupName="hourlyPay"/>
                    <asp:RadioButton ID="rdo30" runat="server" Text="$30.00 >" GroupName="hourlyPay"/>
                    <asp:RadioButton ID="rdoSalaried" runat="server" Text="Salaried" GroupName="hourlyPay"/>
                    <asp:RadioButton ID="rdoOther" runat="server" Text="Other:" GroupName="hourlyPay"></asp:RadioButton>
                    <asp:TextBox ID="txtOtherPay" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblCareerGoal" runat="server" Text="Do you have a career goal? If yes, what is it?">
                    <asp:TextBox textmode="MultiLine" ID="txtCareerGoal" runat="server"></asp:TextBox></asp:Label><br />
                    <asp:Label ID="lblPayWant" runat="server" Text="How much money do you WANT to make per hour?"></asp:Label><br />
                    <asp:RadioButton ID="rdoW7to10" runat="server" Text="$7.00 - $10.00" GroupName="payWant"/>
                    <asp:RadioButton ID="rdoW10to15" runat="server" Text="$10.00 - $50.00" GroupName="payWant"/>
                    <asp:RadioButton ID="rdoW15to20" runat="server" Text="$15.00 - $20.00" GroupName="payWant"/>
                    <asp:RadioButton ID="rdoW20to25" runat="server" Text="$20.00 - $25.00" GroupName="payWant"/>
                    <asp:RadioButton ID="rdoW25to30" runat="server" Text="$25.00 - $30.00" GroupName="payWant"/>
                    <asp:RadioButton ID="rdoW30" runat="server" Text="$30.00 >" GroupName="payWant"/>
                    <asp:RadioButton ID="rdoWSalaried" runat="server" Text="Salaried" GroupName="payWant"/>
                    <asp:RadioButton ID="rdoWOther" runat="server" Text="Other:" GroupName="payWant"></asp:RadioButton>
                    <asp:TextBox ID="txtWOtherPay" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblResume" runat="server" Text="Do you currently have a resume?">
                    <asp:DropDownList ID="ddResume" runat="server">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="What's a resume?"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblArtisticResume" runat="server" Text="Do you currently have an artistic resume?">
                    <asp:DropDownList ID="ddArtisticResume" runat="server">
                        <asp:ListItem Value="Yes"></asp:ListItem>
                        <asp:ListItem Value="No"></asp:ListItem>
                        <asp:ListItem Value="What's an artistic resume?"></asp:ListItem>
                    </asp:DropDownList></asp:Label><br />
                    <asp:Label ID="lblWorkshops" runat="server" Text="Which of the following workshops would you like to participate in?"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Check ALL that apply. If none, check none"></asp:Label>
                    <asp:CheckBox ID="ckCollegePrep" runat="server" Text="Preparing for College"/><br />
                    <asp:CheckBox ID="ckInterview" runat="server" Text="Interviewing Skills"/><br />
                    <asp:CheckBox ID="ckResume" runat="server" Text="Resume Development"/><br />
                    <asp:CheckBox ID="ckIProperty" runat="server" Text="Intellectual Property"/><br />
                    <asp:CheckBox ID="ckPortfolio" runat="server" Text="Portfolio Building"/><br />
                    <asp:CheckBox ID="ckNone" runat="server" Text="None"/><br />
            </div>
        </div>
        
        <br />
            
    </form>
  
</body>
</html>
