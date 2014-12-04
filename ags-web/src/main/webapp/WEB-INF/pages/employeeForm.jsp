<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>AGS</title>
	<meta name="generator" content="Bootply">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, maximum-scale=1">
	<link
		href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
		rel="stylesheet">
	<style type="text/css">
	</style>
</head>

<body>
	<jsp:include page = "menu.jsp" />  

	<div class="container">
		<div class="col-md-6">
			<div class="panel panel-info">
				<div class="panel-heading">Incluir Operador</div>
				<div class="panel-body">
					<s:form action="saveEmployee" method="post" id="validationForm" theme="bootstrap" cssClass="form-horizontal">
					    <s:textfield name="employee.firstName" value="%{employee.firstName}" label="Nome"/>
					    <s:textfield name="employee.lastName" value="%{employee.lastName}" label="Sobrenome" />
					    <s:textfield name="employee.age" value="%{employee.age}" label="Idade" size="20" cssClass="form-control"/>
					    
					   	<s:textfield name="employee.password" value="%{employee.password}" label="Senha"/>
						<s:textfield name="employee.username" value="%{employee.username}" label="Username"/>
						
					    <s:hidden name="employee.employeeId" value="%{employee.employeeId}"/>
					    <s:submit value="Registrar" cssClass="btn btn-primary"/>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body> 

</html>