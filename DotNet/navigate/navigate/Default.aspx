<%@ Page Language="C#" Inherits="navigate.Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
	<form id="form1" runat="server">
	
	<asp:TextBox id="t1" runat="server" Text="" />
	<asp:TextBox id="t2" runat="server" Text="" />
		<asp:Button id="button1" runat="server" Text="Go to Second page!" OnClick="button1Clicked" />
		
		
	</form>
</body>
</html>
