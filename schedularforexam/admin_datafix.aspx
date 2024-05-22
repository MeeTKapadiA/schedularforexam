<%@ Page language="c#" Codebehind="admin_datafix.cs" AutoEventWireup="false" Inherits="schedularforexam.admin_datafix" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>admin_datafix</title>
		<meta name="vs_showGrid" content="True">
		<meta name="vs_snapToGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#ccccff">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="lblExam" style="Z-INDEX: 101; LEFT: 73px; POSITION: absolute; TOP: 88px" runat="server"
				Font-Bold="True">Certification Exam</asp:Label>
			<asp:Label id="lblDate" style="Z-INDEX: 102; LEFT: 72px; POSITION: absolute; TOP: 136px" runat="server"
				Width="144px" Font-Bold="True">Exam Date</asp:Label>
			<asp:Label id="lblTime" style="Z-INDEX: 103; LEFT: 72px; POSITION: absolute; TOP: 189px" runat="server"
				Font-Bold="True">Exam Time</asp:Label>
			<asp:TextBox id="txtTime" style="Z-INDEX: 104; LEFT: 264px; POSITION: absolute; TOP: 183px" runat="server"
				tabIndex="4" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:TextBox id="txtSeats" style="Z-INDEX: 105; LEFT: 264px; POSITION: absolute; TOP: 232px"
				runat="server" tabIndex="5" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblSeats" style="Z-INDEX: 106; LEFT: 72px; POSITION: absolute; TOP: 236px" runat="server"
				Font-Bold="True">No Of Seats</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 107; LEFT: 120px; POSITION: absolute; TOP: 360px" runat="server"
				Text="Next Insert" tabIndex="8" BackColor="#00C0C0" BorderColor="#004040"></asp:Button>
			<asp:Label id="lblCid" style="Z-INDEX: 108; LEFT: 72px; POSITION: absolute; TOP: 48px" runat="server"
				Font-Bold="True">Certification ID</asp:Label>
			<asp:DropDownList id="cboCid" style="Z-INDEX: 109; LEFT: 263px; POSITION: absolute; TOP: 56px" runat="server"
				AutoPostBack="True" tabIndex="1" BackColor="#FFE0C0">
				<asp:ListItem></asp:ListItem>
				<asp:ListItem Value="Select" Selected="True">Select</asp:ListItem>
			</asp:DropDownList>
			<asp:DropDownList id="cboExam" style="Z-INDEX: 110; LEFT: 263px; POSITION: absolute; TOP: 96px" runat="server"
				tabIndex="2" BackColor="#FFE0C0"></asp:DropDownList>
			<asp:Label id="lblCity" style="Z-INDEX: 111; LEFT: 72px; POSITION: absolute; TOP: 272px" runat="server"
				Font-Bold="True">City</asp:Label>
			<asp:Label id="lblCenter" style="Z-INDEX: 112; LEFT: 72px; POSITION: absolute; TOP: 304px"
				runat="server" Height="3px" Font-Bold="True">Center</asp:Label>
			<asp:DropDownList id="cboCity" style="Z-INDEX: 113; LEFT: 264px; POSITION: absolute; TOP: 272px" runat="server"
				AutoPostBack="True" tabIndex="6" BackColor="#FFE0C0"></asp:DropDownList>
			<asp:DropDownList id="cboCenter" style="Z-INDEX: 114; LEFT: 264px; POSITION: absolute; TOP: 304px"
				runat="server" tabIndex="7" BackColor="#FFE0C0"></asp:DropDownList>
			<asp:Calendar id="Cal" style="Z-INDEX: 115; LEFT: 512px; POSITION: absolute; TOP: 40px" runat="server"
				Visible="False" Width="400px" Height="220px" Font-Size="10pt" BackColor="White" BorderColor="Black"
				TitleFormat="Month" NextPrevFormat="FullMonth" DayNameFormat="FirstLetter" ForeColor="Black"
				Font-Names="Times New Roman">
				<TodayDayStyle BackColor="#CCCC99"></TodayDayStyle>
				<SelectorStyle Font-Size="8pt" Font-Names="Verdana" Font-Bold="True" ForeColor="#333333" Width="1%"
					BackColor="#CCCCCC"></SelectorStyle>
				<DayStyle Width="14%"></DayStyle>
				<NextPrevStyle Font-Size="8pt" ForeColor="White"></NextPrevStyle>
				<DayHeaderStyle Font-Size="7pt" Font-Names="Verdana" Font-Bold="True" Height="10px" ForeColor="#333333"
					BackColor="#CCCCCC"></DayHeaderStyle>
				<SelectedDayStyle ForeColor="White" BackColor="#CC3333"></SelectedDayStyle>
				<TitleStyle Font-Size="13pt" Font-Bold="True" Height="14pt" ForeColor="White" BackColor="Black"></TitleStyle>
				<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
			</asp:Calendar>
			<asp:ImageButton id="ImageButton1" style="Z-INDEX: 116; LEFT: 192px; POSITION: absolute; TOP: 136px"
				runat="server" ImageUrl="D:\Documents and Settings\Administrator\Desktop\student\TOOLKIT\SHELL\IMAGES\ICONS\ICONS_NOTES.JPG"
				tabIndex="3" BackColor="#FFE0C0" BorderColor="#FFC080" CausesValidation="False"></asp:ImageButton>
			<asp:Label id="lblTitle" style="Z-INDEX: 117; LEFT: 224px; POSITION: absolute; TOP: 16px" runat="server"
				Font-Bold="True" Font-Size="Large">Fixing Schedule</asp:Label>
			<asp:TextBox id="txtDate" style="Z-INDEX: 118; LEFT: 264px; POSITION: absolute; TOP: 136px" runat="server"
				BackColor="#FFE0C0"></asp:TextBox>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 119; LEFT: 456px; POSITION: absolute; TOP: 176px"
				runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtTime" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 120; LEFT: 472px; POSITION: absolute; TOP: 144px"
				runat="server" ErrorMessage="Date cannot be empty" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 121; LEFT: 456px; POSITION: absolute; TOP: 240px"
				runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtSeats" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:Label id="lblcal" style="Z-INDEX: 122; LEFT: 432px; POSITION: absolute; TOP: 96px" runat="server"
				ForeColor="Red" Visible="False">select valid date</asp:Label>
			<asp:Label id="Label1" style="Z-INDEX: 123; LEFT: 336px; POSITION: absolute; TOP: 344px" runat="server"
				Font-Bold="True" ForeColor="#0000C0" Font-Size="Medium" Visible="False">Inserted Successfully</asp:Label>
		</form>
	</body>
</HTML>
