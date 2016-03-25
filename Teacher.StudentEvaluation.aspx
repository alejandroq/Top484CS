<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.StudentEvaluation.aspx.cs" Inherits="Teacher_StudentEvaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <b><u><asp:Label ID="lblHeader" runat="server" Text="WBL Student/Student Skill Evaluation"></asp:Label></u></b><br />
        <br />
        <b><asp:Label ID="lblQuestion1" runat="server" Text="1. Student's Name: " ReadOnly="true"></asp:Label></b><asp:TextBox ID="txtQuestion1" runat="server"></asp:TextBox><br />
        <br />
        <asp:Table ID="Table2" runat="server" Width="504px" BorderStyle="Dotted" GridLines="Horizontal">
                    <asp:TableRow ID="TableRow1" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell1" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server">Unsatisfactory</asp:TableCell>
                        <asp:TableCell ID="TableCell3" runat="server">Needs Improvement</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server">Meets Expectations</asp:TableCell>
                        <asp:TableCell ID="TableCell5" runat="server">Exceeds Expectations</asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server">Exceptional</asp:TableCell>
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
                        <asp:TableCell ID="TableCell13" runat="server">Student regularly shows up to class</asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server"><input type="radio" name="q1row1" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell15" runat="server"><input type="radio" name="q1row1" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell16" runat="server"><input type="radio" name="q1row1" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell17" runat="server"><input type="radio" name="q1row1" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell18" runat="server"><input type="radio" name="q1row1" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell19" runat="server">Student is consistently on time</asp:TableCell>
                        <asp:TableCell ID="TableCell20" runat="server"><input type="radio" name="q1row2" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell21" runat="server"><input type="radio" name="q1row2" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell22" runat="server"><input type="radio" name="q1row2" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell23" runat="server"><input type="radio" name="q1row2" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell24" runat="server"><input type="radio" name="q1row2" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow5" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell25" runat="server">Student was able to help contribute to the learning environment by assisting others</asp:TableCell>
                        <asp:TableCell ID="TableCell26" runat="server"><input type="radio" name="q1row3" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell27" runat="server"><input type="radio" name="q1row3" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell28" runat="server"><input type="radio" name="q1row3" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell29" runat="server"><input type="radio" name="q1row3" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell30" runat="server"><input type="radio" name="q1row3" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow6" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell31" runat="server">Student responded well to constructive criticism</asp:TableCell>
                        <asp:TableCell ID="TableCell32" runat="server"><input type="radio" name="q1row4" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell33" runat="server"><input type="radio" name="q1row4" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell34" runat="server"><input type="radio" name="q1row4" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell35" runat="server"><input type="radio" name="q1row4" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell36" runat="server"><input type="radio" name="q1row4" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow7" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell37" runat="server">Student maintained a positive attitude both in and out of class</asp:TableCell>
                        <asp:TableCell ID="TableCell38" runat="server"><input type="radio" name="q1row5" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell39" runat="server"><input type="radio" name="q1row5" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell40" runat="server"><input type="radio" name="q1row5" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell41" runat="server"><input type="radio" name="q1row5" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell42" runat="server"><input type="radio" name="q1row5" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow8" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell43" runat="server">Student was motivated to learn</asp:TableCell>
                        <asp:TableCell ID="TableCell44" runat="server"><input type="radio" name="q1row6" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell45" runat="server"><input type="radio" name="q1row6" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell46" runat="server"><input type="radio" name="q1row6" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell47" runat="server"><input type="radio" name="q1row6" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell48" runat="server"><input type="radio" name="q1row6" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow9" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell49" runat="server">Student was able to produce a final project or skill presentation</asp:TableCell>
                        <asp:TableCell ID="TableCell50" runat="server"><input type="radio" name="q1row7" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell51" runat="server"><input type="radio" name="q1row7" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell52" runat="server"><input type="radio" name="q1row7" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell53" runat="server"><input type="radio" name="q1row7" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell54" runat="server"><input type="radio" name="q1row7" value="5"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow10" runat="server" HorizontalAlign="Center">
                        <asp:TableCell ID="TableCell55" runat="server">Student was engaged in other components of Words Beats and Life</asp:TableCell>
                        <asp:TableCell ID="TableCell56" runat="server"><input type="radio" name="q1row8" value="1"/></asp:TableCell>
                        <asp:TableCell ID="TableCell57" runat="server"><input type="radio" name="q1row8" value="2"/></asp:TableCell>
                        <asp:TableCell ID="TableCell58" runat="server"><input type="radio" name="q1row8" value="3"/></asp:TableCell>
                        <asp:TableCell ID="TableCell59" runat="server"><input type="radio" name="q1row8" value="4"/></asp:TableCell>
                        <asp:TableCell ID="TableCell60" runat="server"><input type="radio" name="q1row8" value="5"/></asp:TableCell>
                    </asp:TableRow>
                </asp:Table><br />
        <b><asp:Label ID="lblQuestion2" runat="server" Text="2. What are the student's strengths? "></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion2" runat="server" Height="75px" Width="500px" TextMode="MultiLine"></asp:TextBox><br />
        <br />
        <b><asp:Label ID="lblQuestion3" runat="server" Text="3. What are the student's areas for growth and improvement? "></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion3" runat="server" Height="75px" Width="500px" TextMode="MultiLine"></asp:TextBox><br />
        <br />
        <b><asp:Label ID="lblQuestion4" runat="server" Text="4. Is there anything else you would like to comment on? "></asp:Label></b><br />
        <asp:TextBox ID="txtQuestion4" runat="server" Height="75px" Width="500px" TextMode="MultiLine"></asp:TextBox><br />
        <br />
    
    </div>

        <div>

            <!-- Teacher evaluation of student skills-->

            <asp:Label ID="lblDJSESkill" runat="server" Text="Skill evaluation"></asp:Label>

            <asp:Label ID="lblDJSSkillEDesc" runat="server" Text="Use the picture below to rate your ability in the following areas."></asp:Label>

            <asp:Label ID="lblDJSERecognition" runat="server" Text="Recognition">

                    <asp:Label ID="lblDJSSRecNumb" runat="server" Text="Out of 5"></asp:Label>

                    <asp:Textbox id="txtDJSSRecNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for recognition -->

            <asp:Label ID="lblDJSSTech" runat="server" Text="Technology">

                    <asp:Label ID="lblDJSSTechNumb" runat="server" Text="Out of 10"></asp:Label>

                    <asp:Textbox id="txtDJSSTechNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for technoloy -->

            <asp:Label ID="lblDJSSMixing" runat="server" Text="Mixing">

                    <asp:Label ID="lblDJSSMixNumb" runat="server" Text="Out of 15"></asp:Label>

                    <asp:Textbox id="txtDJSSMixNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for mixing -->           

            <asp:Label ID="lblDJSSScratch" runat="server" Text="Scratching">

                    <asp:Label ID="lblDJSSScratchNumb" runat="server" Text="Out of 15"></asp:Label>

                    <asp:Textbox id="txtDJSSScratchNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for scratching -->  

            <asp:Label ID="lblDJSSProf" runat="server" Text="Being Professional">

                    <asp:Label ID="lblDJSSProfNumb" runat="server" Text="Out of 10"></asp:Label>

                    <asp:Textbox id="txtDJSSProbNumb" runat="server" placeholder="Your answer">  </asp:Textbox></asp:Label>

                    <!-- add description table for proffesional -->  

            <asp:Label ID="lblDJSSPres" runat="server" Text="Presentation">

                    <asp:Label ID="lblDJSSPresNumb" runat="server" Text="Out of 35"></asp:Label>

                    <asp:Textbox id="txtDJSSPresNumb" runat="server" placeholder="Your answer"></asp:Textbox></asp:Label>

                    <!-- add description table for prestation -->          

 

 

    </div>


    </form>
</body>
</html>
