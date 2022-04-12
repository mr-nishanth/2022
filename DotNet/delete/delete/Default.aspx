<%@ Page Language="C#" Inherits="delete.Default" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head runat="server">
	<title>Default</title>
	<script runat="server">
    protected void Page_Load(object sender,EventArgs args)
    {
        if(!Page.IsPostBack)
       {
        gbind();
       }
      }
      public void gbind()
     {
       MySqlConnection con = new MySqlConnection ("server=localhost;database=cs;userid=root;password=gasc");
			con.Open ();
			MySqlDataAdapter ad=new MySqlDataAdapter("SELECT * from firstmca",con);
			DataSet ds=new DataSet("firstmca");
            ad.Fill(ds,"firstmca");			
            gv1.DataSource=ds;
			form1.DataBind ();
			con.Close ();
     }
     
     
      
    
     
       protected void deleterecord(object sender,GridViewDeleteEventArgs e) {
        GridViewRow r = (GridViewRow) gv1.Rows[e.RowIndex];
     	String rno = gv1.DataKeys[e.RowIndex].Value.ToString();
     	
     	
     	    MySqlConnection con = new MySqlConnection ("server=localhost;database=cs;userid=root;password=gasc");
			con.Open ();
			MySqlCommand cmd =new MySqlCommand("Delete from firstmca where rno='"+rno+"'",con);
			int i = cmd.ExecuteNonQuery();
			if (i == 1) {
			l1.Text = "Record Deleted";
			}
			else {
			l1.Text = "Error";
			}
		
			con.Close ();
      
      
     	gv1.EditIndex = -1;
     	gbind();
     
     }
     
     
    
 </script>
</head>
<body>
	<form id="form1" runat="server">
		<asp:GridView id="gv1" runat="server" AutoGenerateColumns="False"
		  DataKeyNames="rno" OnRowDeleting="deleterecord" >
		
		     <RowStyle Backcolor="Yellow" Forecolor="Green"/>
		     <AlternatingRowStyle Backcolor="Red" Forecolor="Blue"/>
		     <Columns>
		         <asp:BoundField DataField="rno"  HeaderText="Roll No"/>
		          <asp:BoundField DataField="name"  HeaderText="NAME"/>
		          <asp:BoundField DataField="marks"  HeaderText="MARKS"/>
		         <asp:CommandField ShowDeleteButton="True"/>
		      </Columns>   
		   </asp:GridView><br/>
		   <asp:Label id="l1" runat="server"/>
		   
	</form>
</body>
</html>
