<%@ Page language="c#" Codebehind="frame2.cs" AutoEventWireup="false" Inherits="schedularforexam.frame2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>frame2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#ffcccc">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 101; LEFT: 16px; POSITION: absolute; TOP: 96px"
				runat="server" Font-Bold="True" Font-Size="Medium" NavigateUrl="exam_add.aspx" Target="main">Add Exam</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 232px"
				runat="server" Font-Bold="True" Font-Size="Medium" NavigateUrl="admin_datafix.aspx" Target="main">Fix Schedule</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 144px"
				runat="server" Target="main" NavigateUrl="addcity.aspx" Font-Size="Medium" Font-Bold="True">Add City</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 192px"
				runat="server" Target="main" Font-Size="Medium" Font-Bold="True" NavigateUrl="addcenter.aspx">Add Center</asp:HyperLink>
			<asp:HyperLink id="HyperLink5" style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 272px"
				runat="server" Target="_parent" NavigateUrl="Logout.htm" Font-Size="Medium" Font-Bold="True">Log out</asp:HyperLink>
		</form>
	</body>
</HTML>
