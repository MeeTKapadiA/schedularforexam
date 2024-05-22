<%@ Page language="c#" Codebehind="registration.cs" AutoEventWireup="false" Inherits="schedularforexam.registration" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>registration</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#99cc99">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="lblName" style="Z-INDEX: 101; LEFT: 32px; POSITION: absolute; TOP: 40px" runat="server"
				Font-Bold="True">Name</asp:Label>
			<asp:TextBox id="txtName" style="Z-INDEX: 102; LEFT: 168px; POSITION: absolute; TOP: 40px" runat="server"
				tabIndex="1" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblDob" style="Z-INDEX: 103; LEFT: 32px; POSITION: absolute; TOP: 72px" runat="server"
				Font-Bold="True">Date of birth</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 104; LEFT: 32px; POSITION: absolute; TOP: 104px" runat="server"
				Font-Bold="True">Phone number</asp:Label>
			<asp:TextBox id="txtPh" style="Z-INDEX: 105; LEFT: 168px; POSITION: absolute; TOP: 104px" runat="server"
				tabIndex="3" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblAddress" style="Z-INDEX: 106; LEFT: 32px; POSITION: absolute; TOP: 144px"
				runat="server" Font-Bold="True">Address</asp:Label>
			<asp:TextBox id="txtAdd" style="Z-INDEX: 107; LEFT: 168px; POSITION: absolute; TOP: 136px" runat="server"
				TextMode="MultiLine" Rows="5" tabIndex="3" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblQuali" style="Z-INDEX: 108; LEFT: 32px; POSITION: absolute; TOP: 240px" runat="server"
				Font-Bold="True">Qualification</asp:Label>
			<asp:Label id="lblTech" style="Z-INDEX: 109; LEFT: 32px; POSITION: absolute; TOP: 280px" runat="server"
				Font-Bold="True">Technology</asp:Label>
			<asp:Label id="lblExp" style="Z-INDEX: 110; LEFT: 32px; POSITION: absolute; TOP: 312px" runat="server"
				Font-Bold="True">WorkExperience</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 111; LEFT: 192px; POSITION: absolute; TOP: 440px" runat="server"
				Text="Submit" tabIndex="8" BackColor="#004040" ForeColor="#FF8000"></asp:Button>
			<asp:Label id="lblEid" style="Z-INDEX: 112; LEFT: 32px; POSITION: absolute; TOP: 352px" runat="server"
				Font-Bold="True">Examinee id</asp:Label>
			<asp:TextBox id="txtExamineeId" style="Z-INDEX: 113; LEFT: 168px; POSITION: absolute; TOP: 344px"
				runat="server" tabIndex="6" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:Label id="lblEpwd" style="Z-INDEX: 114; LEFT: 32px; POSITION: absolute; TOP: 400px" runat="server"
				Font-Bold="True">ExamineePassword</asp:Label>
			<asp:TextBox id="txtEpwd" style="Z-INDEX: 115; LEFT: 168px; POSITION: absolute; TOP: 392px" runat="server"
				TextMode="Password" tabIndex="7" BackColor="#FFE0C0" BorderColor="#FFC080"></asp:TextBox>
			<asp:DropDownList id="cboQualification" style="Z-INDEX: 116; LEFT: 168px; POSITION: absolute; TOP: 240px"
				runat="server" tabIndex="4" BackColor="#FFE0C0">
				<asp:ListItem Value="Select">Select</asp:ListItem>
				<asp:ListItem Value="B.Tech">B.Tech</asp:ListItem>
				<asp:ListItem Value="MSC/MCA">MSC/MCA</asp:ListItem>
				<asp:ListItem Value="M.Tech">M.Tech</asp:ListItem>
			</asp:DropDownList>
			<asp:DropDownList id="cboTech" style="Z-INDEX: 117; LEFT: 168px; POSITION: absolute; TOP: 280px" runat="server"
				tabIndex="4" BackColor="#FFE0C0">
				<asp:ListItem Value="Select">Select</asp:ListItem>
				<asp:ListItem Value="Java">Java</asp:ListItem>
				<asp:ListItem Value="MS.Net">MS.Net</asp:ListItem>
				<asp:ListItem Value="Oracle">Oracle</asp:ListItem>
				<asp:ListItem Value="SAP">SAP</asp:ListItem>
			</asp:DropDownList>
			<asp:DropDownList id="cboWorkExp" style="Z-INDEX: 118; LEFT: 168px; POSITION: absolute; TOP: 312px"
				runat="server" tabIndex="5" BackColor="#FFE0C0">
				<asp:ListItem Value="Select">Select</asp:ListItem>
				<asp:ListItem Value="0">0</asp:ListItem>
				<asp:ListItem Value="1">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
				<asp:ListItem Value="3">3</asp:ListItem>
				<asp:ListItem Value="4">4</asp:ListItem>
			</asp:DropDownList>
			<asp:Label id="lbltitle" style="Z-INDEX: 119; LEFT: 184px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Size="Large">Registration process</asp:Label>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 120; LEFT: 368px; POSITION: absolute; TOP: 40px"
				runat="server" ErrorMessage="Name filed cannot be empty" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" style="Z-INDEX: 121; LEFT: 376px; POSITION: absolute; TOP: 80px"
				runat="server" ErrorMessage="Date cannot be empty" ControlToValidate="txtDob"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="Z-INDEX: 122; LEFT: 352px; POSITION: absolute; TOP: 216px"
				runat="server" ErrorMessage="Address Sholud be filled" ControlToValidate="txtAdd" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator4" style="Z-INDEX: 123; LEFT: 352px; POSITION: absolute; TOP: 344px"
				runat="server" ErrorMessage="ExamineeId field cannot  be empty" ControlToValidate="txtExamineeId" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator5" style="Z-INDEX: 124; LEFT: 352px; POSITION: absolute; TOP: 416px"
				runat="server" ErrorMessage="Examinee Password munst not be empty" ControlToValidate="txtEpwd" Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator id="RegularExpressionValidator1" style="Z-INDEX: 125; LEFT: 352px; POSITION: absolute; TOP: 368px"
				runat="server" ErrorMessage="Id should be in between 5 to 10 chars" ControlToValidate="txtExamineeId" Display="Dynamic"
				ValidationExpression="[0-9 a-z A-Z]{5,10}"></asp:RegularExpressionValidator>
			<asp:RegularExpressionValidator id="RegularExpressionValidator2" style="Z-INDEX: 126; LEFT: 352px; POSITION: absolute; TOP: 400px"
				runat="server" ErrorMessage="Password shoud be of 6 characters" ControlToValidate="txtEpwd" Display="Dynamic"
				ValidationExpression="[0-9a-zA-Z]{6,6}"></asp:RegularExpressionValidator>
			<asp:RegularExpressionValidator id="RegularExpressionValidator3" style="Z-INDEX: 127; LEFT: 352px; POSITION: absolute; TOP: 104px"
				runat="server" ControlToValidate="txtPh" ErrorMessage="Enter valid phone number" ValidationExpression="[0-9]{3,10}"></asp:RegularExpressionValidator>
			<asp:RangeValidator id="RangeValidator1" style="Z-INDEX: 128; LEFT: 408px; POSITION: absolute; TOP: 64px"
				runat="server" ControlToValidate="txtDob" ErrorMessage="Enter valid date" MinimumValue="1/1/1970"
				MaximumValue="1/1/1985" Type="Date"></asp:RangeValidator>
			<asp:TextBox id="txtDob" style="Z-INDEX: 129; LEFT: 168px; POSITION: absolute; TOP: 72px" tabIndex="2"
				runat="server" BorderColor="#FFC080" BackColor="#FFE0C0"></asp:TextBox>
		</form>
	</body>
</HTML>
