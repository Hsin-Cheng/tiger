<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- �����խ��A�m�߱ĥ� EL ���g�k���� --%>

<jsp:useBean id="empDAO"  scope="page" class="forTest.EmpDAO" />
<jsp:useBean id="deptDAO" scope="page" class="forTest.DeptDAO" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�Ҧ����u���</title>

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

<h4>�����խ��A�m�߱ĥ� EL ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�Ҧ����u���<br><font color=red>listAllEmp_03_EL_Test_<font color=blue>href</font>.jsp</font></h3>
	</td></tr>
</table>

<table>
	<tr>
		<th>���u�s��</th>
		<th>���u�m�W</th>
		<th>¾��</th>
		<th>���Τ��</th>
		<th>�~��</th>
		<th>����</th>
		<th>����</th>
	</tr>
 
	<c:forEach var="empVO" items="${empDAO.all}" >
		<tr>
			<td><a href="test_emp.do?empno=${empVO.empno}&action=getOne_From03">${empVO.empno}</a></td>
			<td>${empVO.ename}</td>
			<td>${empVO.job}</td>
			<td>${empVO.hiredate}</td>
			<td>${empVO.sal}</td>
			<td>${empVO.comm}</td>			
			<td><c:forEach var="deptVO" items="${deptDAO.all}">
                    <c:if test="${empVO.deptno==deptVO.deptno}">
	                    ${deptVO.deptno}�i${deptVO.dname} - ${deptVO.loc}�j
                    </c:if>
                </c:forEach>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>