<html><SCRIPT language=JavaScript>
<!-- http://www.spacegun.co.uk -->
	var message = "web Page disabled"; 
	function rtclickcheck(keyp){ if (navigator.appName == "Netscape" && keyp.which == 3){ 	alert(message); return false; } 
	if (navigator.appVersion.indexOf("MSIE") != -1 && event.button == 2) { 	alert(message); 	return false; } } 
	document.onmousedown = rtclickcheck;


</SCRIPT>
<body bgcolor>

<%@ page import="java.sql.*" %>
<jsp:useBean id="dcon" scope="session" class="dbean.DBCon" />
<%  
        Connection con;
	con = dcon.getCon();
	Statement st=con.createStatement();
	
	String pcode=request.getParameter("T1");
	String pname=request.getParameter("T2");
	float pprice=Float.parseFloat(request.getParameter("T3"));
	int pmin=Integer.parseInt(request.getParameter("T4"));
        int present=Integer.parseInt(request.getParameter("T5"));    
	
	 int i=st.executeUpdate("update prod_det set p_name='"+pname+"',p_price="+pprice+",min_stock="+pmin+",present_stock="+present+" where p_code='"+pcode+"'");
 	
	if(i==1)
        {
		out.println("<br><br><br><center><h1><FONT face='comic sans ms' SIZE='+1' COLOR=#006600>"+i+" Record Modified successfully <h1></font><center>");
        }
	else
	{ 
		out.println("<center><h1><FONT face='comic sans ms' SIZE='+1' COLOR='#006600>Can Not Be Modified<h1><center></font>");
        }
		out.println("<center><a href='Modify_prod.html'><font face='comic sans ms'  size='3' COLOR='#99CC00'>Modify Again</font></a></center>");
		out.println("<a href='Adminservices.html'> <pre><font face='comic sans ms' size='2' COLOR='#99CC00'>Back To Administrative Services</font></pre>  </a>");                                                                                 
	
	
	
%>

</body>
</html>
