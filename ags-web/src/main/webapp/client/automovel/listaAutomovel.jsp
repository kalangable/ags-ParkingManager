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
			
				<button type="submit" id=<s:property value="id"/>
					onclick="edit(this.id)" class="btn btn-primary pull-right">Novo</button>
	</div>


			<div class="panel-body">


				<!--table-->
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Placa</th>
							<th>Descrição</th>
							<th>Opções</th>
					</thead>
					<tbody>

						<s:iterator value="listaAutomovel">
							<tr>
								<td><s:property value="placa" /></td>
								<td><s:property value="descricao" /></td>
								<td><button type="submit" id=<s:property value="id" />
										onclick="view(this.id)" class="btn btn-primary btn-xs">Visualizar</button>
									<button type="submit" id=<s:property value="id" />
										onclick="edit(this.id)" class="btn btn-success btn-xs">Editar</button>
									<button type="submit" id=<s:property value="id" />
										onclick="remove(this.id)" class="btn btn-danger btn-xs">Deletar</button></td>
							</tr>

						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>
				</div>

	<script type="text/javascript">
		function view(clicked_id) {
			window.location = "VisualizarAutomovel?id=".concat(clicked_id);
		}
		function edit(clicked_id) {
			window.location = "EditarAutomovel?id=".concat(clicked_id);
		}
		function remove(clicked_id) {
			window.location = "DeletarAutomovel?id=".concat(clicked_id);
		}
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>