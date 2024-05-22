<%@ Page language="c#" Codebehind="Display.cs" AutoEventWireup="false" Inherits="schedularforexam.Display" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Display</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#99ffcc">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 136px; POSITION: absolute; TOP: 104px" runat="server"
				Font-Bold="True">Examination</asp:Label>
			<asp:Label id="date" style="Z-INDEX: 118; LEFT: 336px; POSITION: absolute; TOP: 144px" runat="server"></asp:Label>
			<asp:Label id="exam" style="Z-INDEX: 117; LEFT: 336px; POSITION: absolute; TOP: 104px" runat="server"></asp:Label>
			<asp:Label id="htkt" style="Z-INDEX: 116; LEFT: 336px; POSITION: absolute; TOP: 72px" runat="server"></asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 103; LEFT: 136px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Bold="True">Examination date</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 104; LEFT: 136px; POSITION: absolute; TOP: 184px" runat="server"
				Font-Bold="True">Examination time</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 105; LEFT: 136px; POSITION: absolute; TOP: 224px" runat="server"
				Font-Bold="True">Examination City</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 106; LEFT: 136px; POSITION: absolute; TOP: 264px" runat="server"
				Font-Bold="True">Examination center</asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 107; LEFT: 136px; POSITION: absolute; TOP: 304px" runat="server"
				Font-Bold="True">Address</asp:Label>
			<asp:Label id="Label7" style="Z-INDEX: 113; LEFT: 136px; POSITION: absolute; TOP: 64px" runat="server"
				Font-Bold="True">HallTicket</asp:Label>
			<asp:Label id="Label8" style="Z-INDEX: 115; LEFT: 136px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Bold="True" Font-Size="Large">Your Examination Details are ... </asp:Label>
			<asp:Label id="time" style="Z-INDEX: 119; LEFT: 336px; POSITION: absolute; TOP: 184px" runat="server"></asp:Label>
			<asp:Label id="city" style="Z-INDEX: 120; LEFT: 336px; POSITION: absolute; TOP: 224px" runat="server"></asp:Label>
			<asp:Label id="center" style="Z-INDEX: 121; LEFT: 336px; POSITION: absolute; TOP: 264px" runat="server"></asp:Label>
			<asp:Label id="address" style="Z-INDEX: 122; LEFT: 336px; POSITION: absolute; TOP: 304px" runat="server"></asp:Label>
		</form>
	</body>
</HTML>
