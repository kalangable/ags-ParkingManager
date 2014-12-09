<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AGS - Cliente</title>

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
							<th>Código</th>
							<th>Descrição</th>
							<th>Documento</th>
					</thead>
					<tbody>

						<s:iterator value="listaCliente">
							<tr>
								<td><s:property value="cdCliente" /></td>
								<td><s:property value="dsCliente" /></td>
								<td><s:property value="documento" /></td>
								<td>
									<div class="btn-group btn-group-sx">
										<button type="button" class="btn btn-primary"
											id=<s:property value="id" /> onclick="visualizar(this.id)">
											<span class="glyphicon glyphicon-list-alt"></span>
										</button>
									</div>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function visualizar(clicked_id) {
			window.location = "VisualizarCliente?id=".concat(clicked_id);
		}
		function novo() {
			window.location = "InserirCliente";
		}
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>