<%@ Page language="c#" Codebehind="exam_add.cs" AutoEventWireup="false" Inherits="schedularforexam.exam_add" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>exam_add</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#ccccff">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="lblcid" style="Z-INDEX: 101; LEFT: 88px; POSITION: absolute; TOP: 120px" runat="server"
				Font-Bold="True">Certification ID</asp:Label>
			<asp:TextBox id="txtcid" style="Z-INDEX: 102; LEFT: 240px; POSITION: absolute; TOP: 120px" runat="server"
				tabIndex="1" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:TextBox id="txtexam" style="Z-INDEX: 103; LEFT: 240px; POSITION: absolute; TOP: 176px" runat="server"
				tabIndex="2" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblexam" style="Z-INDEX: 104; LEFT: 88px; POSITION: absolute; TOP: 176px" runat="server"
				Font-Bold="True">Certification Exam</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 105; LEFT: 232px; POSITION: absolute; TOP: 248px" runat="server"
				Text="Next Add"></asp:Button>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 106; LEFT: 424px; POSITION: absolute; TOP: 120px"
				runat="server" ErrorMessage="Enter Certification Id" Display="Dynamic" ControlToValidate="txtcid"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 107; LEFT: 424px; POSITION: absolute; TOP: 176px"
				runat="server" ErrorMessage="Enter Certification Exam" ControlToValidate="txtexam" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:Label id="lbltitle" style="Z-INDEX: 108; LEFT: 120px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Bold="True" Font-Size="Large" Width="393px">Adding New Certification Exam</asp:Label>
			<asp:Label id="Label1" style="Z-INDEX: 109; LEFT: 24px; POSITION: absolute; TOP: 256px" runat="server"
				Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Visible="False">Inserted Successfully</asp:Label>
		</form>
	</body>
</HTML>
