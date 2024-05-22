<%@ Page language="c#" Codebehind="app_devp_login.cs" AutoEventWireup="false" Inherits="schedularforexam.app_devp_login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>app_devp_login</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#ffcc99" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:textbox id="txtUid" style="Z-INDEX: 101; LEFT: 272px; POSITION: absolute; TOP: 104px" tabIndex="1"
				runat="server" BorderColor="#FFC080" BackColor="#FFE0C0"></asp:textbox><asp:label id="lbluid" style="Z-INDEX: 102; LEFT: 120px; POSITION: absolute; TOP: 104px" runat="server"
				Font-Size="Medium" Font-Bold="True">User id</asp:label><asp:textbox id="txtPwd" style="Z-INDEX: 103; LEFT: 272px; POSITION: absolute; TOP: 144px" tabIndex="2"
				runat="server" BorderColor="#FFC080" BackColor="#FFE0C0" TextMode="Password"></asp:textbox><asp:label id="lblpwd" style="Z-INDEX: 104; LEFT: 120px; POSITION: absolute; TOP: 144px" runat="server"
				Font-Size="Medium" Font-Bold="True">User Password</asp:label><asp:button id="Button1" style="Z-INDEX: 105; LEFT: 256px; POSITION: absolute; TOP: 192px" tabIndex="3"
				runat="server" BorderColor="#FFFFC0" BackColor="CadetBlue" Text="Submit"></asp:button><asp:label id="lbltitle" style="Z-INDEX: 106; LEFT: 224px; POSITION: absolute; TOP: 32px" runat="server"
				Font-Size="Large" Font-Bold="True" ForeColor="#0000C0">Application Developer Login</asp:label><asp:requiredfieldvalidator id="RequiredFieldValidator1" style="Z-INDEX: 107; LEFT: 488px; POSITION: absolute; TOP: 112px"
				runat="server" Display="Dynamic" ControlToValidate="txtUid" ErrorMessage="User ID cannot be empty"></asp:requiredfieldvalidator><asp:requiredfieldvalidator id="RequiredFieldValidator2" style="Z-INDEX: 108; LEFT: 488px; POSITION: absolute; TOP: 144px"
				runat="server" Display="Dynamic" ControlToValidate="txtPwd" ErrorMessage="Password cannot be empty"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="RegularExpressionValidator1" style="Z-INDEX: 109; LEFT: 488px; POSITION: absolute; TOP: 168px"
				runat="server" Display="Dynamic" ControlToValidate="txtPwd" ErrorMessage="Password should be  6 and 10 charcters" ValidationExpression="[0-9a-zA-Z]{6,10}"></asp:regularexpressionvalidator><asp:regularexpressionvalidator id="RegularExpressionValidator2" style="Z-INDEX: 110; LEFT: 488px; POSITION: absolute; TOP: 88px"
				runat="server" Display="Dynamic" ControlToValidate="txtUid" ErrorMessage="Too short/long user id" ValidationExpression="[0-9a-zA-Z]{5,9}"></asp:regularexpressionvalidator><asp:label id="lblIn_uid" style="Z-INDEX: 111; LEFT: 112px; POSITION: absolute; TOP: 200px"
				runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="Red" Visible="False">Invalid userid</asp:label><asp:label id="lblIn_pwd" style="Z-INDEX: 112; LEFT: 112px; POSITION: absolute; TOP: 176px"
				runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="Red" Visible="False">Invalid Password</asp:label></form>
	</body>
</HTML>
