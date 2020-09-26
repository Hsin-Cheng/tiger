<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="forTest.*"%>

<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%-- 取出 Concroller EmpServlet.java已存入request的EmpVO物件--%>
<%EmpVO empVO = (EmpVO) request.getAttribute("empVO");%>

<%-- 取出 對應的DeptVO物件--%>
<%
  DeptDAO dao = new DeptDAO();
  DeptVO deptVO = dao.findByPrimaryKey(empVO.getDeptno());
%>

<html>
<head>
<title>員工資料 - listOneEmp.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h3 {
    color: black;
    display: block;
    margin: 5px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>此測試頁，練習採用 Script 的寫法取值:</h4>
<table id="table-1" class="myTable">
	<tr><td>
		 <h3>員工資料 - ListOneEmp.jsp</h3>
	</td></tr>
</table>

<table class="myTable">
	<tr>
		<th>員工編號</th>
		<th>員工姓名</th>
		<th>職位</th>
		<th>雇用日期</th>
		<th>薪水</th>
		<th>獎金</th>
		<th>部門</th>
	</tr>
	<tr>
		<td><%=empVO.getEmpno()%></td>
		<td><%=empVO.getEname()%></td>
		<td><%=empVO.getJob()%></td>
		<td><%=empVO.getHiredate()%></td>
		<td><%=empVO.getSal()%></td>
		<td><%=empVO.getComm()%></td>
		<td><%=empVO.getDeptno()%>【<%=deptVO.getDname()%> - <%=deptVO.getLoc()%>】</td>
	</tr>
</table>

</body>
</html>