
<%@ Page Language="C#" Inherits="SelectReader.Default" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head runat="server">
	<title>Default</title>
	<script runat="server">
	protected void Page_Load(object sender,EventArgs args)
	{
             MySqlConnection con = new MySqlConnection ("server=localhost;database=cs;userid=root;password=gasc");
			con.Open ();
			MySqlDataAdapter ad=new MySqlDataAdapter("SELECT * from firstmca",con);
			DataSet ds=new DataSet("firstmca");
            ad.Fill(ds,"firstmca");			
            dg1.DataSource=ds;
			form1.DataBind ();
			con.Close ();
      }
      public void b1c(object sender,EventArgs args)
      {
    
      }
      
	</script>
	
</head>
<body>
	<form id="form1" runat="server">
		<asp:DataGrid id="dg1" runat="server"  DataKeys="rno" AutoGenerateColumns="false"> 
			
			<Columns >
				<asp:BoundField id="rno" HeaderText="Roll No " />
			</Columns>
		</asp:DataGrid>
		<asp:Button id="b1" runat="server" OnClick="b1c"/>
	</form>
</body>
</html>
