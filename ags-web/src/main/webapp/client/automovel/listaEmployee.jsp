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
<link rel="stylesheet"
	href="<c:url value="bootstrap/css/bootstrap.min.css" />">
<link rel="stylesheet"
	href="<c:url value="bootstrap/css/bootstrap-theme.min.css" />">

</head>
<body>
	<div class="table-responsive">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="btn-group btn-group-sx">
					<button type="button" class="btn btn-primary" onclick="novo()">
						<span class="glyphicon glyphicon-plus"></span>Novo
					</button>
				</div>
			</div>
			<div class="panel-body">
				<!--table-->
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Nome</th>
							<th>Sobrenome</th>
							<th>Idade</th>
					</thead>
					<tbody>

						<s:iterator value="listaEmployee">
							<tr>
								<td><s:property value="firstName" /></td>
								<td><s:property value="lastName"/></td>
								<td><s:property value="age" /></td>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function visualizar(clicked_id) {
			window.location = "VisualizarEmployee?id=".concat(clicked_id);
		}
		function novo() {
			window.location = "InserirEmployee";
		}
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>