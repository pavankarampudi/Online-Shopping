<html>
<SCRIPT language=JavaScript>
<!-- http://www.spacegun.co.uk -->
	var message = "web Page disabled"; 
	function rtclickcheck(keyp){ if (navigator.appName == "Netscape" && keyp.which == 3){ 	alert(message); return false; } 
	if (navigator.appVersion.indexOf("MSIE") != -1 && event.button == 2) { 	alert(message); 	return false; } } 
	document.onmousedown = rtclickcheck;


</SCRIPT>
<body bgcolor>
<center><FONT  face="comic sans ms" size=3 COLOR=#006600><center><hr color=#99CC00>Item Sold Between Two Dates</center><hr color=#99CC00>
<form method="POST" action="itemsold_jsp.jsp">

<%@ page import="java.sql.*" %>
<jsp:useBean id="dcon" scope="session" class="dbean.DBCon" />
<%	
	Connection con;
	con=dcon.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select p_code,p_name from prod_det order by p_code"); %>
	<br>
	<FONT  face="comic sans ms" size=2 COLOR=#006600>Product Code & Name:</font><select name="list" style='width:150'><br><br><br><br>
	<%
		 while(rs.next())
		  { 
		 %>
		<option value=<%=rs.getString(1)%>><%=rs.getString(2)%></option>
		<%	  
		  }
		
  %>
  </select>
  <p><FONT  face="comic sans ms" size=2 COLOR=#006600>From:</font> <select name="list1">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
  <option>6</option>
  <option>7</option>
  <option>8</option>
  <option>9</option>
  <option>10</option>
  <option>11</option>
  <option>12</option>
  <option>13</option>
  <option>14</option>
  <option>15</option>
  <option>16</option>
  <option>17</option>
  <option>18</option>
  <option>19</option>
  <option>20</option>
  <option>21</option>
  <option>22</option>
  <option>23</option>
  <option>24</option>
  <option>25</option>
  <option>26</option>
  <option>27</option>
  <option>28</option>
  <option>29</option>
  <option>30</option>
  <option>31</option>
  </select>&nbsp; <select name="list2" style="width: 60">
  <option>jan</option>
  <option>feb</option>
  <option>mar</option>
  <option>apr</option>
  <option>may</option>
  <option>jun</option>
  <option>jul</option>
  <option>aug</option>
  <option>sep</option>
  <option>oct</option>
  <option>nov</option>
  <option>dec</option>
  </select>&nbsp; <select size="1" name="list3" style="width: 60">
  <option value="1990">1990</option>
  <option value="1991">1991</option>
  <option value="1992">1992</option>
  <option value="1993">1993</option>
  <option value="1994">1994</option>
  <option value="1995">1995</option>
  <option value="1996">1996</option>
  <option value="1997">1997</option>
  <option value="1998">1998</option>
  <option value="1999">1999</option>
  <option value="2000">2000</option>
  <option value="2001">2001</option>
  <option value="2002">2002</option>
  <option value="2003">2003</option>
  <option value="2004">2004</option>
  <option value="2005">2005</option>
  <option value="2006">2006</option>
  <option value="2007">2007</option>
  <option value="2008">2008</option>
  <option value="2009">2009</option>
  <option value="2010">2010</option>
  </select></p>
  <p><FONT  face="comic sans ms" size=2 COLOR=#006600>&nbsp;&nbsp;&nbsp;&nbsp;To:</font> <select name="list4">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
  <option>6</option>
  <option>7</option>
  <option>8</option>
  <option>9</option>
  <option>10</option>
  <option>11</option>
  <option>12</option>
  <option>13</option>
  <option>14</option>
  <option>15</option>
  <option>16</option>
  <option>17</option>
  <option>18</option>
  <option>19</option>
  <option>20</option>
  <option>21</option>
  <option>22</option>
  <option>23</option>
  <option>24</option>
  <option>25</option>
  <option>26</option>
  <option>27</option>
  <option>28</option>
  <option>29</option>
  <option>30</option>
  <option>31</option>
  </select>&nbsp; <select  name="list5" style="width: 60">
  <option>jan</option>
  <option>feb</option>
  <option>mar</option>
  <option>apr</option>
  <option>may</option>
  <option>jun</option>
  <option>jul</option>
  <option>aug</option>
  <option>sep</option>
  <option>oct</option>
  <option>nov</option>
  <option>dec</option>
  </select>&nbsp; <select name="list6" style="width: 60">
  <option value="1990">1990</option>
  <option value="1991">1991</option>
  <option value="1992">1992</option>
  <option value="1993">1993</option>
  <option value="1994">1994</option>
  <option value="1995">1995</option>
  <option value="1996">1996</option>
  <option value="1997">1997</option>
  <option value="1998">1998</option>
  <option value="1999">1999</option>
  <option value="2000">2000</option>
  <option value="2001">2001</option>
  <option value="2002">2002</option>
  <option value="2003">2003</option>
  <option value="2004">2004</option>
  <option value="2005">2005</option>
  <option value="2006">2006</option>
  <option value="2007">2007</option>
  <option value="2008">2008</option>
  <option value="2009">2009</option>
  <option value="2010">2010</option>
  </select></p>
   <input type="submit" value="Submit">
</form>

</body>

</html>
