<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>

<s:head />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="bootstrap/css/bootstrap-theme.min.css" />">

</head>
<body>
	<div class="col-md-5">
		<div class="panel panel-default">
			<div class="panel-heading">Incluir Empregado</div>
			<div class="panel-body">
				<form role="form" action="SalvarEmployee" method="post">
					<div class="form-group">
						<label for="firstname">Nome</label> <input type="text"
							name="employeeBean.firstName" id="name" class="form-control"
							required>
					</div>
					<div class="form-group">
						<label for="lastname">Sobrenome</label> <input type="text"
							name="employeeBean.lastName" id="name" class="form-control"
							required>
					</div>
					<div class="form-group">
						<label for="age">Idade</label> <input type="text"
							name="employeeBean.age" id="age" class="form-control"
							required>
					</div>
					<div class="form-group">
						<label for="username">Nome de usu�rio</label> <input type="text"
							name="employeeBean.username" id="age" class="form-control"
							required>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Enviar</button>
						<button type="reset" class="btn btn-default">Limpar</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>