<%@ Page language="c#" Codebehind="fixingdate.cs" AutoEventWireup="false" Inherits="schedularforexam.fixingdate" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>fixingdate</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#99ff99" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:dropdownlist id="cboCE" style="Z-INDEX: 101; LEFT: 328px; POSITION: absolute; TOP: 64px" runat="server"
				BackColor="#FFE0C0" AutoPostBack="True"></asp:dropdownlist><asp:dropdownlist id="cboCity" style="Z-INDEX: 102; LEFT: 328px; POSITION: absolute; TOP: 120px" runat="server"
				BackColor="#FFE0C0" AutoPostBack="True"></asp:dropdownlist><asp:dropdownlist id="cboCenter" style="Z-INDEX: 103; LEFT: 328px; POSITION: absolute; TOP: 176px"
				runat="server" BackColor="#FFE0C0" AutoPostBack="True"></asp:dropdownlist><asp:dropdownlist id="DropDownList4" style="Z-INDEX: 104; LEFT: 328px; POSITION: absolute; TOP: 232px"
				runat="server" BackColor="#FFE0C0" AutoPostBack="True"></asp:dropdownlist><asp:dropdownlist id="DropDownList5" style="Z-INDEX: 105; LEFT: 328px; POSITION: absolute; TOP: 280px"
				runat="server" BackColor="#FFE0C0"></asp:dropdownlist><asp:label id="lblCertExam" style="Z-INDEX: 106; LEFT: 136px; POSITION: absolute; TOP: 64px"
				runat="server" Font-Bold="True">Certification Exam</asp:label><asp:label id="lblCity" style="Z-INDEX: 107; LEFT: 136px; POSITION: absolute; TOP: 120px" runat="server"
				Font-Bold="True">City</asp:label><asp:label id="lblCenter" style="Z-INDEX: 108; LEFT: 136px; POSITION: absolute; TOP: 176px"
				runat="server" Font-Bold="True">Center</asp:label><asp:label id="lblAvbdate" style="Z-INDEX: 109; LEFT: 136px; POSITION: absolute; TOP: 232px"
				runat="server" Font-Bold="True">Available Dates</asp:label><asp:label id="lblExamtime" style="Z-INDEX: 110; LEFT: 136px; POSITION: absolute; TOP: 280px"
				runat="server" Font-Bold="True">Exam Time</asp:label><asp:button id="Button1" style="Z-INDEX: 111; LEFT: 136px; POSITION: absolute; TOP: 328px" runat="server"
				Text="Submit"></asp:button><asp:label id="lblTitle" style="Z-INDEX: 112; LEFT: 136px; POSITION: absolute; TOP: 16px" runat="server"
				Font-Bold="True" Font-Size="Large">Select The City,Center,and Date for the Exam</asp:label><asp:label id="lblErrtime" style="Z-INDEX: 113; LEFT: 472px; POSITION: absolute; TOP: 288px"
				runat="server" Visible="False">There is no vacancy at the selected time </asp:label><asp:label id="lblErrdate" style="Z-INDEX: 114; LEFT: 472px; POSITION: absolute; TOP: 232px"
				runat="server" Visible="False">There is no vacancy on the selected date</asp:label><asp:label id="lblErrcenter" style="Z-INDEX: 115; LEFT: 472px; POSITION: absolute; TOP: 176px"
				runat="server" Visible="False">There is no vacancy at the selected center</asp:label><asp:label id="lblErrcity" style="Z-INDEX: 116; LEFT: 472px; POSITION: absolute; TOP: 120px"
				runat="server" Visible="False">There is no vacancy in the selected city</asp:label></form>
	</body>
</HTML>
