<%@ Page language="c#" Codebehind="WebForm1.cs" AutoEventWireup="false" Inherits="schedularforexam.WebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#99ffff">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 101; LEFT: 16px; POSITION: absolute; TOP: 104px"
				runat="server" NavigateUrl="admin_login.aspx" Font-Bold="True" Font-Underline="True" Target="_blank">1.Administrator</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 152px"
				runat="server" NavigateUrl="app_devp_login.aspx" Font-Bold="True" Target="_blank"> 2.Registration</asp:HyperLink>
			<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 32px" runat="server"
				Font-Italic="True" ForeColor="#C04000">Logins</asp:Label>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 200px"
				runat="server" Target="main" Font-Bold="True" NavigateUrl="examlogin.aspx">3.Registered User</asp:HyperLink>
		</form>
	</body>
</HTML>
