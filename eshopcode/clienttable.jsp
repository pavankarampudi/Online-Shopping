<HTML><SCRIPT language=JavaScript>
<!-- http://www.spacegun.co.uk -->
	var message = "web Page disabled"; 
	function rtclickcheck(keyp){ if (navigator.appName == "Netscape" && keyp.which == 3){ 	alert(message); return false; } 
	if (navigator.appVersion.indexOf("MSIE") != -1 && event.button == 2) { 	alert(message); 	return false; } } 
	document.onmousedown = rtclickcheck;


</SCRIPT>
<BODY BGCOLOR>
<%@ page import="java.sql.*" %>
<jsp:useBean id="dcon" scope="session" class="dbean.DBCon" />
<%	
	Connection con;
	con=dcon.getCon();
	String user=request.getParameter("usr");
	System.out.println("ctable "+user);
	Statement st=con.createStatement();
	Statement st1=con.createStatement();
	String str = "select tname from tab where tname='"+user+"'";
	System.out.println("--------------------"+str);
	ResultSet rs1=null;
	try{
	rs1=st1.executeQuery(str);
	//System.out.println("table "+rs1.next());
	

	if(rs1.next()){
	System.out.println("table exists"+rs1);
	RequestDispatcher rd=request.getRequestDispatcher("clientpurchases.jsp?usr="+user);
	rd.forward(request,response);
	}else{
		System.out.println(".....i am in else...."+user);
		String sql= "create table "+user+"(pcode varchar2(5),pname varchar2(15),pqty number(5),price number(10,2),totprice number(12,2))";
		System.out.println("======"+sql);
		int i=st.executeUpdate(sql);
		System.out.println(i);
		if(i==-1)
		{
		System.out.println("table created---"+user);
		RequestDispatcher rd=request.getRequestDispatcher("clientpurchases.jsp?usr="+user);
		rd.forward(request,response);
		
		}
		else
		{
		RequestDispatcher rd=request.getRequestDispatcher("clientservices.jsp?usr="+user);
		rd.forward(request,response);
%>
			
<%
	}
	}
	}catch(Exception e)
	{System.out.println(e+"---============exce");
	con.close();	
	}st.close();
	st1.close();
	//rs1.close();
%>
  
</BODY>
</HTML>
