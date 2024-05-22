<%@ Page language="c#" Codebehind="admin_login.cs" AutoEventWireup="false" Inherits="schedularforexam.admin_login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>admin_login</title>
		<meta name="vs_showGrid" content="True">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#ccffff">
		<form id="Form1" method="post" runat="server">
			<asp:TextBox id="txtlogin" style="Z-INDEX: 101; LEFT: 344px; POSITION: absolute; TOP: 112px"
				runat="server" tabIndex="1" BackColor="#FFE0C0" BorderColor="#FF8000"></asp:TextBox>
			<asp:RegularExpressionValidator id="RegularExpressionValidator1" style="Z-INDEX: 108; LEFT: 624px; POSITION: absolute; TOP: 168px"
				runat="server" ErrorMessage="Password should be between 6 to 15 characters" ControlToValidate="txtpwd" Display="Dynamic"
				ValidationExpression="[0-9a-zA-Z]{6,15}"></asp:RegularExpressionValidator>
			<asp:TextBox id="txtpwd" style="Z-INDEX: 102; LEFT: 344px; POSITION: absolute; TOP: 168px" runat="server"
				TextMode="Password" tabIndex="2" BackColor="#FFE0C0" BorderColor="#FF8000"></asp:TextBox>
			<asp:Label id="lbllogin" style="Z-INDEX: 103; LEFT: 216px; POSITION: absolute; TOP: 112px"
				runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#804040">login</asp:Label>
			<asp:Label id="lblpwd" style="Z-INDEX: 104; LEFT: 216px; POSITION: absolute; TOP: 168px" runat="server"
				Font-Bold="True" Font-Size="Medium" ForeColor="#804040">Password</asp:Label>
			<asp:Button id="AdminSubmit" style="Z-INDEX: 105; LEFT: 328px; POSITION: absolute; TOP: 240px"
				runat="server" Text="submit" EnableViewState="False" tabIndex="3" BackColor="#00C0C0"></asp:Button>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 106; LEFT: 520px; POSITION: absolute; TOP: 112px"
				runat="server" ErrorMessage="Enter your loginid" ControlToValidate="txtlogin" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 107; LEFT: 520px; POSITION: absolute; TOP: 168px"
				runat="server" ErrorMessage="Enter ur pwd" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
			<asp:CompareValidator id="CompareValidator1" style="Z-INDEX: 109; LEFT: 80px; POSITION: absolute; TOP: 112px"
				runat="server" Display="Dynamic" ControlToValidate="txtlogin" ErrorMessage="Invalid UserID" ValueToCompare="venugopal"
				Font-Size="Medium" Font-Bold="True"></asp:CompareValidator>
			<asp:Label id="lblheading" style="Z-INDEX: 110; LEFT: 264px; POSITION: absolute; TOP: 40px"
				runat="server" Font-Size="Large" Font-Bold="True">Adminstrator Login</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 112; LEFT: 80px; POSITION: absolute; TOP: 168px" runat="server"
				ForeColor="Red" Font-Size="Medium" Font-Bold="True" Visible="False">Invalid Password</asp:Label>
		</form>
	</body>
</HTML>
