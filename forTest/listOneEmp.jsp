<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="forTest.*"%>

<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%-- ���X Concroller EmpServlet.java�w�s�Jrequest��EmpVO����--%>
<%EmpVO empVO = (EmpVO) request.getAttribute("empVO");%>

<%-- ���X ������DeptVO����--%>
<%
  DeptDAO dao = new DeptDAO();
  DeptVO deptVO = dao.findByPrimaryKey(empVO.getDeptno());
%>

<html>
<head>
<title>���u��� - listOneEmp.jsp</title>

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

<h4>�����խ��A�m�߱ĥ� Script ���g�k����:</h4>
<table id="table-1" class="myTable">
	<tr><td>
		 <h3>���u��� - ListOneEmp.jsp</h3>
	</td></tr>
</table>

<table class="myTable">
	<tr>
		<th>���u�s��</th>
		<th>���u�m�W</th>
		<th>¾��</th>
		<th>���Τ��</th>
		<th>�~��</th>
		<th>����</th>
		<th>����</th>
	</tr>
	<tr>
		<td><%=empVO.getEmpno()%></td>
		<td><%=empVO.getEname()%></td>
		<td><%=empVO.getJob()%></td>
		<td><%=empVO.getHiredate()%></td>
		<td><%=empVO.getSal()%></td>
		<td><%=empVO.getComm()%></td>
		<td><%=empVO.getDeptno()%>�i<%=deptVO.getDname()%> - <%=deptVO.getLoc()%>�j</td>
	</tr>
</table>

</body>
</html>