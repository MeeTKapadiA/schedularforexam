<%@ Page language="c#" Codebehind="addcenter.cs" AutoEventWireup="false" Inherits="schedularforexam.addcenter" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>addcenter</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#ccccff">
		<form id="Form1" method="post" runat="server">
			<asp:TextBox id="txtCcode" style="Z-INDEX: 101; LEFT: 344px; POSITION: absolute; TOP: 80px" runat="server"
				BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:TextBox id="txtCname" style="Z-INDEX: 102; LEFT: 344px; POSITION: absolute; TOP: 136px"
				runat="server" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblCcode" style="Z-INDEX: 103; LEFT: 168px; POSITION: absolute; TOP: 80px" runat="server"
				Font-Bold="True">Center Code</asp:Label>
			<asp:Label id="lblCname" style="Z-INDEX: 104; LEFT: 168px; POSITION: absolute; TOP: 136px"
				runat="server" Font-Bold="True">Center Name</asp:Label>
			<asp:Label id="lblCity" style="Z-INDEX: 105; LEFT: 168px; POSITION: absolute; TOP: 184px" runat="server"
				Font-Bold="True">City</asp:Label>
			<asp:Label id="lblSeats" style="Z-INDEX: 106; LEFT: 168px; POSITION: absolute; TOP: 240px"
				runat="server" Font-Bold="True">No Of Seats</asp:Label>
			<asp:Label id="lblAdd" style="Z-INDEX: 107; LEFT: 168px; POSITION: absolute; TOP: 304px" runat="server"
				Font-Bold="True">Address</asp:Label>
			<asp:TextBox id="txtCity" style="Z-INDEX: 108; LEFT: 344px; POSITION: absolute; TOP: 184px" runat="server"
				BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:TextBox id="txtSeats" style="Z-INDEX: 109; LEFT: 344px; POSITION: absolute; TOP: 240px"
				runat="server" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:TextBox id="txtAdd" style="Z-INDEX: 110; LEFT: 344px; POSITION: absolute; TOP: 296px" runat="server"
				TextMode="MultiLine" Rows="4" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 111; LEFT: 304px; POSITION: absolute; TOP: 408px" runat="server"
				Text="Next Add"></asp:Button>
			<asp:Label id="lbltitle" style="Z-INDEX: 112; LEFT: 264px; POSITION: absolute; TOP: 16px" runat="server"
				Font-Bold="True" Font-Size="Large">Add New Centers</asp:Label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 113; LEFT: 576px; POSITION: absolute; TOP: 80px"
				runat="server" ErrorMessage="Enter City code" Display="Dynamic" ControlToValidate="txtCcode"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 114; LEFT: 576px; POSITION: absolute; TOP: 136px"
				runat="server" ErrorMessage="Enter Center" Display="Dynamic" ControlToValidate="txtCname"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 115; LEFT: 576px; POSITION: absolute; TOP: 184px"
				runat="server" ErrorMessage="Enter City" Display="Dynamic" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator4" style="Z-INDEX: 116; LEFT: 576px; POSITION: absolute; TOP: 224px"
				runat="server" ErrorMessage="Enter No Of Seats" Display="Dynamic" ControlToValidate="txtSeats"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator5" style="Z-INDEX: 117; LEFT: 576px; POSITION: absolute; TOP: 304px"
				runat="server" ErrorMessage="Enter Address" Display="Dynamic" ControlToValidate="txtAdd"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator id="RegularExpressionValidator1" style="Z-INDEX: 118; LEFT: 576px; POSITION: absolute; TOP: 248px"
				runat="server" ErrorMessage="Enter Only  digits" ControlToValidate="txtSeats" ValidationExpression="[0-9]{1,3}"
				Display="Dynamic"></asp:RegularExpressionValidator>
			<asp:Label id="Label1" style="Z-INDEX: 119; LEFT: 136px; POSITION: absolute; TOP: 392px" runat="server"
				Font-Bold="True" Font-Size="Medium" Visible="False" ForeColor="#004000">Added Successfully</asp:Label>
		</form>
	</body>
</HTML>
