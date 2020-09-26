<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="forTest.*"%>

<%-- �����խ��A�m�߱ĥ� EL ���g�k���� --%>

<jsp:useBean id="empDAO"  scope="page" class="forTest.EmpDAO" />
<jsp:useBean id="deptDAO" scope="page" class="forTest.DeptDAO" />

<html>
<head>
<title>�Ҧ����u���</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h3 {
    font: 20px Times New Roman, arial, helvetica, sans-serif, Microsoft JhengHei;
    font-weight:bold;
    color: black;
    display: block;
    margin: 5px;
  }
  h4 {
    font: 18px Times New Roman, arial, helvetica, sans-serif, Microsoft JhengHei;
    font-weight:bold;
    color: blue;
    display: inline;
    margin: 5px;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
    text-align: center;
  }
</style>

<style>
.myTable{
  width: 100%;
}
.myTable *{
  text-align: center;
}
</style>

</head>
<body bgcolor='white'>

<h4>�����խ��A�m�߱ĥ� EL ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�Ҧ����u���<br><font color=red>listAllEmp_06_EL_Test_<font color=blue>Bootstrap_modal</font>.jsp</font></h3>
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
 
	<c:forEach var="empVO" items="${empDAO.all}" varStatus="s">
		<tr>
			<td><A href="test_emp.do?empno=${empVO.empno}&action=getOne_From06">${empVO.empno}</a></td>
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

<c:if test="${openModal!=null}">

<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
				
			<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 class="modal-title" id="myModalLabel">The Bootstrap modal-header</h3>
            </div>
			
			<div class="modal-body">
<!-- =========================================�H�U����listOneEmp.jsp�����e========================================== -->
               <jsp:include page="listOneEmp.jsp" />
<!-- =========================================�H�W����listOneEmp.jsp�����e========================================== -->
			</div>
			
			<div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
		
		</div>
	</div>
</div>

        <script>
    		 $("#basicModal").modal({show: true});
        </script>
 </c:if>
</body>
</html>