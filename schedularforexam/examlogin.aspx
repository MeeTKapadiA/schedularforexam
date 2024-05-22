<%@ Page language="c#" Codebehind="examlogin.cs" AutoEventWireup="false" Inherits="schedularforexam.examlogin" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>examlogin</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#ccff99">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="lblEid" style="Z-INDEX: 101; LEFT: 280px; POSITION: absolute; TOP: 96px" runat="server"
				Font-Bold="True">ExamineeID</asp:Label>
			<asp:TextBox id="txtEid" style="Z-INDEX: 102; LEFT: 400px; POSITION: absolute; TOP: 96px" runat="server"
				BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblEpwd" style="Z-INDEX: 103; LEFT: 280px; POSITION: absolute; TOP: 152px" runat="server"
				Font-Bold="True">Password</asp:Label>
			<asp:TextBox id="txtEpwd" style="Z-INDEX: 104; LEFT: 400px; POSITION: absolute; TOP: 152px" runat="server"
				TextMode="Password" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 105; LEFT: 376px; POSITION: absolute; TOP: 216px" runat="server"
				Text="Login"></asp:Button>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 106; LEFT: 584px; POSITION: absolute; TOP: 96px"
				runat="server" ErrorMessage="Examinee Id cannot be empty" ControlToValidate="txtEid"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 107; LEFT: 584px; POSITION: absolute; TOP: 152px"
				runat="server" ErrorMessage="Examinee Password Must be entered" Display="Dynamic" ControlToValidate="txtEpwd"></asp:RequiredFieldValidator>
			<asp:Label id="lblTitle" style="Z-INDEX: 108; LEFT: 296px; POSITION: absolute; TOP: 32px" runat="server"
				Font-Bold="True" Font-Size="Large">Examinee Login </asp:Label>
			<asp:Label id="lblInvalidEpwd" style="Z-INDEX: 109; LEFT: 96px; POSITION: absolute; TOP: 152px"
				runat="server" ForeColor="Red" Visible="False" Font-Bold="True" Font-Size="Medium">Invalid password</asp:Label>
			<asp:Label id="lblInvalidEid" style="Z-INDEX: 110; LEFT: 128px; POSITION: absolute; TOP: 104px"
				runat="server" Font-Bold="True" Font-Size="Medium" Visible="False" ForeColor="Red">Invalid ID</asp:Label>
		</form>
	</body>
</HTML>
