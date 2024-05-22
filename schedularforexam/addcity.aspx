<%@ Page language="c#" Codebehind="addcity.cs" AutoEventWireup="false" Inherits="schedularforexam.addcity" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>addcity</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#ccccff">
		<form id="Form1" method="post" runat="server">
			<asp:TextBox id="txtccode" style="Z-INDEX: 101; LEFT: 376px; POSITION: absolute; TOP: 88px" runat="server"
				tabIndex="1" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:TextBox id="txtcname" style="Z-INDEX: 102; LEFT: 376px; POSITION: absolute; TOP: 144px"
				runat="server" tabIndex="2" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblccode" style="Z-INDEX: 103; LEFT: 152px; POSITION: absolute; TOP: 80px" runat="server"
				Font-Bold="True">City Code</asp:Label>
			<asp:Label id="lblcname" style="Z-INDEX: 104; LEFT: 152px; POSITION: absolute; TOP: 144px"
				runat="server" Font-Bold="True">City Name</asp:Label>
			<asp:TextBox id="txtcenters" style="Z-INDEX: 105; LEFT: 376px; POSITION: absolute; TOP: 184px"
				runat="server" tabIndex="3" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblcenters" style="Z-INDEX: 106; LEFT: 152px; POSITION: absolute; TOP: 184px"
				runat="server" Font-Bold="True">No Of Centers</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 107; LEFT: 296px; POSITION: absolute; TOP: 248px" runat="server"
				Text="Next Add" tabIndex="4"></asp:Button>
			<asp:Label id="lbltitle" style="Z-INDEX: 108; LEFT: 232px; POSITION: absolute; TOP: 32px" runat="server"
				Font-Bold="True" Font-Size="Large" Width="208px">Adding New City</asp:Label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 109; LEFT: 576px; POSITION: absolute; TOP: 88px"
				runat="server" ErrorMessage="Enter the City Code" Display="Dynamic" ControlToValidate="txtccode"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 110; LEFT: 576px; POSITION: absolute; TOP: 144px"
				runat="server" ErrorMessage="Enter the City" Display="Dynamic" ControlToValidate="txtcname"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 111; LEFT: 576px; POSITION: absolute; TOP: 192px"
				runat="server" ErrorMessage="Enter No of Centers" Display="Dynamic" ControlToValidate="txtcenters"></asp:RequiredFieldValidator>
			<asp:Label id="Label1" style="Z-INDEX: 112; LEFT: 136px; POSITION: absolute; TOP: 248px" runat="server"
				Font-Bold="True" Font-Size="Medium" Visible="False" ForeColor="#004000">Added Successfully</asp:Label>
		</form>
	</body>
</HTML>
