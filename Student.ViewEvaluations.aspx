<%@ Page Title="" Language="C#" MasterPageFile="StudentMasterPage.master" AutoEventWireup="true" CodeFile="Student.ViewEvaluations.aspx.cs" Inherits="Student_ViewEvaluations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
      <form id="form1" runat="server">
          <div>
              <b><u>
              <asp:Label ID="lblHeader" runat="server" Text="WBL Student/Student Skill Evaluation"></asp:Label>
              </u></b>
              <br />
              <br /><b>
              <asp:Label ID="lblQuestion1" runat="server" Text="1. Student's Name: "></asp:Label>
              </b>
              <asp:TextBox ID="txtQuestion1" runat="server"></asp:TextBox>
              <br />
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
                      <asp:TableCell ID="TableCell7" runat="server">Question</asp:TableCell>
                      <asp:TableCell ID="TableCell8" runat="server"> Instructor Response</asp:TableCell>
                      <asp:TableCell ID="TableCell9" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell10" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell11" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell12" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow3" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell13" runat="server">Student regularly shows up to class</asp:TableCell>
                      <asp:TableCell ID="TableCell14" runat="server"><%--<input type="radio" id ="rb1Row1" name="q1row1" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell15" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell16" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell17" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell18" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow4" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell19" runat="server">Student is consistently on time</asp:TableCell>
                      <asp:TableCell ID="TableCell20" runat="server"><%--<input type="radio" name="q1row2" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell21" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell22" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell23" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell24" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow5" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell25" runat="server">Student was able to help contribute to the learning environment by assisting others</asp:TableCell>
                      <asp:TableCell ID="TableCell26" runat="server"><%--<input type="radio" name="q1row3" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell27" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell28" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell29" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell30" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow6" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell31" runat="server">Student responded well to constructive criticism</asp:TableCell>
                      <asp:TableCell ID="TableCell32" runat="server"><%--<input type="radio" name="q1row4" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell33" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell34" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell35" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell36" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow7" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell37" runat="server">Student maintained a positive attitude both in and out of class</asp:TableCell>
                      <asp:TableCell ID="TableCell38" runat="server"><%--<input type="radio" name="q1row5" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell39" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell40" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell41" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell42" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow8" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell43" runat="server">Student was motivated to learn</asp:TableCell>
                      <asp:TableCell ID="TableCell44" runat="server"><%--<input type="radio" name="q1row6" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell45" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell46" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell47" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell48" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow9" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell49" runat="server">Student was able to produce a final project or skill presentation</asp:TableCell>
                      <asp:TableCell ID="TableCell50" runat="server"><%--<input type="radio" name="q1row7" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell51" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell52" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell53" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell54" runat="server"></asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow ID="TableRow10" runat="server" HorizontalAlign="Center">
                      <asp:TableCell ID="TableCell55" runat="server">Student was engaged in other components of Words Beats and Life</asp:TableCell>
                      <asp:TableCell ID="TableCell56" runat="server"><%--<input type="radio" name="q1row8" value="1"/>--%></asp:TableCell>
                      <asp:TableCell ID="TableCell57" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell58" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell59" runat="server"></asp:TableCell>
                      <asp:TableCell ID="TableCell60" runat="server"></asp:TableCell>
                  </asp:TableRow>
              </asp:Table>
              <br /><b>
              <asp:Label ID="lblQuestion2" runat="server" Text="2. What are the student's strengths? "></asp:Label>
              </b>
              <br />
              <asp:TextBox ID="txtQuestion2" runat="server" Height="75px" Width="500px" TextMode="MultiLine"></asp:TextBox>
              <br />
              <br /><b>
              <asp:Label ID="lblQuestion3" runat="server" Text="3. What are the student's areas for growth and improvement? "></asp:Label>
              </b>
              <br />
              <asp:TextBox ID="txtQuestion3" runat="server" Height="75px" Width="500px" TextMode="MultiLine"></asp:TextBox>
              <br />
              <br /><b>
              <asp:Label ID="lblQuestion4" runat="server" Text="4. Is there anything else you would like to comment on? "></asp:Label>
              </b>
              <br />
              <asp:TextBox ID="txtQuestion4" runat="server" Height="75px" Width="500px" TextMode="MultiLine"></asp:TextBox>
              <br />
              <br />
          </div>
      </form>
</asp:Content>

