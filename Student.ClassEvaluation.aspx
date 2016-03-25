<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.ClassEvaluation.aspx.cs" Inherits="Student_ClassEvaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WBL Class Evaluation</title>
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <b><u><asp:Label ID="lblHeader" runat="server" Text="WBL Class Evaluation"></asp:Label></u></b><br />
        <br />

        <b><asp:Label ID="lblQuestion1" runat="server" Text="1. What is your Name? "></asp:Label></b><asp:TextBox ID="txtQuestion1" runat="server"></asp:TextBox><br />
        <br />

        <b><asp:Label ID="lblQuestion2" runat="server" Text="2. How did you hear about this class? "></asp:Label></b><br />
        <asp:RadioButton ID="rdoFB" runat="server" Text="Facebook" GroupName="q2" />
        <asp:RadioButton ID="rdoTwitter" runat="server" Text="Twitter" GroupName="q2" />
        <asp:RadioButton ID="rdoFriend" runat="server" Text="Friend" GroupName="q2" />
        <asp:RadioButton ID="rdoParent" runat="server" Text="Parent / Guardian" GroupName="q2" /><br />
        <asp:RadioButton ID="rdoTeacher" runat="server" Text="Teacher" GroupName="q2" />
        <asp:RadioButton ID="rdoNotSure" runat="server" Text="Not Sure" GroupName="q2" />
        <asp:RadioButton ID="rdoOther" runat="server" Text="Other" GroupName="q2" />
        <asp:TextBox ID="txtOther" runat="server"></asp:TextBox><br />
        <br />

        <b><asp:Label ID="lblQuestion3" runat="server" Text="3. Do you feel safe/comfortable in class? "></asp:Label></b><br />
        <asp:RadioButton ID="rdoAlways" runat="server" Text="Always" GroupName="q3" />
        <asp:RadioButton ID="rdoMost" runat="server" Text="Most of the time" GroupName="q3" />
        <asp:RadioButton ID="rdoSome" runat="server" Text="Sometimes" GroupName="q3" />
        <asp:RadioButton ID="rdoNever" runat="server" Text="Never" GroupName="q3" /><br />
        <br />
        
        <b><asp:Label ID="lblQuestion4" runat="server" Text="4. If you answered sometimes or never, what needs to change to make you feel safe/comfortable always or most of the time?"></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion4" runat="server" Height="75px" Width="500px"></asp:TextBox><br />
        <br />

        <b><asp:Label ID="lblQuestion5" runat="server" Text="5. What skills have you developed in this class? "></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion5" runat="server" Height="75px" Width="500px"></asp:TextBox><br />
        <br />
        
        
        
       
        <b><asp:Label ID="lblQuestion6" runat="server" Text="6. In Class I get to.... "></asp:Label></b>
            <asp:Table ID="Table1" runat="server" Width="504px" BorderStyle="Dotted" GridLines="Horizontal">
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" Wrap="False"></asp:TableCell>
                    <asp:TableCell runat="server">Completely Disagree</asp:TableCell>
                    <asp:TableCell runat="server">Disagree</asp:TableCell>
                    <asp:TableCell runat="server">Neither Agree Nor Disagree</asp:TableCell>
                    <asp:TableCell runat="server">Agree</asp:TableCell>
                    <asp:TableCell runat="server">Completely Agree</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"> 1</asp:TableCell>
                    <asp:TableCell runat="server"> 2</asp:TableCell>
                    <asp:TableCell runat="server"> 3</asp:TableCell>
                    <asp:TableCell runat="server"> 4</asp:TableCell>
                    <asp:TableCell runat="server"> 5</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server">Try New Things</asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row1" value="1"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row1" value="2"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row1" value="3"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row1" value="4"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row1" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server">Learn what it takes to be an artists</asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row2" value="1"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row2" value="2"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row2" value="3"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row2" value="4"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row2" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server">Use Different Art Mediums</asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row3" value="1"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row3" value="2"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row3" value="3"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row3" value="4"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row3" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server">Make Friends</asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row4" value="1"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row4" value="2"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row4" value="3"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row4" value="4"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q6row4" value="5"/></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        <br />
                <asp:Label ID="lblQuestion7" runat="server" Text="7. This Class has helped me to.... "></asp:Label>
                <asp:Table ID="Table2" runat="server" Width="504px" BorderStyle="Dotted" GridLines="Horizontal">
                    <asp:TableRow ID="TableRow1" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell1" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server">Completely Disagree</asp:TableCell>
                        <asp:TableCell ID="TableCell3" runat="server">Disagree</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server">Neither Agree Nor Disagree</asp:TableCell>
                        <asp:TableCell ID="TableCell5" runat="server">Agree</asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server">Completely Agree</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell7" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell8" runat="server"> 1</asp:TableCell>
                        <asp:TableCell ID="TableCell9" runat="server"> 2</asp:TableCell>
                        <asp:TableCell ID="TableCell10" runat="server"> 3</asp:TableCell>
                        <asp:TableCell ID="TableCell11" runat="server"> 4</asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server"> 5</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell13" runat="server">Be motivated to learn new things</asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server"><input type="radio" name="q7row1" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell15" runat="server"><input type="radio" name="q7row1" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell16" runat="server"><input type="radio" name="q7row1" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell17" runat="server"><input type="radio" name="q7row1" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell18" runat="server"><input type="radio" name="q7row1" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell19" runat="server">Feel happy with myself</asp:TableCell>
                        <asp:TableCell ID="TableCell20" runat="server"><input type="radio" name="q7row2" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell21" runat="server"><input type="radio" name="q7row2" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell22" runat="server"><input type="radio" name="q7row2" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell23" runat="server"><input type="radio" name="q7row2" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell24" runat="server"><input type="radio" name="q7row2" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow5" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell25" runat="server">Feel positive about my future</asp:TableCell>
                        <asp:TableCell ID="TableCell26" runat="server"><input type="radio" name="q7row3" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell27" runat="server"><input type="radio" name="q7row3" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell28" runat="server"><input type="radio" name="q7row3" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell29" runat="server"><input type="radio" name="q7row3" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell30" runat="server"><input type="radio" name="q7row3" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow6" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell31" runat="server">Work with other young artists like me</asp:TableCell>
                        <asp:TableCell ID="TableCell32" runat="server"><input type="radio" name="q7row4" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell33" runat="server"><input type="radio" name="q7row4" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell34" runat="server"><input type="radio" name="q7row4" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell35" runat="server"><input type="radio" name="q7row4" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell36" runat="server"><input type="radio" name="q7row4" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow7" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell37" runat="server">Use my art to deal with stress</asp:TableCell>
                        <asp:TableCell ID="TableCell38" runat="server"><input type="radio" name="q7row5" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell39" runat="server"><input type="radio" name="q7row5" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell40" runat="server"><input type="radio" name="q7row5" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell41" runat="server"><input type="radio" name="q7row5" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell42" runat="server"><input type="radio" name="q7row5" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow8" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell43" runat="server">Respect people who are different than me</asp:TableCell>
                        <asp:TableCell ID="TableCell44" runat="server"><input type="radio" name="q7row6" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell45" runat="server"><input type="radio" name="q7row6" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell46" runat="server"><input type="radio" name="q7row6" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell47" runat="server"><input type="radio" name="q7row6" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell48" runat="server"><input type="radio" name="q7row6" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow9" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell49" runat="server">Resist negativity or negative peer influences</asp:TableCell>
                        <asp:TableCell ID="TableCell50" runat="server"><input type="radio" name="q7row7" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell51" runat="server"><input type="radio" name="q6row7" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell52" runat="server"><input type="radio" name="q6row7" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell53" runat="server"><input type="radio" name="q6row7" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell54" runat="server"><input type="radio" name="q6row7" value="5"/></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            <br />
            <b><asp:Label ID="lblQuestion8" runat="server" Text="8. I am sure that I will...  "></asp:Label></b>
            <asp:Table ID="Table3" runat="server" Width="504px" BorderStyle="Dotted" GridLines="Horizontal">
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">Completely Disagree</asp:TableCell>
                    <asp:TableCell runat="server">Disagree</asp:TableCell>
                    <asp:TableCell runat="server">Neither Agree Nor Disagree</asp:TableCell>
                    <asp:TableCell runat="server">Agree</asp:TableCell>
                    <asp:TableCell runat="server">Completely Agree</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"> 1</asp:TableCell>
                    <asp:TableCell runat="server"> 2</asp:TableCell>
                    <asp:TableCell runat="server"> 3</asp:TableCell>
                    <asp:TableCell runat="server"> 4</asp:TableCell>
                    <asp:TableCell runat="server"> 5</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server">Continue growing as an artist</asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row1" value="1"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row1" value="2"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row1" value="3"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row1" value="4"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row1" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server">Finish school (High-School/College)</asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row2" value="1"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row2" value="2"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row2" value="3"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row2" value="4"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row2" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server">Be able to find and do well in a job that I enjoy</asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row3" value="1"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row3" value="2"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row3" value="3"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row3" value="4"/></asp:TableCell>
                    <asp:TableCell runat="server"><input type="radio" name="q8row3" value="5"/></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        <br />
        <br />
        <b><u><asp:Label ID="lblTeacher" runat="server" Text="Teacher Evaluation"></asp:Label></u></b><br />
        <br />
        <b><asp:Label ID="lblQuestion1t" runat="server" Text="1. What is the teacher's name?  "></asp:Label></b><asp:TextBox ID="txtQuestion9a" runat="server"></asp:TextBox><br />
        <asp:Table ID="Table4" runat="server" Width="504px" BorderStyle="Dotted" GridLines="Horizontal">
                <asp:TableRow ID="TableRow10" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell55" runat="server"></asp:TableCell>
                    <asp:TableCell ID="TableCell56" runat="server">Unsatisfactory</asp:TableCell>
                    <asp:TableCell ID="TableCell57" runat="server">Needs Improvement</asp:TableCell>
                    <asp:TableCell ID="TableCell58" runat="server">Meets Expectations</asp:TableCell>
                    <asp:TableCell ID="TableCell59" runat="server">Exceeds Expectations</asp:TableCell>
                    <asp:TableCell ID="TableCell60" runat="server">Exceptional</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow11" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell61" runat="server"></asp:TableCell>
                    <asp:TableCell ID="TableCell62" runat="server"> 1</asp:TableCell>
                    <asp:TableCell ID="TableCell63" runat="server"> 2</asp:TableCell>
                    <asp:TableCell ID="TableCell64" runat="server"> 3</asp:TableCell>
                    <asp:TableCell ID="TableCell65" runat="server"> 4</asp:TableCell>
                    <asp:TableCell ID="TableCell66" runat="server"> 5</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow12" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell67" runat="server">Teacher regularly shows up for class</asp:TableCell>
                    <asp:TableCell ID="TableCell68" runat="server"><input type="radio" name="q9row1" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell69" runat="server"><input type="radio" name="q9row1" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell70" runat="server"><input type="radio" name="q9row1" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell71" runat="server"><input type="radio" name="q9row1" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell72" runat="server"><input type="radio" name="q9row1" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow13" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell73" runat="server">Teacher is consistently on time</asp:TableCell>
                    <asp:TableCell ID="TableCell74" runat="server"><input type="radio" name="q9row2" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell75" runat="server"><input type="radio" name="q9row2" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell76" runat="server"><input type="radio" name="q9row2" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell77" runat="server"><input type="radio" name="q9row2" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell78" runat="server"><input type="radio" name="q9row2" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow14" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell79" runat="server">Teacher managed students well and maintained the learning environment</asp:TableCell>
                    <asp:TableCell ID="TableCell80" runat="server"><input type="radio" name="q9row3" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell81" runat="server"><input type="radio" name="q9row3" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell82" runat="server"><input type="radio" name="q9row3" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell83" runat="server"><input type="radio" name="q9row3" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell84" runat="server"><input type="radio" name="q9row3" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow15" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell85" runat="server">Teacher was organized</asp:TableCell>
                    <asp:TableCell ID="TableCell86" runat="server"><input type="radio" name="q9row4" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell87" runat="server"><input type="radio" name="q9row4" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell88" runat="server"><input type="radio" name="q9row4" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell89" runat="server"><input type="radio" name="q9row4" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell90" runat="server"><input type="radio" name="q9row4" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow16" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell91" runat="server">Teacher offered me clear feedback on how I could improve</asp:TableCell>
                    <asp:TableCell ID="TableCell92" runat="server"><input type="radio" name="q9row5" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell93" runat="server"><input type="radio" name="q9row5" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell94" runat="server"><input type="radio" name="q9row5" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell95" runat="server"><input type="radio" name="q9row5" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell96" runat="server"><input type="radio" name="q9row5" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow17" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell97" runat="server">Teacher fostered a safe and welcoming environment</asp:TableCell>
                    <asp:TableCell ID="TableCell98" runat="server"><input type="radio" name="q9row4" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell99" runat="server"><input type="radio" name="q9row4" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell100" runat="server"><input type="radio" name="q9row4" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell101" runat="server"><input type="radio" name="q9row4" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell102" runat="server"><input type="radio" name="q9row4" value="5"/></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow18" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell103" runat="server">Teacher challenged me to learn and develop skills</asp:TableCell>
                    <asp:TableCell ID="TableCell104" runat="server"><input type="radio" name="q9row5" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell105" runat="server"><input type="radio" name="q9row5" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell106" runat="server"><input type="radio" name="q9row5" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell107" runat="server"><input type="radio" name="q9row5" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell108" runat="server"><input type="radio" name="q9row5" value="5"/></asp:TableCell>
                </asp:TableRow>
            <asp:TableRow ID="TableRow19" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell109" runat="server">Activities were planned</asp:TableCell>
                    <asp:TableCell ID="TableCell110" runat="server"><input type="radio" name="q9row6" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell111" runat="server"><input type="radio" name="q9row6" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell112" runat="server"><input type="radio" name="q9row6" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell113" runat="server"><input type="radio" name="q9row6" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell114" runat="server"><input type="radio" name="q9row6" value="5"/></asp:TableCell>
                </asp:TableRow>
            <asp:TableRow ID="TableRow20" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell115" runat="server">Teacher did their job well</asp:TableCell>
                    <asp:TableCell ID="TableCell116" runat="server"><input type="radio" name="q9row7" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell117" runat="server"><input type="radio" name="q9row7" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell118" runat="server"><input type="radio" name="q9row7" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell119" runat="server"><input type="radio" name="q9row7" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell120" runat="server"><input type="radio" name="q9row7" value="5"/></asp:TableCell>
                </asp:TableRow>
            <asp:TableRow ID="TableRow21" runat="server" HorizontalAlign="Center">
                    <asp:TableCell ID="TableCell121" runat="server">Teacher was supportive of my development as a young artist</asp:TableCell>
                    <asp:TableCell ID="TableCell122" runat="server"><input type="radio" name="q9row8" value="1"/></asp:TableCell>
                    <asp:TableCell ID="TableCell123" runat="server"><input type="radio" name="q9row8" value="2"/></asp:TableCell>
                    <asp:TableCell ID="TableCell124" runat="server"><input type="radio" name="q9row8" value="3"/></asp:TableCell>
                    <asp:TableCell ID="TableCell125" runat="server"><input type="radio" name="q9row8" value="4"/></asp:TableCell>
                    <asp:TableCell ID="TableCell126" runat="server"><input type="radio" name="q9row8" value="5"/></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        <br />
        <b><asp:Label ID="lblQuestion2t" runat="server" Text="2. What are this teacher's strengths?"></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion2t" runat="server" Height="75px" Width="500px"></asp:TextBox><br />
        <br />
        <b><asp:Label ID="lblQuestion3t" runat="server" Text="3. What are the teacher's areas for growth and improvement?"></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion3t" runat="server" Height="75px" Width="500px"></asp:TextBox><br />
        <br />
        <b><asp:Label ID="lblQuestion4t" runat="server" Text="4. Is there anything else you would like to comment on?"></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion4t" runat="server" Height="75px" Width="500px"></asp:TextBox><br />
        <br />
        <b><asp:Label ID="lblQuestion5t" runat="server" Text="5. Is this class taught by an additional teacher?"></asp:Label></b><br />
        <asp:RadioButton ID="rdoYes" runat="server" Text="Yes" GroupName="q5t" /><asp:RadioButton ID="rdoNo" runat="server" Text="No" GroupName="q5t" />
        <br />

        </div>

        <div>

            <asp:Label ID="lblDJClassEval" runat="server" Text="WBL DJ Class Evaluation"></asp:Label>

            <asp:Label ID="lblDJEQ1" runat="server" Text="How would you describe your participating in class?"></asp:Label>

                <asp:RadioButton ID="rdo1Always" runat="server" Text="I always participate to my fullest potential" GroupName="qDJE1" />

                <asp:RadioButton ID="rdo1Sometimes" runat="server" Text="I someties wait for others to participate and then I'll join in " GroupName="qDJE1" />

                <asp:RadioButton ID="rdo1Little" runat="server" Text="I like just being in the class but don't always speak or participate" GroupName="qDJE1" />

            <asp:Label ID="lblDJEQ2" runat="server" Text="Did you finish a final piece of work for All City?"></asp:Label>

                <asp:RadioButton ID="rdo2Yes" runat="server" Text="Yes" GroupName="qDJE2" />

                <asp:RadioButton ID="rdo2No" runat="server" Text="No" GroupName="qDJE2" />

           

            <asp:Label ID="lblDJSelfEval" runat="server" Text="Self skill evaluation"></asp:Label>

            <asp:Label ID="lblDJSelfEDesc" runat="server" Text="Use the picture below to rate your ability in the following areas."></asp:Label>

            <asp:Label ID="lblDJSERecognition" runat="server" Text="Recognition">

                    <asp:Label ID="lblDJSERecNumb" runat="server" Text="Out of 5"></asp:Label>

                    <asp:Textbox id="txtRecognitionNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for recognition -->

            <asp:Label ID="lblDJSETech" runat="server" Text="Technology">

                    <asp:Label ID="lblDJSETechNumb" runat="server" Text="Out of 10"></asp:Label>

                    <asp:Textbox id="txtDJSETechNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for technoloy -->

            <asp:Label ID="lblDJSEMixing" runat="server" Text="Mixing">

                    <asp:Label ID="lblDJSEMixNumb" runat="server" Text="Out of 15"></asp:Label>

                    <asp:Textbox id="txtDJSEMixNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for mixing -->           

            <asp:Label ID="lblDJSEScratch" runat="server" Text="Scratching">

                    <asp:Label ID="lblDJSEScratchNumb" runat="server" Text="Out of 15"></asp:Label>

                    <asp:Textbox id="txtDJSEScratchNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for scratching -->  

            <asp:Label ID="lblDJSEProf" runat="server" Text="Being Professional">

                    <asp:Label ID="lblDJSEProfNumb" runat="server" Text="Out of 10"></asp:Label>

                    <asp:Textbox id="txtDJSEProbNumb" runat="server" placeholder="Your answer">  </asp:Textbox></asp:Label>

                    <!-- add description table for proffesional -->  

            <asp:Label ID="lblDJSEPres" runat="server" Text="Presentation">

                    <asp:Label ID="lblDJSEPresNumb" runat="server" Text="Out of 35"></asp:Label>

                    <asp:Textbox id="txtDJSEPresNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for prestation -->           

 

             </div>


    </form>
</body>
</html>
